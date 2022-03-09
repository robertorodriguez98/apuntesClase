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
    HTML :07-03-22,7d

    section FOL


    section ISO
    placeholder             :15d

    section FH
    placeholder             :15d

    section PAR
    P13 NAT             :crit,nat,08-03-22,21-03-22

    section BBDD
    placeholder             :15d

```

[indices](indices.md)
---
## ISO

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