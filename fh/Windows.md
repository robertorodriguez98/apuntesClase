## Storage pools
es el equivalente de lvm en linux
minimo 5 gigas
4  discos
administrador de equipos
### en el administrador de servidores
al crear el storage pool seleccionamos asignación manual

## en powershell
```powershell
Get-Command -Module Storage | more
Get-Command *storagepool*
Get-Help Set-PhysicalDisk -Examples
Update-Help -Module Storage
Get-StoragePool
New-StoragePool
New-VirtualDisk

# para inicializarlo:
Get-VirtualDisk –FriendlyName DiscoVirtual1 | Get-Disk | Initialize-Disk –Passthru | New-Partition –AssignDriveLetter –UseMaximumSize | Format-Volume


```