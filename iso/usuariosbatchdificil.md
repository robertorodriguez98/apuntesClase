## Creacion de volúmenes lógicos
```bash
for i in {1..33};do mkdir /home/asir$i;done
```
```bash
for i in {1..33};do lvcreate -L 100M -n asir$i vg_asir;done
for i in {1..33};do mkfs.ext4 /dev/vg_asir/asir$i;done
for i in {1..33};do mount /dev/vg_asir/asir$i /home/asir$i;done
```
## Creación de usuarios
con el nombre contraseña, grupo ASIR y
```bach
groupadd ASIR
for i in {1..33};do `useradd asir$i -g ASIR -s /bin/bash`;done
for i in {1..33};do echo asir$i:`pwgen -c -n -B 10 1`>>cosillas.txt;done
chpasswd < cosillas.txt
```