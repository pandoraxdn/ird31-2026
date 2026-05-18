# Es un conjunto de valores que son inmutables
tupla = ("a","b","c","d")

print(tupla[0])

validacion = False
for element in tupla:
    if element == "a":
        validacion = True

print(validacion)

print("a" in tupla)

for element in tupla:
    print(element)

tupla2 = (1,(2,3),(4,5))
print(tupla2)
