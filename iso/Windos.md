**sconfig**
contraseña: ASIR2021-2022
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
## Grupo de trabajo y dominio
* grupo de trabajo: pequeña red de area local en la que se comparten recursos y servicios (por ejemplo impresión, servidor web..)
![](grupoTrabajo.excalidraw)
* Conforme el grupo va creciendo, se va volviendo cada vez más difícil de administrar por un solo administrador en todos los equipos. Por ejemplo habría que crear en cada máquina un usuario por cada usuario de la red. Aquí es donde entra el concepto de dominio.
![](Dominio.excalidraw)
* UNC universal name convenion
* Cuentas locales: Cuentas que solo están en un equipo individual
* tipos de objeto:
	* maquinas: computer
	* cuentas de usuario
		* nombre
		* grupos
		* permisos
		* correo
		* telefono
	* impresora
	* servicio
	* recurso compartido
	* grupo
* los objetos se agrupan en **OU**: unidades organizativas
* catálogo: lista de todos los objetos del dominio
* esquema: plantilla del catálogo
* Las uniones de dominios se llaman **RC**: relaciones de confianza, no tienen por que ser de confianza total entre los dominios, por ejemplo la confianza puede ser unilateral(como de madrid a trescantos)
![](expansiondominio.excalidraw)
Ejemplo de ampliación de dominios

---

## Creación Controlador de dominio
### Interfaz Gráfica
- instalar servicios de dominio de Active Directory (dentro de agregar roles y caracteristicas)
Rol servicio de Dominio de Active Directory
* Agregar un nuevo bosque (nombre.local)
* Cualquier usuario con una cuenta de usuario en el dominio puede agregar hasta 10 máquinas al dominio

## Meter máquina en el dominio
### Interfaz gráfica
1. cambiar el dns al dns de la controladora
2. propiedades del sistema
3. nombre de equipo
4. cambiar pertenencia a miembro de dominio,para agregarlo a computers de la controladora
5. Firewall
### PowerShell
1. SCONFIG:
	1. Configuración de red, dns

```powershell
Get-Module ADDSDeployment
Import-Module ADDSDeployment
Get-Module ADDSDeployment
```

