---
layout: post
title:  "Pattern matching para rutas"
date:   2022-07-05 22:46:00 -0500
categories: config project
tags: paths config pattern 
description: Patrones comunes y su uso en archivos de configuracion.
---

# Comando CD

Si has usado linux o windows por consola, seguramente conoces este comando, es bastante tipico para navegar entre carpetas.
Simplemente con un `cd C:/Users/mypc/Documents/` te vas a la carpeta documentos y puedes explorar tus archivos lanzando un `ls` en linux o `dir` para wiwndows.
Ahora esto puedes hacerlo tambien en un archivo de configuracion por medio de una sintaxis particular, al momento de la escritura de este post no he dado
con el nombre de esta forma de configuracion en archivos para navegar entre directorios, pero lo detallare como lo entiendo.

# Navegar entrenamente entre directorios

```bash
# patron         | descripcion

../            | Regresa un directorio anterior
../*           | Regresa un directorio anterior y todos los archivos dentro de él
**/*           | Regresa todos los archivos dentro de un directorio
**/*.txt       | Regresa todos los archivos con extensión .txt dentro de un directorio
*.*            | Regresa todos los archivos dentro de un directorio con cualquier extensión
**/**/*.txt   | Regresa todos los archivos con extensión .txt dentro de todos los directorios
/dir??/        | Regresa todos los directorios con nombre de 2 caracteres dentro de un directorio
/dir*         | Regresa todos los directorios dentro de un directorio

```


# Referencias
- https://stackoverflow.com/questions/17205713/what-does-mean-in-a-path
- https://help.sumologic.com/03Send-Data/Sources/04Reference-Information-for-Sources/Using-Wildcards-in-Paths
- https://confluence.atlassian.com/fisheye/pattern-matching-guide-960155410.html
- https://www.abrirllave.com/cmd/comando-cd.php