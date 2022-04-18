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
pip freeze > requirements.
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