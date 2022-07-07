---
layout: post
title:  "PostgreSQL"
date:   2022-07-07 14:21:00 -0500
categories: postgresql sql
tags: postgresql sql bd
description: Aventurandonos un rato on el motor de base de datos PostgreSQL, encontraras comandos, formas de acceder, etc.
---

# Accediendo al servidor

Tutoriales de como instalarlo hay muchos, asi que de frente al grano. Para acceder a tu servidor postgresql via `psql` debes hacerlo como sigue.

```
psql -h <hostname or ip address> -p <port number of remote machine> -d <database name which you want to connect> -U <username of the database server>
psql -h 127.0.0.1 -p 8088 -U root
```

Accederas por defecto a la bd root, no a una base de datos especifica aun.

# Interactuando con psql

Algunas operaciones basicas son ver las bases de datos presentes, acceder a una bd, crear una nueva, eliminar una bd, etc.

```
# listar bases de datos
\l

# listar tablas
\d

# conectar a una bd
\c <database name>

# borrando una bd
drop database "<database name>";

```

# Referencias
- https://www.postgresql.org/docs/8.3/app-dropdb.html
