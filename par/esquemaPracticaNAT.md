# Esquema P13 NAT
## Escenario:
1. PC1 y PC2 son dos ordenadores que tenemos en casa y que toman su dirección ip por DHCP del router "Casa".
2. El router "Casa" está conectado al Router "ISP" de nuestro proveedor de internet que es el que se comunica con los otros routers de internet.
3. Tenemos dos servidores Web (Server1 y Server2) que están en dos redes locales que se conectan al exterior por medio de dos routers (R1 y R2)
4. Queremos que desde PC1 o PC2 se pueda acceder a las páginas webs alojadas en Server1 y Server2.
```mermaid
graph BT;
e1([PC1])---e3[/Switch\]
e2([PC2])---e3
e3 --- e4[(Casa)]
subgraph Internet
	e4 --- e5[(ISP)]
	e5 --- e6[(Router 1)]
	e5 --- e7[(Router 2)]
end
e6 --- e8{{Servidor 1}}
e7 --- e9{{Servidor 2}}
```
## Esquema organización trabajo:
```mermaid
graph LR;
e1(Que PC1 o PC2 debe ser un Tiny Linux con Firefox.)
e2(Tienes que configurar el router Casa<br>como servidor DHCP para PC1 y PC2.)
e3(Debes configurar el direccionamiento<br>de las interfaces de los routers y de las máquinas<br>respetando las ip que encuentran en el dibujo.)
e4(Debes configurar SNAT en router casa)
e5(Debes configurar DNAT en R1 y R2.también SNAT, claro.)
e6(Debes configurar el enrutamiento en los routers necesarios.)
e7(Repite la configuración usando máquinas Linux como routers.)

a1(Apartado1) --- e1
a1 --- e2
a2(Apartado2) --- e3
a3(Apartado3) --- e4
a3 --- e5
a3 --- e6
a4(Apartado4) --- e7

```