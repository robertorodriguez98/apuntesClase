# Diagrama gantt de actividades próximas
---
```mermaid
gantt
    %%etiquetas posibles: done,active,crit,milestone
    title Tareas 3er trimestre
    dateFormat  DD-MM-YY
    axisFormat  %d-%m
    section eventos
    Inicio tercer trimestre : milestone,10-03-22,1d
    fin tercer trimestre : milestone,30-05-22,1d

    section LM
    Proyecto JSON           :done,14-02-22,07-03-22
    Proyecto MySQL          :done,14-02-22,07-03-22
    XPATH                   :done,25-02-22,07-03-22

    section FOL
    Convenio colectivo      :03-03-22,11-03-22

    section ISO
    placeholder             :15d

    section FH
    placeholder             :15d

    section PAR
    P13 NAT             :crit,nat,07-03-22,30d

    section BBDD
    placeholder             :15d
    
    click nat href "gantt/nat.md"
```

# Índice

---
## ISO
1. Programación de tareas
2. Compara archivos
3. Sistemas de ficheros
4. [Permisos UGOA](iso/permisosUgoa.md)
5. Creación de usuarios y política de privacidad
6. [Creación de usuarios en modo batch](iso/usuariosbash.md)
![](par/foto_underworld_enunciado.png)

## HORARIO

---

| Lunes | Martes | Miércoles | Jueves | Viernes |
|:-----:|:------:|:---------:|:------:|:-------:|
| BBDD  | FH     | ISO       | BBDD   | BBDD    |
| BBDD  | ISO    | ISO       | PAR    | LM      |
| LM    | ISO    | FH        | PAR    | LM      |
| -     | -      | -         | -      | -       |
| LM    | FOL    | FH        | FOL    | FOL     |
| ISO   | PAR    | BBDD      | ISO    | PAR     |
| ISO   | PAR    | BBDD      | ISO    | PAR     |

| Lunes | Martes | Miércoles | Jueves | Viernes |
|:-----:|:------:|:---------:|:------:|:-------:|
| BD  | Hardware     | Sistemas       | BD   | BD    |
| BD  | Sistemas    | Sistemas       | Redes    | Programación      |
| Programación    | Sistemas    | Hardware        | Redes    | Programación      |
| -     | -      | -         | -      | -       |
| Programación    | FOL    | Hardware        | FOL    | FOL     |
| Sistemas   | Redes    | BBDD      | Sistemas    | Redes     |
| Sistemas   | Redes    | BBDD      | Sistemas    | Redes     |

BBDD :arrow_right: Bases de Datos

LM :arrow_right: Lenguajes de Marcas

ISO :arrow_right: Implantación de Sistemas Operativos

FH :arrow_right: Fundamentos de Hardware

FOL :arrow_right: Formación y Orientación Laboral

PAR :arrow_right: Planificación y Administración de Redes