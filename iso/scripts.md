# Script linux
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
	
echo "#!/usr/bin/env bash" >> fichero.sh
echo "#Autor: " > fichero.sh
echo "#Versión: " > fichero.sh
echo "#Descripción: " > fichero.sh
echo "#Fecha de creación: " > fichero.sh
```

si quiero que una variable de un script sea usada por un comando externo, hay que exportarla para que no se borre al acabar el script: `export var1`