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
    for i in {01..30};do echo "asir$i:"`pwgen 8 1`:10$i:10$i::/home/asir$i:/bin/bash >> alumnosprueba.txt;done
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

otra explicacion:
Pues hacemos un bucle for con cómo debería ser el fichero etc/passwd para que nos lo coja bien, debe tener ese esquema, y una x en la parte de las contraseña porque eso lo haremos en el /etc/shadow
Hemos hecho un segundo fichero con el pwgen de los usuarios
AHORA TENEMOS DOS FICHEROS, USUARIOS Y CONTRASEÑAS
NOS METEMOS COMO ROOT AHORA
newusers < pepe.txt
chpasswd < pepecontra.txt
cat pepecontra.txt
Con newusers digo que se creen los usuarios del fichero pepe.txt
Y lo añade a /etc/passwd como hemos hecho en el esqueleto
Y para ENCRIPTAR la contraseña y lo chute a /etc/shadow lo hacemos a través de chpasswd, con esto hacemos que implemente las contraseñas del fichero de contraseñas creados con el for pwgen…
Esto hace que los usuarios estén creados con contraseñas aleatorias y encriptadas, si probáis a iniciar sesión os debe de salir
para añadir las contraseñas

```bash
for i in {1..25};do `useradd asir$i`;done
for i in {01..25};do echo "asir$i:x:12$i:12$i::/home/asir$i:/bin/bash";done >> passwd.txt
```

# comandos examen
```bash
for i in {1..25};do `useradd asir$i -g ASIR -d /home/asir$i -s /bin/bash`;done
pwgen -c -n -B 10 1
for i in {1..25};do echo asir$i:`pwgen -c -n -B 10 1`>>cosillas.txt;done
chpasswd < cosillas.txt

wget https://cdimage.debian.org/debian-cd/current/amd64/iso-cd/debian-11.2.0-amd64-netinst.iso
```