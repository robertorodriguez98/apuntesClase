# ISO 31-1-22
PERMISOS

ugoa

&nbsp;&nbsp;&nbsp;🡓

ACL $~~~~~$ **6** 4 4





$~~~~~~~~~~~~~$🡓

$~~~~~~~~~~~~~$ r w x

$~~~~~~~~~~~~~$ 1 1 **-**

$~~~~~~~~~~~~~$ 6 4 4 **FICHEROS**

$~~~~~~~~~~~~~$ 7 5 5 **DIRECTORIOS**

ejemplo de lo que hace

    umask  022

 | m | g | o|
 | :---: | :---: | :---: |
 | rwx | rwx  | rwx |
 | 111 | 111 | 111 |
 | 0 | 2 | 2 |
 | 111 | 101 | 101 |
 | 7 | 5 | 5 |


