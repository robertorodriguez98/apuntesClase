
![](samba1.excalidraw)
Es necesario instalar samba cifs-utils
smbclient
## Conectarse de linux a windows
ºwº
BASH:
```bash
# equivalente a net view
smbclient -L  10.0.0.133 -U Administrador
smbclient -U Administrador 10.0.0.133/compartidaPS
``` 
Con eso se entraria en el cli de samba, pero para montarlo se hace de la siguiente manera:
```bash
sudo mount -o user=Administrador -t cifs //10.0.0.133/compartidaPS /mnt
# o (comandos similares)
sudo mount -o user=Administrador -t cifs \\\\10.0.0.133\\compartidaPS /mnt
sudo mount -o user=Administrador -t cifs '\\10.0.0.133\compartidaPS' /mnt
```
desde entorno grafico
EN EL EXPLORADOR:
smb://DIRECCION/recursoCompartido

### Habilitar servidor SAMBA
los servicios que deben prevalecer son los de gnu/linux
```bash
systemctl start nmbd
systemctl start smbd
systemctl status nmbd
systemctl status smbd
```
editamos el fichero de configuración /etc/samba/smb.conf
```bash
[Compartida]
	guest ok = Yes
	path = /home/debian/Compartida
	read only = No
```
añadimos una contraseña con encriptación de windows al usuario debian:
```bash
sudo smbpasswd -a debian
sudo pdbedit -L # muestra los usuarios samba
```
### Windows 
para poder ver los recursos compartidos en el grupo de trabajo:
```powershell
Get-WindowsOptionalFeature -Online -FeatureName "SMB1Protocol"
Enable-WindowsOptionalFeature -Online -FeatureName "SMB1Protocol" -All

```
desde el administrador de servidor
instalar roles y caracteristicas
smb1.0/cifs file sharing suport (cliente/servidor)
