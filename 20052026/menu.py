from Empleado import Empleado
from Disenador import Disenador
menu = """
    Bienvenido al sistema de empleados
        1.- Crear Empleado
        2.- Crear Diseñador
        3.- Listar registros
        4.- Salir
"""
lista = []

while True:
    print(menu)
    opcion = int(input("Ingrese la acción: "))

    if opcion == 4:
        break

    if opcion == 3:
        for element in lista:
            print(element)

    nombre = input("Ingrese el nombre del empleado: ")
    apellido_p = input("Ingrese el AP del empleado: ")
    apellido_m = input("Ingrese el AM del empleado: ")
    edad = input("Ingrese la Edad del empleado: ")
    no_empleado = int(input("Ingrese el número empleado: "))
    salario = float(input("Ingrese el salario: "))

    if opcion == 1:
        empleado = Empleado(nombre, apellido_p, apellido_m, edad, no_empleado, salario)
        empleado.informacion()
        empleado.informacion_empleado()
        lista.append(empleado)

    if opcion == 2:
        area = input("Ingrese el área del empleado: ")
        disenador = Disenador(nombre, apellido_p, apellido_m, edad, no_empleado, salario, area)
        disenador.informacion()
        disenador.informacion_empleado()
        disenador.informacion_diseñador()
        lista.append(disenador)


