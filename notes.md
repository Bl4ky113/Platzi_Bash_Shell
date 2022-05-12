# Curso de Programación de Bash Shell

## Que vamos a ver

Vamos a ver programación para automtizacion en cualquier, o el standar, 
terminal bash, generalmente de linux.

## Partes de Linux

Linux tiene 3 partes principales

- Kernel:
	Nucleo del OS el cual es la parte de inetracción del 
	hardware de nuestro computador con el software del OS,
	interactuando con la memoria, procesador, almacenamiento,
	perifericos y otros. 
	Es en donde, cómo y porqué se ejecutan las aplicaciones en los 
	sistemas operativos linux.
- Shell:
	Lenguaje de alto nivel de comunicacion del usuario, o aplicaciones, 
	con el kernel de linux. Es un medio de comunicación que se puede usar 
	para diferentes cosas, como scripts que vamos a hacer en este curso.
- Apps:
	Son las aplicaciones que nos permite darle un uso como tal general a 
	nuestro computador, estas se pueden comunicar con el Kernel atravez del 
	Shell o directamente con este, ejecutando procesos en el Kernel.

## Tipos de Shell

Shell tiene diferentes tipos para 

- SH:
	Shell inicial de los sitemas UNIX, tiene alguna que otra 
	deficiencia y le faltan cosas. Llamada Bourne Shell
- KSH:
	Mejora del SH Shell con algunas implementaciones de C, siendo más
	Rápida que SH. Llamada Korn Shell
- CSH:
	Shell que se puede usar diferente sintaxis de C, el lenguaje.
	Rápido como C puede ser. C Shell
- BASH:
	Combinación de SH y KSH Shells, llamada Bourne Again Shell
- ZSH:
	Es una mejora de BASH, mejoras en funcionalidades de los comandos generales,
	implementación de plugins y con eso es bastante cambio

## Comandos Basicos de Informacion

Podemos obtener informacion sobre los comandos que no sepamos que hacen
directamente desde la terminal. Usando:

- man:
	El "manual" del comando, especifico y sencillo
- info:
	Toda la información disponible, incluida con este, del comando.
	Documentación más pesada y técnica.

## VIM

VIM es un editor de texto en la terminal bastante minimalista, rápido, aunque a veces complejo,
sencillo de amaestrar. Lo vamos a usar a lo largo de curso, ya que es el standar que se 
usa en los servidores y es chevere.

Una gran caracteristica de VIM es que lo podemos personalizar como queramos, si es que sabemos
como hacerlo. Para hacer esta configuracion vamos a tener que hacer u modificar un 
archivo en $home o ~/ llamado .vimrc

## Scripts en Bash

### Creacion - Inicio
Siempre en los scripts de bash van a tener la extención .sh, y se debe agregar en el script con 
que shell lo vamos a ejecutar, acá podemos elegir la que tengamos, generalmente BASH.
Haciendolo escribiendo un comentario, signo de exclamación, y el PATH del bin de nuestra shell

\#\!/bin/bash

### Creacion - Permisos

Esto es para que al momento de ejecutar se ejecute con el bin de bash,
pero para ejecutarlo debemos darle permisos usando chmod

$ chmod a+x script.sh

Se da permiso a todos para ejecutarlo, se puede cambiar por:
- u: user
- g: grupo
- o: usuarios que no estan en el grupo
- a: todos los usuarios

Se puede cambiar el operador con:
- + agregar
- - quitar
- = cambiar permisos a

Los permisos basicos son:
- x: execute
- r: read
- w: write

o se puede hcaer un chmod usando sistema octal, en el cual del 0 al 7, se puede modificar
permisos a cada usuario. Pero no los uso generalmente.

Pero un truco que nos da el profe es para crear el chmod en sistema octal nos podemos acordar que
los 3 permisos básicos tienen valores minimos.
- x: 4
- w: 2
- r: 1

Podemos agregar solo cada número de los permisos que queramos, ejemplo 4 para ejecutar, 
pero esto nos quitara los otros permisos. Por eso podemos sumar los valores de los permisos que
necesitemos para nuestro archivo. 
- 4 + 2 = xw
- 4 + 1 = xr
- 4 + 2 + 1 = xwr

Este proceso lo podemos hacer para cada usuario y juntar los numeros, dejandonos así 

ogu
731

Siempre que queramos ver que permisos tienen nuestros archivos usaremos ls -l script.sh

### Creacion - Ejecucion

Para ejecutar el archivo, vamos a poder hacerlo de dos formas 

usando el bin de bash

$ bash sript.sh

o ejecutandolo solo a el mismo, generalmente hecho en los servidores de linux

$ ./script.sh

## Creacion - Verificacion Script existente

Algunas veces los nombres de nuestros scripts pueden ser iguales a los comandos de nuestro 
shell, haciendo que sobre escribamos la funcion de este, para verificar que esto no 
ocurra podemos mirar con type si el comando ya existe

$ type script

Aunqeu tambien nos ayuda a ver que es cada comando y como esta implementado, 
obviamente no al nivel de man o info, pero ayuda.

### Comandos Básicos

- echo (datos):
	imprime en la terminal datos dados a la funcion


