# Gestión de procesos
```bash
top
htop
ps aux
ps -efL
pstree -sp
pstree -np
tasksel
xkill
yes
sleep 3600
jobs # para ver los procesos que estan detenidos y en segundo plano con CTRL + Z
jobs -l # para ver el identificador de proceso tmb
# para ejecutar algo en segundo plano se hace con el caracter & por ejemplo
sleep 1000 &
xclock -bg wheat -update 1 &

kill # manda señales, no mata procesos directamente la 9 (SIGKILL) Si mata
# por ejemplo se pueden detener o continuar con 19 y 18

fg # mandar a primer plano
bg # mandar a segundo plano
```

comandos de la practica:
```bash
# ps
# jobs
# pstree
# kill
htop
top
# fg,bg
# CTRL + C
# CTRL + Z
# pidof
# nohup
# disown
screen
killall
nice
renice
pkill
pgrep
proc
```
generar procesos
```bash
sleep
clockx
yes
```
con los siguientes comandos los procesos siguen ejecutandose al matar al padre
```bash
nohup # tiene salida estandar a un fichero especifico
disown # hay que redireccionarlo manualmente

tail -f # permite ver un fichero que se actualiza
ahora resulta que hay otro que no han dicho que se llama watch
```

## Hilos
unidad minima por la que podemos dividir un proceso al que se le pueden dar recursos del procesador. Un proceso puede tener varios hilos(ej firefox)
