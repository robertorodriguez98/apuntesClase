1. Realiza un trigger que cada vez que se inserte o modifique datos de una venta, actualice de forma automática la columna stock de la tabla productos y compruebe si el stock pasa a estar por debajo del umbral de pedido. Si se da este caso, debe insertarse un registro en la tabla órdenes de pedido, de forma que se pidan las unidades  necesarias para restablecer el stock al triple del valor señalado en el umbral de pedido

2. Realiza un trigger que en el momento que una orden de pedido se marque como servida, se actualice el stock del producto correspondiente.

## TABLAS NECESARIAS:

| Productos        | Pedidos        | Ventas         |
| ---------------- | -------------- | -------------- |
| **cod_producto** | **cod_pedido** | **cod_ventas** |
| nombre           | cod_producto   | cod_producto   |
| precio           | unidades       | unidades       |
| stock            | estado         |                |
| Umbral           |                |                |

