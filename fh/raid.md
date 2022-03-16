# RAID
* **RAID 0** -> no hay redundancia, alterna varios discos duros para aumentar la velocidad de escritura. Si se pierde 1 disco se pierden todos los datos
* **RAID 1** -> espejo, redundancia total de datos.
* **RAID 10** -> Raid 1 + 0, son raids 1  sobre los que se hace un raid 0
Para hacerlo tenemos que utilizar el binario **MDADM**
### Creación de RAID 0
```bash
# primero hay que crear las particiones
mdadm --examine /dev/vd[c-e]
# primero creamos las particiones con etiqueta de raid
mdadm -C /dev/md0 -l raid0 -n 2 /dev/sd[c-d]
cat /proc/mdstat # para ver los raid del sistema
mdadm -E /dev/sd[c-d] # para ver información de los volumenes del raid
mdadm --detail /dev/md0 # para ver informacion del raid
# especificarle al nucleo que hay un raid:
mdadm --detail --scan --verbose >> /etc/mdadm/mdadm.conf
update-initramfs -u -k all
```
### Creación de RAID 1
```zsh
mdadm -C /dev/md1 -l mirror --raid-devices=2 /dev/vd[ab]
mdadm --detail /dev/md1
mdadm --detail --scan --verbose /dev/md1 >> /etc/mdadm/mdadm.conf
update-initramfs -u -k all
# editamos el fstab
mount -av # para montarlo y que nos muestre que se monta
```
* añadir disco al RAID1:
Cualquier disco que añadamos aparte de los 2 principales de raid, se mete directamente en reserva.
```bash
mdadm --manage /dev/md1 --add /dev/vdb
# para añadir en reserva:
mdadm --manage /dev/md1 --add /dev/vdc
```
* Aumentar el nº de dispositivos activos:
```bash
mdadm --grow --raid-devices=3 /dev/md1
```
* Quitar un disco de un RAID:
```bash
# Primero lo marcamos como fallido
mdadm --fail /dev/md1 /dev/vda
mdadm --remove /dev/md1 /dev/vda
```

## RAID 10
```bash
mdadm -C /dev/md10 -l 10 -n 4 /dev/vd[ad]
```
para ver el rendimiento: `hdparm`
```bash
hdparm -t /dev/vda
```
para borrar los metadatos: `wipefs -af /dev/vda`
