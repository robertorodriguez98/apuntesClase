r# Script linux
es un lenguaje interpretado (como python)
```bash
#! /bin/bash

```
se suelen guardar con la extensión .sh
El par de caracteres `#!`se denomina she-bang
* para que sea estándar: `#! /usr/bin/env bash`
* Formas de ejecución:
	* `nombre_intérprete Argumento` por ej: `bash miscript.sh`
		* no es necesario permisos de ejecución
		* se pueden ver las shell disponibles en `/etc/shells`
		* el script se ejecutará en una **subshell**
	* `/ruta absoluta/fichero_script`  ó  `ruta relativa/fichero_script`
		* es necesario que tenga permisos de ejecución
		* se ejecuta en una **subshell**
	* `source fichero_script`
		* no es necesario permisos de ejecución
		* se ejecuta en la **shell actual**
	* `. fichero_script`
		* no es necesario permiso de ejecución
		* se ejecuta en la **shell actual**
* Todo script debe estar debidamente comentado:
```bash
# comentario de una línea
<<Etiqueta
comentario de varias líneas
Etiqueta
```

* 

```bash
#!/usr/bin/env bash
	
echo "#!/usr/bin/env bash" > fichero.sh
echo "#Autor: " >> fichero.sh
echo "#Versión: " >> fichero.sh
echo "#Descripción: " >> fichero.sh
echo "#Fecha de creación: " >> fichero.sh
echo -e "#Programa principal\n\n" >> fichero.sh
```

si quiero que una variable de un script sea usada por un comando externo, hay que exportarla para que no se borre al acabar el script: `export var1`
para ver las variables definidas por el usuario `set | grep var1`
para ver las variables exportadas `env`

```bash
egrep 'vagrant' /etc/passwd | cut  -d':' -f4
uptime | awk '{print $3}'

set $(uptime)
echo $1

```

## Estructuras condicionales:
se pueden hacer con los siguientes comandos:
* `test expresión`
* `[ expresión ]`
* `[[ expresión ]]` (este es más guay, como el egrep)
### IF
```bash
if <condición>
then
	<comandos>
elif <condición>
then
	<comandos>
...
else
	<comandos>
fi
```
### CASE
```bash
case <variable>
in
expresión 1)
	<bloque 1>
;;
)*
	<bloque por defecto>
;;
esac
```

## Estructuras repetitivas:
### FOR
```bash
for <variable> in <recorrido>
do
	<comandos>
done
```
### WHILE
```bash

```
## Funciones
```bash
# Declaración de funciones
function nombre_funcion{
Comandos
}
ó
nombrefuncion(){
Comandos
}
# invocación:
nombre_función arg1 arg2
```

TAREA: script que automatice la instalación de un binario :
dado un binario me diga si está o no está;
si no está instalarlo.
```bash
function f_existeBinario {
	if dpkg -l $1 &> /dev/null;
	then
		return 0
	else
		return 1
	fi
}

```

### Para sacar cadenas de texto de las funciones se hace con echo:
```bash
funcion f_prueba{
	palabra="hola"
	echo $palabra
}

palabraPrincipal = $(f_prueba)

```
ip 
numeros
tabulacion
espacio en  blanco
cadena

## Función de ayuda
```bash
$0 -> nombre script
$1.... -> parámetros
$# -> número argumentos pasados
$@ -> todos los argumentos pasados
```

## Tablas
```bash
nombre_tabla[indice]=valor

# formas de declararla
ciclos[0]='ASIR'
declare -a modulosASIR=(Sistemas Redes Lenguaje\ Marcas)
declare -a modulosASIR=('Seguridad''Sistemas Operativos')
distros=('Debian''Red Hat')
distros=(Debian Red\ Hat)

echo ${distros[0]}
# Devuelve todos los elementos del array
echo ${distros[*]}
echo ${distros[@]}
# Devuelve cuántos elementos hay
echo ${#distros[*]}
```
### ASOCIATIVAS (diccionarios)
```bash
typeset -A usuario1
usuario1=([Nombre]="Pepe" [Apellidos]="García Sanz")
echo ${usuario1[Nombre]}
```

## Depuración
incluir la opción -x  en el shebang ó
incluir -x en la invocación del script:
bash -x nombre_script
opción -e salir en el primer error que se encuentre
opción -v muestra el código y dónde están los errores

para comprobar/mejorar codigo
shellcheck nombrescript.sh

## Comandos útiles
* getopts:
automatizar con sgdisk y getopts
nmtui
f_habilita quota