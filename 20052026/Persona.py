class Persona:

    def __init__(self, nombre, apellido_p, apellido_m, edad) -> None:
        self._nombre = nombre
        self._apellido_p = apellido_p
        self._apellido_m = apellido_m
        self._edad = edad

    def informacion(self):
        print(f"""
            Datos
                Nombre: {self.nombre}
                Apellido Paterno: {self.apellido_p}
                Apellido Materno: {self.apellido_m}
                Edad: {self.edad}
        """)

    @property
    def nombre(self):
        return self._nombre

    @property
    def apellido_p(self):
        return self._apellido_p

    @property
    def apellido_m(self):
        return self._apellido_m

    @property
    def edad(self):
        return self._edad

    @nombre.setter
    def nombre(self, nombre):
        self._nombre = nombre

    @apellido_p.setter
    def apellido_p(self, apellido_p):
        self._apellido_p = apellido_p

    @apellido_m.setter
    def apellido_m(self, apellido_m):
        self._apellido_m = apellido_m

    @edad.setter
    def edad(self, edad):
        self._edad = edad

#print("Esto no debería ejecutarse")

if __name__ == "__main__":
    persona1 = Persona("Sofia","Lozano","Mondragon",27)

    print(persona1.nombre)
    persona1.nombre = "Laura"
    print(persona1.nombre)

    print(persona1.apellido_p)
    persona1.apellido_p = "Fuentes"
    print(persona1.apellido_p)

    print(persona1.apellido_m)
    persona1.apellido_m = "Martinez"
    print(persona1.apellido_m)

    print(persona1.edad)
    persona1.edad = 37
    print(persona1.edad)

    persona1.informacion()



