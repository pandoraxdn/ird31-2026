# Definir una clase
class Persona:
    def __init__(self, nombre, apellido) -> None:
        self.nombre = nombre
        self.apellido = apellido

    def mostrar_persona(self):
        print(f"""
            Nombre: {self.nombre}
            Apellido: {self.apellido}
        """)

persona1 = Persona("Juanito","Lopez")
persona1.mostrar_persona()

persona2 = Persona("Daniela","Montoya")
persona2.mostrar_persona()
