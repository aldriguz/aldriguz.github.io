---
layout: post
title:  "Terminar un proceso en linux - Debian"
date:   2022-07-12 12:58:00 -0500
categories: linux shell
tags: linux kill shell command
description: Comandos y herramientas necesarias para poder finalizar o terminar un proceso en linux.
---

# Comandos
```

# listar procesos
ps -ef

# matar por puerto usado
sudo lsof -t -i:3000

# finalizar por PID
sudo kill -9 12421

# si no tienes el comando, instalarlo
sudo apt-get install lsof
```


# Referencias
- https://www.linuxquestions.org/questions/linux-newbie-8/lsof-command-not-found-914342/
- https://mr-khan.gitlab.io/linux/2018/05/02/kill-specific-port-on-linux.html