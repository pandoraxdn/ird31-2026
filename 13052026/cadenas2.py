# Concatenación es un proceso donde se pueden
# unir o combinar varias cadenas de texto

nombre = "Azami"
saludo = "Hola " + nombre + ", bienvenida"
print(saludo)

# Conversión de tipo de dato a una cadena
edad = 25
print("Tienes " + str(edad) + " años")

# Longitud de una cadena
print(len(saludo))

# Convertir texto a mayúsculas/minúsculas
print(saludo.upper())
print(saludo.lower())

# Inmutabilidad de las cadenas python
usuario = "Marisol"
nuevo_usuario = usuario.upper()
print(usuario)
print(nuevo_usuario)
print(usuario)

# Busqueda de subcadenas en un string/cadena
cadena = "Documento de texto sobre programaciòn"
print(cadena[0])
print(cadena.find("texto"))
print(cadena[13])

mensaje = """
    Bienvenido al sistema de calidad

    Acciones:
        1.- Listar productos
        2.- Listar empleados
        3.- Registros de entradas
        4.- Registros de saludos
"""

mensaje_nuevo = mensaje.replace("saludos","salidas")
print(id(mensaje), mensaje)
print(id(mensaje_nuevo),mensaje_nuevo)



