sconfig
ASIR2021-2022
```powershell
diskpart # es de cmd, hacer particiones, formatear, hacer visibles unidades(montar asignando una letra)
help
list disk
select disk 1
select partition 1

```
# Powershell
* Para invocar a la ayuda se hace 
* Todos los comandos se conjugan de la siguiente manera:
	verbo - nombre(singular)
```powershell
get-command
$PSVersionTable # devuelve la versión de powershell que utilizamo
Get-Command -CommandType Alias | Measure-Object
help about_regular_expressions | more
start-process -verb runas powershell
```
- <kbd>-</kbd> +<kbd>Ctrl</kbd> <kbd>barra espaciadora</kbd>

# CMD
net user /?
si no funciona el escritorio remoto hay que añadir al usuario al grupo de usuarios de escritorio remoto
* Escalar privilegios: runas /user:administrador cmd
```powershell
Get-Command -Noun service
Get-Service W32Time | StopService # manera tradicional
(Get-Service W32Time).Stop()      # manera especifica powershell
(Get-Service W32Time).Status
Get-Service W32Time | StartService
$win32time=Get-Service W32Time
$win32time.Status

```

## Filtrado (GREP)
```powershell
Get-Service | Where-Object{$_.Status -like "Running"}

Get-Service W32Time | Select-Object -Property Status
$candidatos[1..5]
## EXPRESIONES REGULARES
Get-WMIobject -list | ?{$_.Status -match "^win32_.*"}
Get-WMIobject -class Win32_BIOS | Select-Object * # muestra TODO lo que contiene la clase
```

```powershell
Get-WindowsCapability -online | ?{$_.Name -like 'Open*'}
```
```POWERSHELL
get-PSDrive
Set-Location # cambiar ubicacion
cd Env: # directorio en el que estan las variables de entorno
Set-Location Env:
```

## añadir un disco
```Powershell
Initialize-Disk -Number 2 -PartitionStyle MBR
New-Partition -DiskNumber 2 -UseMaximumSize -DriveLetter Z
Format-Volume -FileSystem NTFS -DriveLetter Z
```
#  Controlador de Dominio
