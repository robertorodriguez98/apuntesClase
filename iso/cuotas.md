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


