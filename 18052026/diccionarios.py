# Diccionario almacena un conjunto de datos
# Y la forma de alamacenarlos es por medio
# De clave:valor

persona = {
  'id': 1,
  'edad': 37,
  'nombre': 'Perla',
  'ciudad': 'CDMX'
}

print(persona['id'])
print(persona['edad'])
print(persona['nombre'])
print(persona['ciudad'])

persona["nombre"] = "Daniela"

for key, value in persona.items():
  print(key,value)



