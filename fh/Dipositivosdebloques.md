# Dispositivos loop
```bash
dd if=/dev/zero of=HDvirt.img bs=100M count=1
losetup -a
losetup -vf /home/usuario/HDvirt.img
# para que aparezcan las particiones
kpartx -av /dev/loop0
mkfs.ext4 /dev/mapper/loop1p1 -L Datosloop1p1
losetup -d /dev/loop0
```
