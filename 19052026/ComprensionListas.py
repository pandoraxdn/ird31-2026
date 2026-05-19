numeros = [1,2,3,4,5,6,7,8,9]

cuadrados = [ numero ** 2 for numero in numeros ]

print(cuadrados)


numeros_pares = range(1,100000+1)

pares = [ element for element in numeros_pares if element % 2 == 0 ]
impares = [ element for element in numeros_pares if element % 2 != 0 ]

print(len(pares))
print(len(impares))

i = 0
while i < len(pares):
    print(f"Par: {pares[i]} Impar: {impares[i]}")
    i+=1
