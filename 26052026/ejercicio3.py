def factorial(valor):
    total = 1
    for element in range(valor,0,-1):
        if element > 0:
            total *= element 
    print(total)

valor = int(input())
factorial(valor)

