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

o ejecutandolo solo a el mismo, generalmente hecho en los servidores de linux.
Esto se puede hacer desde diferentes archivos, no se si se le pueda dar 
el mismo uso a bash

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

### Variables en Bash

Existen diferentes tipos de variables en BASH:

Caracteristicas de todas:
- Se definen nombre=valor
- Se pueden llamar usando $nombre
- Se puede ver que tienen usando echo "$nombre"

- Variables de Entorno:
	Estas estan en todos los OS, son la información almacenada sobre 
	los procesos, estado y otros del OS en sí.
	En linux se puede agregar variables de entorno en el archivo 
	/etc/profile
	
	Generalmente se usa UPPERCASE_SNAKE para escribir estas variables.

	Dado a que son constantes y no van a cambiar a lo largo de su uso

	Despues de escribirla vamos a usar export para su uso y reiniciar 
	el computador, ya que este archivo solo se ejecuta en el inicio del
	sistema.
	Se puede hacer source al archivo para tener la variable, pero solo la 
	va a tener en la terminal en la que se realizo el source.

- Variables Locales o del Programa
	Las vamos a declarar dentro del archivo las variables que vayamos a usar
	No es necesario usar uppercase, pero es recomendado usar snake_case,
	solo se van a usar en el script en el que se declararon, 
	si se necesita usar en otro script, se va a tener que volver 
	un semi tipo de variable de entorno, usando export en la variable.

### Operadores en Bash

Existen diferentes tipos de operadores, y diferentes operadores dentro de estos:

- Operadores Aritmeticos
	Operaciones Matematicas generales
	- suma +
	- resta - 
	- mult *
	- div /
	- mod % 
	- potencia **

Para usar los operadores aritmeticos de una forma directa, sin tener que 
hacer otra variable. Vamos a tener que usar $(()), 
donde se realiza la operacion en el primer (), y en el segundo se pasa 
como un valor de una variable, sin tener que crear una como tal.

- Operadores Relacionales
	Relacion entre dos variables
	- mayor: >
	- menor: <
	- mayor o igual que: >=
	- menor o igual que: <=
	- igual que: ==
	- diferente que: !=

- Operadores de Asignación
	Iguales que los Matematicos, pero 
	agregando, restando, ... el valor a la variable,
	no hay de potenciacion
	- incremento +=
	- decremento -=
	- ... *=
	- ... /=
	- ... %

- Operadores Logicos
	Operadores que nos permiten hacer procesos logicos
	con sentencias verdaderas o falsas
	- and: &&
	- or: ||
	- not: !

### Argumentos en los scripts de bash

Generalmente los comandos se les pasa argumentos, como en vim se pasa el archivo de texto a 
editar. Estos pueden ser usados en el script refecienciandolos asi:
- $1 al $9, si son de un digito, el numero de "entrada"
- ${10} al ${infinito}, si son de dos digitos, el numero de "entrada"

Existen argumentos y variables que siempre van a estar en cualquier script
- $0: el nombre del script, cambia el nombre si lo ejecutamos con ./ o bash
- $#: el numero de argumentos disponibles
- $*: todos los argumentos

Para usar los argumentos simplemente lo vamos a referenciar o asignar a una variable.

### Parametros en los scripts de bash

Ademas de los argumentos, se pueden pasar parametros, flags o opciones, nosotros podemos 
Estos simple y sencillamente se van a utilizar como los argumentos, solo que vamos a darle un 
trado diferente por el slash que tienen al inicio. 
Ya es nuestro deber mirar que acciones van a ser hechas por cada parametro y opcion en nuestro 
script.

Podemos filtrar los parametros usando loops atravez de estos y usando 
cases para cada uno. Esto lo veremos más adelante

### Output de otros Comandos

Para obtener el output de otros comandos y referenciarlos a una variable, vamos a tener que 
usar $(), y ahí dentro vamos a poner el comando. Aunque tambien podemos simplemente 
escribir el comando como tal usando el backtick `comando`.

Lo más general es usar comandos de información o procesamiento de información.

### Debugging en BASH

Bash nos permite hacer debugging de nuestro codigo usando las flags -v y -x al momento de 
ejecutar nuestro codigo, ambas tiene diferencias:

- -x:
	Ejecuta el código, muestra linea por linea y agrega al inicio de esta un + por cada nivel 
	de closure en el programa. Creo. Si no, tambien ayuda a diferenciar las lineas del programa
	y los inputs/outputs de este

- -v:
	Ejecuta el código, muestra linea por linea, pero sin el +.

### Inputs de Usuario

Algunas veces vamos a necesitar que el usuario ingrese algun que otro dato
para poder realizar diferentes acciones.

