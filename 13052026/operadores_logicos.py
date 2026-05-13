condicion1 = True
condicion2 = True

# AND 
print( condicion1 and condicion2 and False )

# OR
print( condicion1 or condicion2 or False )

# Negación
print( not False )

edad = 37

if edad >= 30:
    print("Ya estas viejito")
elif edad > 18:
    print("Es mayor de edad")
elif edad == 18:
    print("Tienes 18 años")
else:
    print("Eres menor de edad")

print(["Eres menor dedad","Eres mayor de edad"][edad > 18])

