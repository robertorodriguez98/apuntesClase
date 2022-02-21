---
title: "Permisos UGOA"
keywords:
  - iso
  - usuarios
  - permisos
---

1. Crea los siguientes grupos de usuarios: sistemas, desarrollo y explotación:
```bash
sudo groupadd sistemas
sudo groupadd desarrollo
sudo groupadd explotación
```
2. Crea dentro del directorio raíz, el directorio proyecto,  con permisos de propietario root, y grupo del propietario root:
```bash
sudo mkdir -m 770 /proyecto
ls -l # para comprobar que se ha creado con dichos permisos
```
3. Dentro del directorio proyecto, crearás los directorios: sistemas, desarrollo y explotación. Estos directorios serán propiedad de root, y como grupo de propietario los grupos sistemas, desarrollo y explotación respectivamente, creados anteriormente. Y tendrán permisos de lectura, escritura y ejecución para propietario y grupo de propietario. El grupo otros no tendrá ningún permiso.
```bash
sudo su -
cd /proyectos
mkdir sistemas desarrollo explotacion
chown :sistemas sistemas
chown :desarrollo desarrollo
chown :explotacion explotacion
chmod 770 sistemas
chmod 770 desarrollo
chmod 770 explotacion
ls -l # para comprobar los grupos
```
4. Crea los siguientes usuarios:
    * grupo: sistemas. Usuarios del grupo sistemas: sistemas1 y sistemas2.
    * grupo: desarrollo. Usuarios del grupo desarrollo: desarrollo1 y desarrollo2.
    * grupo: explotación. Usuarios del grupo explotación: explotacion1 y explotacion2.
Los directorios de trabajo de dichos usuarios serán los directorios creados anteriormente, sistemas, desarrollo y explotación.
```bash
useradd sistemas1 -g sistemas -d /proyecto/sistemas/sistemas1 -s /bin/bash
useradd sistemas2 -g sistemas -d /proyecto/sistemas/sistemas2 -s /bin/bash
useradd desarrollo1 -g desarrollo -d /proyecto/desarrollo/desarrollo1 -s /bin/bash
useradd desarrollo2 -g desarrollo -d /proyecto/desarrollo/desarrollo2 -s /bin/bash
useradd explotacion1 -g explotacion -d /proyecto/explotacion/explotacion1 -s /bin/bash
useradd explotacion2 -g explotacion -d /proyecto/explotacion/explotacion2 -s /bin/bash
```
para crear los usuarios dentro de los grupos, se utiliza el parámetro -g. El parámetro -d permite seleccionar el directorio de trabajo, y por último el parámetro -s selecciona la consola de acceso del usuario.

5. Modifica los usuarios de la siguiente manera:
    * Los usuarios de sistemas tendrán acceso de lectura, escritura y ejecución al directorio sistemas, desarrollo y explotación.
    * Los usuarios de desarrollo tendrán acceso de lectura, escritura y ejecución al directorio desarrollo y explotación.
    * Los usuarios de explotación tendrán acceso de lectura, escritura y ejecución al directorio explotación únicamente.
Para dar el acceso a los usuarios indicados se añaden los grupos como grupos suplementarios con el parámetro -G del comando usermod:
```bash
usermod sistemas1 -G desarrollo,explotacion
usermod sistemas2 -G desarrollo,explotacion
usermod desarrollo1 -G explotacion
usermod desarrollo2 -G explotacion
```
Tras añadir los usuarios al grupo, utilizando el comando members, podemos comprobar qué usuarios pertenecen a qué grupos:
```bash
members sistemas
members desarrollo
members explotacion
```