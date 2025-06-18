# 🚀 **Setup Debian Minimalista, Bonito y Ultra Productivo (Versión VPS Ninja)**

---

## 🧠 **Descripción del Proyecto**

Este setup convierte una instancia Debian (ideal para VPS de bajo consumo, como Google Cloud e2-micro, AWS, Oracle, etc.) en un entorno de terminal minimalista, estético, funcional y ultra liviano.

Perfecto si no eres experto en Linux, pero quieres máxima productividad y claridad.

---

## ⚙️ **Comando de Instalación Única:**

```bash
curl -sSL https://raw.githubusercontent.com/tuusuario/tu-repo/main/setup-debian.sh | bash
```

---

## 🏗️ **Qué instala y configura:**

| Herramienta                       | Descripción                                              |
| --------------------------------- | -------------------------------------------------------- |
| **ZSH + Oh My Zsh**               | Shell moderna y personalizable.                          |
| **Agnoster Theme + Powerline-Go** | Prompt visual con estado, ramas git, jobs.               |
| **LSD**                           | Listados de archivos bonitos con íconos.                 |
| **NNN**                           | Navegador de archivos ultrarrápido y minimalista.        |
| **Micro**                         | Editor de texto amigable (alternativa a Vim/Nano).       |
| **HTOP**                          | Monitor de recursos visual e interactivo.                |
| **Neofetch**                      | Muestra info del sistema cada vez que abres la terminal. |
| **BigBlueTerminal Nerd Font**     | Fuente con íconos para que todo se vea hermoso.          |
| **Node.js + NPM**                 | Entorno JavaScript backend listo para desarrollo.        |
| **PM2**                           | Gestor de procesos Node para correr apps 24/7.           |
| **NGINX + Certbot**               | Servidor web con HTTPS automático y seguro.              |

---

## 🎨 **Recomendación Visual Importante:**

**Cambia la fuente de tu terminal a:**
➡️ `BigBlueTerminal Nerd Font`

Esto es esencial para que veas correctamente los íconos y el prompt estilizado.

✅ Funciona en: Windows Terminal, VSCode, Termius, MobaXterm, Kitty, Alacritty, Warp, etc.

---

## 🌐 **Configuración de NGINX + Certbot (HTTPS)**

### Instalación:

```bash
sudo apt install -y nginx certbot python3-certbot-nginx
```

### Comandos básicos:

| Comando                        | Descripción                           |
| ------------------------------ | ------------------------------------- |
| `sudo systemctl start nginx`   | Iniciar servidor NGINX                |
| `sudo systemctl enable nginx`  | Habilitar inicio automático           |
| `sudo systemctl restart nginx` | Reiniciar NGINX                       |
| `sudo nginx -t`                | Probar configuración nginx            |
| `sudo ufw allow 'Nginx Full'`  | Abrir puertos HTTP (80) y HTTPS (443) |

### Crear certificado SSL:

```bash
sudo certbot --nginx -d midominio.com -d www.midominio.com
```

### Renovación automática (ya está configurada por default):

```bash
sudo certbot renew --dry-run
```

Archivos de configuración NGINX:

```bash
/etc/nginx/sites-available/
/etc/nginx/sites-enabled/
```

---

## ⚙️ **Gestor de Procesos con PM2 (Apps Node.js 24/7)**

### Instalación:

```bash
sudo npm install -g pm2
```

### Comandos básicos:

| Comando            | Descripción                             |
| ------------------ | --------------------------------------- |
| `pm2 start app.js` | Ejecutar app Node                       |
| `pm2 list`         | Ver procesos activos                    |
| `pm2 stop app`     | Detener proceso                         |
| `pm2 restart app`  | Reiniciar app                           |
| `pm2 delete app`   | Eliminar proceso                        |
| `pm2 logs`         | Ver logs en tiempo real                 |
| `pm2 save`         | Guardar procesos para inicio automático |
| `pm2 startup`      | Generar script para boot del sistema    |

### Activar PM2 como servicio permanente:

```bash
pm2 startup
pm2 save
```

Salida esperada:

```bash
brasil.service → /etc/systemd/system/pm2-webrushbrasil.service.
[PM2] [v] Command successfully executed.
```

---

## ✅ **Resultado:**

* ✅ Debian ultra liviano.
* ✅ Terminal estética y moderna.
* ✅ Productividad máxima desde consola.
* ✅ HTTPS con NGINX + Certbot.
* ✅ Apps Node.js corriendo 24/7 con PM2.
* ✅ Consumo mínimo de recursos (ideal 1GB RAM o menos).

---

## 💥 **By:**

**WebRush Brasil 🚀**

> Transformamos terminales en armas de productividad masiva.
> [https://webrushbrasil.com.br](https://webrushbrasil.com.br)

---

## 🏆 **Licencia:**

MIT — Uso libre, mejoralo, rompenos el Debian si quieres 🔥

---

