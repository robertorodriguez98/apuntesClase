las direcciones de internet empiezan por 2 o 3.

## Convivencia con IPv4
son dos protocolos totalmente incompatibles entre sí
* doble pila: se tiene instalado tanto ipv6 como ipv4; siempre que sea posible se realizan las comunicaciones con IPv6, si no en IPV4
* encapsular mensajes IPv6 dentro de IPv4, en específico dentro del cuerpo del mensaje; donde funciona IPv6, se manda el mensaje tal cual, y en los tramos que no, se hace el encapsulamiento/**tunelado** 
	* hay que especificar que los mensajes tunelados tienen un enrutamiento diferente, para que el router ipv4 sepa enrutar los routers de IPv6 destino
	* 6to4,Teredo