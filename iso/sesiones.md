# Sesiones
* Creación de sesiones:
```bash
screen -S rrodriguez
```
* Para trabajar con las sesiones:<kbd  >Ctrl</kbd> + <kbd>A</kbd>:
    * <kbd>Shift</kbd>+<kbd>2</kbd>("): ver las sesiones actuales. 
    * <kbd>D</kbd>: salir de la sesión sin cerrarla
    * <kbd>C</kbd>: crear otra instancia en la sesion actual
    * <kbd>Shift</kbd>+<kbd>A</kbd>: cambiar nombre
    * <kbd>Alt Gr</kbd>+<kbd>1</kbd>(|): divide verticalmente para tener 2 regiones
    * <kbd>Shift</kbd>+<kbd>S</kbd>: divide horizontalmente
    * <kbd>Tab</kbd>: cambiar de región (necesito seleccionar una sesión)
    * <kbd>N</kbd>:pasar a la siguiente región
    * <kbd>k</kbd>:matar una sesión
* Conectarse a una sesión existente
```bash
screen -ls
screen -r 9740.rrodriguez
``` 
```mermaid
  graph TD;
      tty---sesión;
      subgraph SE CIERRA TODO AL SALIR
          sesión---ventana1;
          sesión---ventana2;
          sesión---ventana3;
      end
      tty---screen;
      subgraph SE MANTIENEN LOS PROCESOS
          screen-->region1;
          screen-->region2;
      end
```




