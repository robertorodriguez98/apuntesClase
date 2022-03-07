# Diagrama gantt de actividades próximas
---
```mermaid
gantt
    %%etiquetas posibles: done,active,crit,milestone
    title Tareas 3er trimestre
    dateFormat  YYYY-MM-DD
    section eventos
    Inicio tercer trimestre : milestone,2022-03-10,1d
    fin tercer trimestre : milestone,2022-05-30,1d
    
    section LM
    Proyecto JSON           :done,2022-02-14,2022-03-07
    Proyecto MySQL          :done,2022-02-14,2022-03-07
    XPATH                   :done,2022-02-25,2022-03-07

    section FOL
    Convenio colectivo      :2022-03-03,2022-03-11

    section ISO
    placeholder             :15d

    section FH
    placeholder             :15d

    section PAR
    placeholder             :15d

    section BBDD
    placeholder             :15d
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