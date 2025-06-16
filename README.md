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

---

## 🎨 **Recomendación Visual Importante:**

**Cambia la fuente de tu terminal a:**
➡️ `BigBlueTerminal Nerd Font`

Esto es esencial para que veas correctamente los íconos y el prompt estilizado.

✅ Funciona en: Windows Terminal, VSCode, Termius, MobaXterm, Kitty, Alacritty, Warp, etc.

---

# 🗺️ **Mapa de Comandos Útiles e Instalados**

---

## 🔥 Comandos Básicos del Sistema

| Comando                 | Función                                          |
| ----------------------- | ------------------------------------------------ |
| `ls`                    | Lista archivos (con íconos gracias a LSD).       |
| `ll`                    | Lista detallada (`lsd -l`).                      |
| `la`                    | Lista todos, incluidos ocultos (`lsd -la`).      |
| `cd <ruta>`             | Cambiar de directorio.                           |
| `pwd`                   | Mostrar ruta actual.                             |
| `mkdir <nombre>`        | Crear carpeta.                                   |
| `rm <archivo>`          | Borrar archivo.                                  |
| `rm -r <carpeta>`       | Borrar carpeta completa.                         |
| `cp <origen> <destino>` | Copiar archivos o carpetas (`-r` para carpetas). |
| `mv <origen> <destino>` | Mover o renombrar archivos.                      |
| `touch <archivo>`       | Crear archivo vacío.                             |
| `clear` o `Ctrl + L`    | Limpiar pantalla.                                |

---

## 📂 Navegación con NNN (Navegador de Archivos en Terminal)

| Tecla   | Acción                           |
| ------- | -------------------------------- |
| `→`     | Entrar en carpeta                |
| `←`     | Salir de carpeta                 |
| `Enter` | Abrir archivo                    |
| `Space` | Marcar archivo                   |
| `d`     | Borrar archivo                   |
| `!`     | Abrir terminal dentro de la ruta |
| `q`     | Salir                            |

🔗 Corre con:

```bash
n
```

---

## ✍️ Edición con Micro (Editor amigable)

| Comando / Tecla | Función          |
| --------------- | ---------------- |
| `Ctrl + S`      | Guardar          |
| `Ctrl + Q`      | Salir            |
| `Ctrl + K`      | Cortar línea     |
| `Ctrl + U`      | Pegar            |
| `Ctrl + F`      | Buscar           |
| `Ctrl + H`      | Reemplazar       |
| `Ctrl + E`      | Menú de comandos |

🔗 Corre con:

```bash
edit <archivo>
```

---

## 🧠 Información del Sistema

```bash
neofetch
```

Muestra info del sistema en forma visual (hostname, RAM, CPU, etc.).

---

## 🚥 Monitor de Recursos

```bash
htop
```

| Tecla | Función                |
| ----- | ---------------------- |
| `F9`  | Matar proceso          |
| `F6`  | Cambiar columnas orden |
| `F3`  | Buscar proceso         |
| `F10` | Salir                  |

---

## 🔧 Gestión de Paquetes

| Comando                      | Función                         |
| ---------------------------- | ------------------------------- |
| `sudo apt update`            | Actualizar repositorios         |
| `sudo apt upgrade -y`        | Instalar actualizaciones        |
| `sudo apt install <paquete>` | Instalar un paquete             |
| `sudo apt remove <paquete>`  | Desinstalar paquete             |
| `sudo apt autoremove -y`     | Eliminar dependencias sobrantes |
| `sudo apt clean`             | Limpiar caché de paquetes       |

---

## 🌐 Comandos de Red

| Comando            | Función                                 |
| ------------------ | --------------------------------------- |
| `ping google.com`  | Verificar conectividad                  |
| `curl ifconfig.me` | Mostrar IP pública                      |
| `ss -tuln`         | Ver puertos abiertos                    |
| `sudo ufw status`  | Estado del firewall (si está instalado) |
| `wget <url>`       | Descargar archivo desde URL             |

---

## 🛑 Gestión de Procesos

| Comando         | Función                     |                 |
| --------------- | --------------------------- | --------------- |
| \`ps aux        | grep <nombre>\`             | Buscar procesos |
| `kill <PID>`    | Terminar proceso            |                 |
| `kill -9 <PID>` | Forzar terminación          |                 |
| `htop`          | Monitor gráfico de procesos |                 |

---

## 🗂️ Gestión de Archivos Comprimidos

| Comando                            | Función                      |
| ---------------------------------- | ---------------------------- |
| `tar -czvf archivo.tar.gz carpeta` | Comprimir carpeta            |
| `tar -xzvf archivo.tar.gz`         | Descomprimir archivo .tar.gz |
| `unzip archivo.zip`                | Descomprimir archivo .zip    |
| `zip archivo.zip carpeta`          | Comprimir carpeta en .zip    |

---

## 🔥 Aliases configurados

| Alias  | Equivalente | Función                      |
| ------ | ----------- | ---------------------------- |
| `ls`   | `lsd`       | Listar con íconos            |
| `ll`   | `lsd -l`    | Listar detallado             |
| `la`   | `lsd -la`   | Listar todo, incluso ocultos |
| `n`    | `nnn`       | Navegador de archivos        |
| `edit` | `micro`     | Editor de texto amigable     |
| `..`   | `cd ..`     | Subir un nivel               |
| `...`  | `cd ../..`  | Subir dos niveles            |

---

# 🌟 **Bonus Opcional: tmux (Multiplexor de Terminal)**

```bash
sudo apt install -y tmux
```

| Comando              | Acción                       |
| -------------------- | ---------------------------- |
| `tmux`               | Iniciar nueva sesión         |
| `Ctrl + b` luego `c` | Nueva ventana dentro de tmux |
| `Ctrl + b` luego `n` | Siguiente ventana            |
| `Ctrl + b` luego `p` | Ventana anterior             |
| `Ctrl + b` luego `d` | Desconectarse (sin cerrar)   |
| `tmux attach`        | Volver a sesión desconectada |

---

## ✅ **Resultado:**

* ✅ Debian ultra liviano.
* ✅ Terminal estética y moderna.
* ✅ Productividad máxima desde consola.
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
