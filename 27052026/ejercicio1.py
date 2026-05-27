menu = """
    1.- Agregar Producto
    2.- Total de productoS
    3.- Categoria top
    4.- Promedio de venta
    5.- Salir
"""

arr = []

while True:
    print(menu)

    opcion = int(input("IngreSa la opcion: "))

    if opcion == 5:
        break

    if opcion == 2:
        print(f"Total de ProductoS: {len(arr)}")

    elif opcion == 3:
        maximo = ""
        for element in arr:
            if maximo == "":
                maximo = element["precio"]
            else:
                if maximo < element["precio"]:
                    maximo = element["precio"]
        print(f"Valor maximo: {maximo}")
    
    elif opcion == 4:
        total = 0
        for element in arr:
            total += element["precio"] * element["cantidad"]
        print(f"Promedio: {total/len(arr)}")
            
    elif opcion == 1:
        dato = input("Nombre categoria precio cantidad: ").split()

        if int(dato[2]) <= 1 or int(dato[2]) >= 10**5:
            print("El precio del producto no eS valido")
            continue

        if int(dato[3]) <= 1 or int(dato[3]) >= 10**4:
            print("La cantidad no eS valida")
            continue

        arr.append({
            "nombre": dato[0],
            "categoria": dato[1],
            "precio": float(dato[2]),
            "cantidad": float(dato[3])
        })

