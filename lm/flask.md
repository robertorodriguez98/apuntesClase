# Instalación de librerías:
### Entornos virtuales python
* pip
* directorio de un usuario sin privilegios
* Activar/desactivar
```zsh
sudo apt install python3-venv
python3 -m venv xml
source xml/bin/activate
pip install flask
pip list
pip freeze > requirements.txt
pip install -r requirements.txt
deactivate
```

# Flask
### Herencia de plantillas (jinja2)
* loop.index : nº iteracion
* loop.first -> T:
* Para leer un diccionario se usa el punto (enlace.url enlace.texto)
Ejercicio: dado un numero mostrar su tabla de multiplicar, si es 0 devuelve un error 404

## Leer datos:
* Parámetros URL: (articulos/?nombre=manzana&precio=10)
```python
@app.route('/articulos')
def articulos():
	nombre=request.args.get("nombre")
	precio=request.args.get("precio")
	return render_template("articulos.html",nombre=nombre,precio=precio)
```
* Rutas dinámicas:(articulos/manzana/10)
```python
@app.route('/articulos/<nombre>/<precio>')
def articulos(nombre,precio):
	return render_template("articulos.html",nombre=nombre,precio=precio)
```
### Envio de información mediante formularios
* Se utiliza el método post
Primero se crea el formulario en el html y luego en app.py:
```python
# la ruta SOLO funciona si accedemos a ella mediante el método POST
@app.route('/suma',methods=["POST"])
def suma():
num1=request.form.get("numero1")
num2=request.form.get("numero2")
try:
resultado = int(num1) + int(num2)
except:
return abort(404)
return render_template("suma.html", num1=num1, num2=num2, resultado=resultado)
```
## Servicio
para utilizar HEROKU hay que realizar un cambio: 
```python
import os
# el programa va aqui
port = os.environ["PORT"]
app.run('0.0.0.0', int(port), debug=True)
```