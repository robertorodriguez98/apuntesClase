---
title: "Práctica 12: Underworld"
subtitle: "Roberto Rodríguez Márquez 1º ASIR"
keywords:
  - Práctica
  - Redes
  - GNS3
  - Markdown
...
\newpage

# Índice
- [Enunciado](#id-section1)
- [Resolución](#id-section2)




\newpage
<div id='id-section1'/>
## Enunciado

---

#### 1.Vives en UNDERWORLD. En tu mundo, se presentan diferentes tipos de especies con un único fin, “cruzarse” entre sí. Estas criaturas son:

* **VAMPIROS**
* **LICÁNTROPOS**: hombres lobo con la capacidada de regresar a ser humanos. 
* **HOMBRES LOBO**: hombres lobo que tras su primera conversión a lobo, no pudieron regresar a ser humanos.
* **HUMANOS**: unos mierdecillas.
* **TÚ**: Un guerruero informático con superpoderes como darse la vuelta a un juego que todavía no ha salido al mercado o poseer la facultad de volverse invisible cuando sale de fiesta y trata de cortejar con una fémina diciéndole frases del tipo: ¿Quieres que te compile el kernel nena?

##### El aspecto de UNDERWORLD es el siguiente:
![underworld.png](46ad375dc9d23f544eeeca31c2e1b9d1.png)

Todo el mundo usa la red para mandarse mensajitos y ligar (**por lo que deberás configurar la red para qu esto sea posible en un principio, es decir, que todos los equipos tengan conexión entre si**). Tú, que ya estás hasta la \*#!%?! de tanto bicho raro como consecuencia de los cruces que se producen cuando un vampiro se cruza por ejemplo con un licántropo y el hijo de éstos con un hombre lobo y así sucesivamente, decides ponerle fin a la historia haciendo lo siguiente, metiéndole unas cuantas **ACLs** a los routers que los comunican:

* **Los VAMPIROS no podrán comunicarse con el resto de especies**
* **Los HOMBRES LOBO y los LICÁNTROPOS,** dado que no son tan repulsivos cuando se cruzan, **podrán comunicarse entre sí. Con el resto de especies no tendrán comunicación.**
* **HUMANOS tampoco podrán comunicarse con el resto de especies**

#### 2. Al final decides hacer negocio con las especies raras porque no tienen ni pajolera idea de informática y eres contratado por estos seres malignos para que lleves a cabo las siguientes tareas:
1. Los **hombres lobo** ,que son bastante burros metiendo direcciones IP a sus máquinas, te piden que les configures el **servicio DHCP para** que **todas sus máquinas** reciban automáticamente una IP libre.
2. Los **licántropos** por su parte, te contratan para que les asignes también por **DHCP** sus IPs, **pero** te indican que **no pueden recibir las primeras 10 direcciones de su rango (sin contar la de red y la puerta de enlace),** ya que éstas, están reservadas para los jefes de su clan que están de viaje y volverán en unos días.

#### 3. De tanto hacer negocio con los vampiros te fijas en un par de vampiritas que están de muy bien ver y te gustaría poder enviarles un mensajito desde el chalet que te acabas de comprar en HUMANLAND con el pastizal que le estás sacando a las pobres "craturicas". Tu IP es la 192.168.1.4 y la de SELENE y SONJA son la 192.168.3.4 y la 192.168.3.5 respectivamente. Añade una máquina a HUMANLAND para tu equipo denominado IT KNIGHT y 2 máquinas denominadas SELENE Y SONJA con las mencionadas IPs en TRANSILVANIA.

Utiliza la ACL adecuada para permitir tener comunicación entre IT KNIGHT, SELENE y SONJA. 

#### 4. Desde que no se puede ligar en UNDERWORLD, están todos más aburridos que un ajo, así que decides ponerles un servidor WEB interno a UNDERWORLD. Añade al router PUENTE 1, un servidor denominado FICHEROS que tendrá la IP 192.168.8.2/24, creando las ACLs necesarias para que la comunidad entera de UNDERWORLD, pueda entretenerse viendo algunas webs chulas.

\newpage
<div id='id-section2'/>
## Resolución

al 1 y al 4 hay que decirles la ruta por defecto, a los demás hay que decirle alguna cosita más.
