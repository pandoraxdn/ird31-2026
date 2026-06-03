productos = [1500,2500,3000,4500]

productos_descuento = [
    precio * 0.9
    for precio in productos
]

print(productos)
print(productos_descuento)

empleados = [
    "Juan",
    "Ana",
    "Pedro"
]

salarios = [
    15000,
    18000,
    22000
]

for empleado, salario in zip(empleados,salarios):
    print(f"{empleado}:{salario}")

vendedores = [
    "Carlos",
    "Ana",
    "Pedro"
]

for posicion, vendedor in enumerate(vendedores,start=1):
    print(posicion,vendedor)

a = 10 
b = 20

print(a,b)
a, b = b, a
print(a,b)

numeros = [1,2,3,4,5]

primer, *medio, ultimo = numeros
print(primer,medio,ultimo)

def cuadrado(numero):
    return numero**2

print(cuadrado(10))

cuadrado_number = lambda numero: numero**2
print(cuadrado_number(20))

pares = []
for element in range(1000000):
    if element % 2 == 0:
        pares.append(element)

print(len(pares))

pares = list(filter(lambda x: x % 2 == 0,range(1000000)))

print(len(pares))
