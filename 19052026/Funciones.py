
def saludar(mensaje):
    print(f"Mensaje recibido: {mensaje}")

saludar("Hola a todos")
saludar("Adios")

def sumar(a,b):
    return a + b

print(sumar(10,20))
print(sumar(10,30))

def imprimir_persona(nombre, apellido='', edad=None):
    if edad:
        print(f"Persona: {nombre}, {apellido}, edad: {edad}")
    else:
        print(f"Persona: {nombre}, {apellido}")

imprimir_persona(apellido="Rojas",nombre="Rodrigo")
imprimir_persona(nombre="Rodrigo",edad=37)


def sumar_numeros(*argumentos):
    total = 0
    for numero in argumentos:
        total += numero
    return total

print(sumar_numeros(1,2,3,4,5,6,7,8,9))
print(sumar_numeros(1,2))



