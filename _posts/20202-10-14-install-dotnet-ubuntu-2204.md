---
layout: post
title:  "Instalar .NET en Ubuntu 20.04"
date:   2022-10-14 10:12:00 -0500
categories: linux ubuntu
tags: linux nano shell server snap
description: Resumen de instalación de .NET en la distribución Ubuntu 20.04
---

# Instalación via snap
Los ´snaps´ son paquetes universales para distribuciones linux, puedes leer más sobre esto en su sitio ´https://snapcraft.io/´[https://snapcraft.io/], .NET tiene multiples paquetes incluidos, desde su SDK hasta su runtime de manera individual. En mi caso instalaré el SDK y los comandos serán para el SDK.

Comenzaremos ejecutando el siguiente comando
´´´
sudo snap install dotnet-sdk --classic --channel=6.0
´´´

Luego registraremos el alias ´dotnet´ para la instalación
´´´
sudo snap alias dotnet-sdk.dotnet dotnet
´´´

# Configurando variables de entorno

Algunas herramientas requieren de la variable de entorno DOTNET_ROOT para determinar dónde se instaló. Ya que snap no lo hace por nosotros podemos agregarla ejecutando el comando: 
´´´
export DOTNET_ROOT=/snap/dotnet-sdk/current
´´´

Nota: Esto funcionara mientras dure tu sesión de tu terminal solamente.

### Persistir variable de entorno
Dependiendo de la shell que esté ejecutando tu terminal, deberás de modificar su archivo de perfil. En mi caso es ´bash´ así que el archivo a modificar es ´~/.bashrc´.
Abriremos el archivo con ´nano´ y agregaremos la línea al final.

´´´
nano ~/.bashrc
´´´

Luego ´Ctrl + X´, preguntará si quieres guardar tus cambios así que escribes que sí ´Y´ y luego ´Enter´ para sobre ecribir el mismo archivo.


# Referencias
- https://learn.microsoft.com/es-es/dotnet/core/install/linux-snap