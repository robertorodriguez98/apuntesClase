---
title: "creacion de cuentas de usuario en modo batch"
keywords:
  - iso
  - usuarios
  - bucles
---
creacion de contraseñas
```bash
for i in {1..30};do echo asir$i:`pwgen 10 1`>>contrasenas.txt;done
chpasswd < contrasenas.txt
egrep 'asir' /etc/shadow
```
despues de eso hay que meterse como un usuario para comprobar que funcionas
```bash
egrep 'asir22' contrasenas.txt
su asir22 # y metemos la contraseña
```
securizamos
```bash
egrep 'asir22' contrasenas.txt
egrep 'asir22' /etc/passwd
while;do;done < fichero.txt
```
añadimos los usuarios
```bash
cp alumnos.txt alumnos2.txt
sed 's/asir[0-9]+//g' alumnos1
i = 1;while read linea; do chfn -f $linea asir$i;(i++));done < alumnos.txt
```