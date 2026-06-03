
---

Ejercicio 1 - Calcular comisión de ventas

Función original

def calcular_comision(ventas_totales):
    if ventas_totales >= 50000:
        return ventas_totales * 0.12
    return ventas_totales * 0.05

Variables utilizadas

ventas_totales = 65000

Resultado esperado

7800.0


---

Caso adicional

ventas_totales = 30000

Resultado esperado:

1500.0


---

Objetivo

Transformar la función a una expresión lambda manteniendo exactamente el mismo comportamiento.


---

Ejercicio 2 - Determinar el producto más caro

Función original

def producto_mas_caro(precio1, precio2, precio3):
    return max(precio1, precio2, precio3)

Variables utilizadas

precio1 = 2500
precio2 = 1800
precio3 = 3200

Resultado esperado

3200


---

Objetivo

Convertir la función a lambda.


---

Ejercicio 3 - Calcular costo de envío

Función original

def costo_envio(peso):
    if peso <= 1:
        return 120

    if peso <= 5:
        return 180

    return 300

Variables utilizadas

peso = 3

Resultado esperado

180


---

Caso adicional

peso = 8

Resultado esperado:

300


---

Objetivo

Transformar toda la lógica usando una única expresión lambda.


---

Ejercicio 4 - Clasificación de calificación

Función original

def clasificacion(calificacion):
    if calificacion >= 90:
        return "Excelente"

    if calificacion >= 70:
        return "Aprobado"

    return "Reprobado"

Variables utilizadas

calificacion = 85

Resultado esperado

Aprobado


---

Objetivo

Convertir la función a lambda.


---

Ejercicio 5 - Calcular antigüedad laboral

Función original

def antiguedad(anio_actual, anio_ingreso):
    return anio_actual - anio_ingreso

Variables utilizadas

anio_actual = 2026
anio_ingreso = 2018

Resultado esperado

8


---

Objetivo

Transformar a lambda.


---

Ejercicio 6 - Validar acceso al sistema

Función original

def acceso(usuario_activo, tiene_permiso):
    return usuario_activo and tiene_permiso

Variables utilizadas

usuario_activo = True
tiene_permiso = True

Resultado esperado

True


---

Caso adicional

usuario_activo = True
tiene_permiso = False

Resultado esperado:

False


---

Objetivo

Transformar la función a lambda.


---

Ejercicio 7 - Calcular total de compra

Función original

def total_compra(precio_unitario, cantidad):
    subtotal = precio_unitario * cantidad
    return subtotal

Variables utilizadas

precio_unitario = 350
cantidad = 8

Resultado esperado

2800


---

Objetivo

Reescribir usando lambda.


---

Ejercicio 8 - Obtener iniciales

Función original

def iniciales(nombre, apellido):
    return nombre[0] + apellido[0]

Variables utilizadas

nombre = "Rodrigo"
apellido = "Lazcano"

Resultado esperado

RL


---

Objetivo

Transformar a lambda.


---

Ejercicio 9 - Validar stock disponible

Función original

def stock_disponible(stock):
    return stock > 0

Variables utilizadas

stock = 15

Resultado esperado

True


---

Objetivo

Convertir a lambda.


---

Ejercicio 10 - Generar correo corporativo

Función original

def correo(nombre, apellido):
    return f"{nombre.lower()}.{apellido.lower()}@empresa.com"

Variables utilizadas

nombre = "Rodrigo"
apellido = "Lazcano"

Resultado esperado

rodrigo.lazcano@empresa.com


---

Objetivo

Transformar a lambda.


---

Nivel Entrevista Técnica (Más Complejos)

Ejercicio 11 - Determinar bono anual

def bono(salario, anios):
    if anios >= 10:
        return salario * 0.20

    if anios >= 5:
        return salario * 0.10

    return salario * 0.05

Variables

salario = 30000
anios = 7

Resultado esperado

3000.0


---

Ejercicio 12 - Categorizar edad

def categoria_edad(edad):
    if edad < 13:
        return "Niño"

    if edad < 18:
        return "Adolescente"

    if edad < 60:
        return "Adulto"

    return "Adulto Mayor"

Variables

edad = 35

Resultado esperado

Adulto


---

Ejercicio 13 - Calcular precio final con descuento e IVA

def precio_final(precio):
    descuento = precio * 0.10
    subtotal = precio - descuento
    return subtotal * 1.16

Variables

precio = 5000

Resultado esperado

5220.0


---

Ejercicio 14 - Evaluar rendimiento de vendedor

def rendimiento(ventas):
    return "Alto" if ventas >= 100000 else "Normal"

Variables

ventas = 125000

Resultado esperado

Alto


---

Ejercicio 15 - Seleccionar el empleado con mayor salario

def mayor_salario(emp1, emp2):
    return emp1 if emp1["salario"] > emp2["salario"] else emp2

Variables

emp1 = {
    "nombre": "Ana",
    "salario": 25000
}

emp2 = {
    "nombre": "Luis",
    "salario": 32000
}

Resultado esperado

{
    "nombre": "Luis",
    "salario": 32000
}

---
