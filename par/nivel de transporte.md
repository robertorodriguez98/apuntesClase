# Nivel de transporte
![](socket.excalidraw)
## TCP
protocolo de ventana deslizante/anunciada/de flujo
* el receptor indica al emisor cuantos mensajes va a enviar sin haberlos procesado todavia
* el emisor envia esos mensajes sin esperar respuesta del receptor
en cada segmento se indica el mensaje enviado (sequence num,no son numeros decimales, sino numeros de bytes que se están enviando) y el numero de asentimiento del mensaje recibido (acknowledgement num) 
### establecimiento y cierre de la conexión
**ANTES DE LA COMUNICACIÓN**
el cliente inicia la comunicación e indica el primer número de secuencia ( no tiene por qué ser 0) (bit SYN a 1)
el servidor responde con el SYN+ACK a 1
el cliente responde con ACK a 1

**FINAL DE  LA COMUNICACIÓN**
el cliente le dice al serv FIN 1
el servidor le confirma que ya no tiene mas cosas ACK 1 (pero puede mandar el mas cosas)
cuando el serv acaba de mandar cosas,  FIN 1
el cliente confirma ACK 1
netstat -putan
