
planetas = { "Tierra", "Marte", "Saturno" }

# Los sets solo almacenan valores únicos

planetas.add("Jupiter")
planetas.add("Jupiter")
planetas.add("Jupiter")
planetas.add("Jupiter")

print(planetas)

# Se recomienda eleminar por valor, no por posición
planetas.remove("Jupiter")
print(planetas)

# Operaciones dentro de un set
conjuntoA = {1,2,3,4,5}
conjuntoB = {1,6,7,8,9} 

# Unión conjunto
union = conjuntoA | conjuntoB
print(union)

# Intersección de conjuntos
interseccion = conjuntoA & conjuntoB
print(interseccion)

# Diferencia de conjuntos
diferencia = conjuntoA - conjuntoB
print(diferencia)








