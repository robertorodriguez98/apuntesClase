---
title: "Cuotas"
keywords:
  - ISO
  - markdown
  - apuntes
...
# Cuotas

* Instalación

```bash
sudo apt install quota
sudo nano /etc/fstab
```
```bash
/dev/vdd1 /mnt/QUOTA ext3 defaults,usrquota grpquota 1 2
```
```bash
mount -o remount /mnt/QUOTA

mount -o remount /home

# generacion de ficheros de cuota manualmeente
touch aquota.user
touch aquota.group
# actualizacion y generacion de ficheros de cuota
quotacheck -ugv /home # genera ambos
quotacheck -c /home # genera aquota.user

quotaon /home # inicio de cuotas
quotaoff /home # paro de cuotas

edquota -u debian

```
```bash
usuario01:x:UID:GID::/home/usuario:/bin/bash
# la x indica que la contraseña no se encuentra en /etc/shadow
pwgen
chpasswd <
# campos de geko
chfn

while;do ;done < fichero.txt
for i in 'cat alumnos1.txt';do echo linea:$i;done # NO

i = 1;while read linea; do echo asir$i $linea >> alumnos22.txt;(i++));done < alumnos.txt

for i in {1..30};do `useradd asir$i -m -s /bin/bash`;done
# hay que hacer un chpassword y un chfn

```