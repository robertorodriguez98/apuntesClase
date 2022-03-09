# RAID
* **RAID 0** -> no hay redundancia, alterna varios discos duros para aumentar la velocidad de escritura. Si se pierde 1 disco se pierden todos los datos
* **RAID 1** -> espejo, redundancia total de datos.

Para hacerlo tenemos que utilizar el binario **MDADM**

```bash
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