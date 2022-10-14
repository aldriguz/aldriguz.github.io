---
layout: post
title:  "Comandos linux utiles - Ubuntu 20.04"
date:   2022-07-07 13:03:00 -0500
categories: linux shell
tags: linux cat shell command ubuntu
description: Aqui van algunos comandos que me fueron muy utiles como ver archivos, y mostrar la version de la distribucion.
---

Los siguientes comando son válidos para Ubuntu.

# Ver archivos

El comando `cat` te permite ver el archivo e imprimirlo en consola.

```
# Ver archivo de configuracion usuario
cat ~/.bashrc
```

# Saber que version de linux estas usando

Te muestra el nombre, version y distribucion.

```
cat /etc/os-release
```

# Variables de entorno

Te muestr las variables de entorno de tu sistema.

```
printenv
```

# Reiniciar equipo
´´´
sudo reboot now
´´´

Reinicio forzado
´´´
sudo reboot -f
´´´