# Una lista es un conjunto de elementos
lista = [1,2,3,4,5,6]

print(len(lista))

# Valor posicional
print(lista[0])
print(lista[-1])
print(lista[0:3])

# Desestructuraciòn
lista = [1,2]
# valor1 = lista[0]
valor1, valor2 = lista
print(valor1,valor2)

lista2 = ["Andrea","Laura","Karla"]
user1, user2, user3 = lista2

print(user1)
print(user2)
print(user3)

lista2.append("Dafne")

print(lista2)

lista2.remove("Laura")

print(lista2)

lista2.insert(1,"Antonio")

print(lista2)

lista2.pop(0)

print(lista2)

for element in lista2:
    print(element)

i = 0
while i < len(lista2):
    print(lista2[i])
    i = i + 1
