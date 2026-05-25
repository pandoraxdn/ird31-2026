palabra = input()
vocales = [ "a", "e", "i", "o", "u" ]
total = 0

for element in palabra:
    if element in vocales:
        total+=1

print(total)
