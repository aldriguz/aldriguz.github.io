---
layout: post
title:  "Instalar WxWidgets en Windows con CodeBlocks"
date:   2020-03-29 00:00:00 -0500
categories: security
tags: cpp gui windows in-progress
---

1. Requerimientos importantes:
- Compilador MinGW/GCC 
- Una versión reciente del IDE Code::blocks.
- O también instalar el paquete codeblocks con compilador mingw incluido.
- Tener referenciada la ruta del compilador al path del sistema. *

2. Instalar WxPack(probado con versión wxwidgets v2.8.12)
- Decargar wxPack v 2.8.12 Click here to download wxPack v2.8.8.04 o descargar última versión desde su página oficial wxPack download page.

![](/assets/img/2020-03-29-installing-wxwidgets/01-wxpack.png)

- Ejecutar instalador de wxPack y seguir los pasos, se recomienda instalarlo en una ruta que no tenga espacios.

![](/assets/img/2020-03-29-installing-wxwidgets/02-setup-wizard.png)

- Seleccionar en el instalador para instalar para el compilador Mingw (en los pasos anteriores se instaló éste).

![](/assets/img/2020-03-29-installing-wxwidgets/03-setup-components.png)

- Comprobar que se instalará en una ruta sin espacios.

![](/assets/img/2020-03-29-installing-wxwidgets/04-setup-path-location.png)

- Instalación terminada.

3. Crear un proyecto wxWidgets con Code::blocks
- Abrir Code::Blocks y crear un proyecto nuevo, seleccionar wxWidgets Project

![](/assets/img/2020-03-29-installing-wxwidgets/05-codeblocks-project.png)

- La primera ventana es de introducción y dar next. Seleccionar la versión de wxwidgets instalada, en este caso será la versión 2.8.x

![](/assets/img/2020-03-29-installing-wxwidgets/06-codeblocks-wxwidgets-version.png)

c.	Colocar nombre del proyecto, dónde quieres que se guarde, y dar next

![](/assets/img/2020-03-29-installing-wxwidgets/07-codeblocks-project-location.png)

d.	Autor y descripción son opcionales.
e.	Seleccione las opciones para la generación automática de código y archivo.

![](/assets/img/2020-03-29-installing-wxwidgets/08-codeblocks-codegen.png)

f.	Seleccionar donde se encuentra instalado wxwidgets

![](/assets/img/2020-03-29-installing-wxwidgets/09-codeblocks-wx-location.png)

g.	En base seleccionar (click en ‘…’) el directorio donde se instaló wxwidgets.

![](/assets/img/2020-03-29-installing-wxwidgets/10-codeblocks-setup-ide.png)

h.	Buscar la carpeta wxwidgets 2.8 y dar Aceptar.
i.	Dar en close y si sale de nuevo para indicar donde está wxwigets buscar igualmente y dar Aceptar.

![](/assets/img/2020-03-29-installing-wxwidgets/11-codeblocks-wx-1.png)

j.	En la siguiente ventana dejar como están las opciones de Depuración y los demás.

![](/assets/img/2020-03-29-installing-wxwidgets/12-codeblocks-wx-2.png)

k.	Click en Next. En la siguiente ventana se pueden seleccionar las configuraciones que quiera (si es que sabe para qué es cada una),  es recomendable dejarlas como están. Luego dar en Configure Advance Optiones.

![](/assets/img/2020-03-29-installing-wxwidgets/13-codeblocks-wx-3.png)

l.	Dar en Next y activar la casilla que dice ‘Use __WXDEBUG__and Debug wxWidgets lib’

![](/assets/img/2020-03-29-installing-wxwidgets/14-codeblocks-wx-4.png)

m.	Luego dar click en Finish
n.	...

## *Agregar ruta al path del sistema.
En este caso se agregará la ruta de la carpeta donde están los programas del compilador MinGW, siguiendo los pasos.
1.	Click derecho a ‘Mi PC’ o ‘Equipo’, y hacer click en ‘Propiedades’.

2.	Click en ‘Configuracion Avanzada del Equipo’ y Seleccionar la pestaña de ‘Opciones Avanzadas’

3.	Click en ‘Variables de entorno…’ y saldrá una ventana como ésta. Seleccionar ‘Path’ en Variables del Sistema y hacer click en ‘Editar…’

4.	Saldrán muchas rutas separadas por punto y coma, no modifiques ninguna, sólo tendrás que agregar la ruta donde se encuentran los ejecutables del compilador, en mi caso es ‘C:\MinGW\bin’, si instalaste Code::Blocks con el compilador incluido, la ruta típica sería ‘C:\Program Files\CodeBlocks\bin’
 
![](/assets/img/2020-03-29-installing-wxwidgets/15-path-setup.png)

5.	Ahora debes Aceptar en todas las ventanas que se abrieron para que se guarden los cambios.
6.	Para probar si es que se hizo correctamente, debes abrir la consola de Windows (TeclaWindows+R, después poner ‘cmd’ y dar Enter) y colocar lo siguiente ‘mingw32-gcc’. Saldrá algo parecido a esto.