Usaremos el comando read para esto, se puede usar de dos formas, con y sin echo.

Con echo, lo usaremos para crear un tipo de promnt, leer el valor y despues usarlo.
Para usarlo debemos leer una variable que usa read, llamada $REPLY, esta variable 
va a contener el ultimo valor que obtuvo read.

echo "hello: "
read > goodbye
echo "$REPLY" > goodbye

Pero para no usar echo, podemos usar la flag -p que nos permite agregarle un prompt al 
read. Y una variable que guarde el input. 

response=""
read -p "hello: " reply > goodbye
echo "$reply" > goodbye

Ademas de esta flag, read tiene otras como:

- -s: sigiloso, que no muestra lo que se le escribe, para contraseñas
- -n [int]: limita el numero de caracteres de entrada
- -r: toma el retroceso como un caracter, no borra nada el input que se le haya ingresado

Podemos usar esto para validacion de información, o se pueden usar RegEx /.*/
Pero para eso debemos usar condicionales, cosa que no hemos visto

### Descargas desde Internet

Para descargar archivos desde internet, en bash, podemos usar comandos como:
- wget [-flag] URL:
	Nos va a descargar el archivo en la URL, se puede poner diferentes flags para 
	que lo descarge cambiando el nombre, el directorio de descarga y demás.

- curl: 
	Nos descarga archivos desde servicios de APIs

### If Elif Else

Los bloques de condicionales son estructuras básicas en la programación, en 
Bash se implementan así

if (( condicional )); then
	ejecucion de la condicional
elif (( condicional_2 )); then
	segunda condicional
else
	caso else
fi

En las condicionales podemos usar (( condicional )), ( condicional ), [[ condicional ]] o [ condicional ], 
tienen una gran diferencia entre sí, y es mejor usar [].

- (()):
	Va a calcular matematicamente el valor de la condicional, podemos usar operadores 
	relacionales, lógicos y aritmeticos. 
- [[]]:
	Va a calcular logicamente los valores de la condicional, es un poco más fácil de usar
	y tiene alguna que otra implementación dado a que es una condicon solo soportada por 
	BASH y KSH
- []:
	Va a calcular logicamente los valores de la condicional, tiene alguna que otra implementacion 
	rara o que no se puede a diferencia de [[]], pero se puede usar en cualquier shell, dado a que es 
	un comando implementado desde la base. 
- ():
	Va a llamar una subshell para realizar la condicional y devolver un valor acorde lo obtenido, 
	no es recomendable.

No importa el operador que usemos, siempre debemos poner espacios entre la condicional y su operador
[ condicional ] 

Al momento de usar [] no podremos usar operadores relacionales comunes, si no que debemos usar flags.
- ==: -eq
- !=: -ne
- >: -gt
- <: -lt
- >=: -ge
- <=: -le
Y se debe denotar las variables con $

[ $variable -eq $otra_variable ]

Estos ifs pueden ir anidados, uno encima de la respuesta o ejecucion del otro. 
Simplemente lo hacemos normalmente, con caso if, elif si es necesario, else si queremos y 
finalizandolo con fi

### Condicionales 

Las Expreciones Condicionales nos permiten hacer verificaciones de datos al momento de usar un 
if o elif. 

Se manejan diferentes operadores al momento de usar diferentes tipos de datos, con enteros vamos a 
usar los que ya sabemos:
- -eq
- -ne
- -gt
- -ge
- -lt
- -le

Pero con strings vamos a tener que usar otros
- =: == o -e 
	se puede usar el ==, pero es el mismo problema que [[]], es implementado en 
	bash pero no se puede usar de la misma forma en otras shells
- !=: -ne o !=

Y podemos usar operadores con archivos, si tenemos el path de estos
- -d: verificar si existe el dir
- -e: verificar si existe el file
- -r: verificar si el file tiene permiso de read
- -s: verificar si el archivo tiene un tamaño mayor a 0, no esta vacio
- -w: verificar permiso de write
- -x: verificar permiso de execute

Se pueden usar varias condicionales usando operadores lógicos o de condicional.
- &&: and o -a
- ||: or o -o
- !: not o -n

Se pueden usar en [] con flags, pero lo mejor es hacerlos separadaros 
y usarlos fuera.

[ conditional ] &&  [ conditional ]

### Case o Switch en BASH

Case o es una sencencia de condicional sencilla que nos permite mirar si una 
variable es igual a varios valores y hacer algo por cada caso.
Syntaxis:

case $variable in
	valor_1) 
		ejecucion;;
	valor_2)
		ejecucion;;
	*)
		ejecucion;;
esac
El equivalente de else en case es el caso *),
para terminar cada ejecucion debemos usar ;;, inclusive para el else.

