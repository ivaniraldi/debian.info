#!/bin/bash

set -e

echo "🚀 Iniciando instalación y configuración de Debian minimalista..."

# 🔧 Actualizar el sistema
sudo apt update && sudo apt upgrade -y

# 🔧 Instalar paquetes esenciales
sudo apt install -y \
    zsh curl wget git htop micro unzip fonts-powerline \
    build-essential software-properties-common nginx certbot python3-certbot-nginx

# 🔥 Instalar Node.js y NPM
curl -fsSL https://deb.nodesource.com/setup_20.x | sudo -E bash -
sudo apt install -y nodejs

# 🔥 Instalar PM2 globalmente
sudo npm install -g pm2

# 🔥 Instalar Oh My Zsh
if [ ! -d "$HOME/.oh-my-zsh" ]; then
  echo "➡️ Instalando Oh My Zsh..."
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
fi

# 🔥 Instalar tema Agnoster y Powerline Go
echo "➡️ Configurando tema Agnoster..."
sudo apt install -y golang-go

echo "➡️ Instalando powerline-go..."
go install github.com/justjanne/powerline-go@latest

# 🔥 Instalar LSD (ls bonito)
echo "➡️ Instalando LSD..."
wget https://github.com/lsd-rs/lsd/releases/download/v1.1.2/lsd_1.1.2_amd64.deb
sudo dpkg -i lsd_1.1.2_amd64.deb
rm lsd_1.1.2_amd64.deb

# 🔥 Instalar NNN (navegador de archivos)
echo "➡️ Instalando NNN..."
sudo apt install -y nnn

# 🔥 Instalar Neofetch
echo "➡️ Instalando Neofetch..."
sudo apt install -y neofetch

# 🔥 Instalar fuente BigBlueTerminal Nerd Font
echo "➡️ Instalando BigBlueTerminal Nerd Font..."
mkdir -p ~/.local/share/fonts
cd ~/.local/share/fonts
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.1.1/BigBlueTerminal.zip
unzip BigBlueTerminal.zip
rm BigBlueTerminal.zip
cd ~

# 🔥 Recargar caché de fuentes
fc-cache -fv

# 🔥 Configurar .zshrc
echo "➡️ Configurando ZSH..."

cat > ~/.zshrc << 'EOF'
export PATH="$HOME/go/bin:$PATH"

# Prompt bonito con powerline-go
function _update_ps1() {
    PS1="$(powerline-go -error $? -jobs $(jobs -p | wc -l))"
}
if [ "$TERM" != "linux" ] && (which powerline-go &>/dev/null); then
    PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"
fi

# Alias útiles
alias ls='lsd'
alias ll='lsd -l'
alias la='lsd -la'
alias ..='cd ..'
alias ...='cd ../..'
alias n='nnn'
alias edit='micro'
alias h='htop'
alias nf='neofetch'

# Plugins Oh My Zsh
ZSH_DISABLE_COMPFIX=true
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="agnoster"
plugins=(git)

source $ZSH/oh-my-zsh.sh
EOF

# 🔥 Cambiar shell por defecto a ZSH
chsh -s $(which zsh)

# 🔥 Configurar NGINX (modo básico)
echo "➡️ Configurando NGINX..."
sudo systemctl enable nginx
sudo systemctl start nginx

# 🔥 Crear archivo de configuración ejemplo
sudo tee /etc/nginx/sites-available/default > /dev/null <<'EOL'
server {
    listen 80 default_server;
    listen [::]:80 default_server;

    server_name _;

    root /var/www/html;
    index index.html index.htm;

    location / {
        try_files $uri $uri/ =404;
    }
}
EOL

sudo nginx -t && sudo systemctl reload nginx

# 🔥 Instalar Certbot y HTTPS (opcional)
# sudo certbot --nginx --redirect --agree-tos -m tu-email@dominio.com -d tudominio.com

# 🔥 Configurar PM2 para ejecución 24/7
pm2 startup systemd -u $USER --hp $HOME
pm2 save

# ✅ Final
echo "✅ Instalación completada."
echo "🔔 Cambia la fuente de tu terminal a 'BigBlueTerminal Nerd Font' para que se vea increíble."
echo "🎉 Tu servidor Debian está listo para producir magia."
