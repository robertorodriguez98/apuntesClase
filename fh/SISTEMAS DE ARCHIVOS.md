# BTRFS
Ventajas
* es más robusto, al igual que zfs
* tiene la fragmentación muy controlada, cuando escribes algo en disco, busca la zona más idónea para escribir la información
* periódicamente se desfragmenta
* cow: (copy or write)
Desventajas
* Más lento que ext4

Normalmente trabaja con discos enteros, no con particiones.
## Desde fedora:

## Desde instalador debian
Todo normal pero después de crear las particiones:
* Entramos en una terminal:
	* tenemos que añadir los subvolumenes a mano
	* añadirlos al fstab

## DEBIAN
apt-file search btrfs | grep bin/btrfs
utilizar modo single no tiene mucho sentido, hay que usar varios dispositivos de bloques, raids...
```bash
df -Th # no es fiable con btrfs
btrfs filesystem df /mnt
btrfs filesystem usage /mnt
```
Para poder realizar subvolumenes hace falta:
* un punto de montaje
```bash
# vamos a simular un mirror raid1
btrfs balance start -sconvert=single -mconvert=single -dconvert=single /mnt
btrfs balance start -sconvert=dup -mconvert=dup -dconvert=dup /mnt

mount /dev/vdb1 /mnt -o 
btrfs subvolume create datos /mnt/
```
trabajamos con btrfs
```bash
btrfs device usage /mnt
btrfs subvolume create /mnt/datos
btrfs subvolume list /mnt
mount /dev/vdb mnt/datos -o subvol=datos,space_cache,compress=none,autodefrag
mount /dev/vdb /mnt/comprimido -o subvol=comprimido,space_cache,compress=zstd,autodefrag

``` 
tras añadir discos hay que balancearlos
### Timeshift
aplicación gráfica que permite gestionar las instantáneas (snapshot)