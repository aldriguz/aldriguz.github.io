---
layout: post
title:  "Comandos que usarás siempre con Laravel"
date:   2022-10-31 09:49:00 -0500
categories: laravel
tags: bash laravel beginner
description: Una recopilación de comandos que he usado en cada proyecto con Laravel.
---

# Laravel
Estos son los comandos que debemos de conocer al trabajar con Laravel.

## Crear tabla de migraciones
```
php artisan migrate:install
```

## Ejecutar migraciones una a una
```
php artisan migrate
```

## Inyectar data 
```
php artisan db:seed
```

## Crear API KEY
```
php artisan key:generate
```

## Agregar instalador Laravel via Composer
```
composer global require laravel/installer
```

## Crear app usando laravel installer
```
laravel new example
```