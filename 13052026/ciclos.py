"""
contador = 1

while contador <= 100:
    print(contador)
    contador+=1

contador = 100

while contador >= 0:
    print(contador)
    contador-=1

# 0 101
for element in range(1,101,2):
    print(element)

# 100 1
for element in range(100,0,-1):
    print(element)

for element in range(0,1000001,1):
    if element % 2 == 0:
        print(element)
"""

menu = """
    Calculadora
        1.- Sumar dos valores
        2.- Restar dos valores
        3.- Dividir dos valores
        4.- Multiplicar dos valores
        5.- Terminar
"""

while True:
    print(menu)
    valor_menu = int(input("Ingresa opción: "))

    if valor_menu == 5:
        break

    valor1 = int(input("Ingresa valor 1: "))
    valor2 = int(input("Ingresa valor 2: "))

    if valor_menu == 1:
        print(valor1+valor2)
    elif valor_menu == 2:
        print(valor1-valor2)
    elif valor_menu == 3:
        print(valor1/valor2)
    elif valor_menu == 4:
        print(valor1*valor2)
    else:
        continue
