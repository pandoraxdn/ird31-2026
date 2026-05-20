from Persona import Persona

class Empleado(Persona):
    def __init__(self, nombre, apellido_p, apellido_m, edad, no_empleado, salario) -> None:
        super().__init__(nombre, apellido_p, apellido_m, edad)
        self._no_empleado = no_empleado
        self._salario = salario

    def informacion_empleado(self):
        print(f"""
            Datos Empleado
                Salario: {self.salario}
                Número empleado: {self.no_empleado}
        """)

    def __str__(self) -> str:
        return f"""
            Datos: 
            Nombre: {self.nombre}
            Apellido Paterno: {self.apellido_p}
            Apellido Materno: {self.apellido_m}
            Edad: {self.edad}
            Salario: {self.salario}
            Número empleado: {self.no_empleado}
        """

    @property
    def no_empleado(self):
        return self._no_empleado

    @property
    def salario(self):
        return self._salario

    @no_empleado.setter
    def no_empleado(self, no_empleado):
        self._no_empleado = no_empleado

    @salario.setter
    def salario(self, salario):
        self._salario = salario

if __name__ == "__main__":
    empleado1 = Empleado("Juanito","Lopez","Lozano",20,117,1900)

    print(empleado1.no_empleado)
    empleado1.no_empleado = 118
    print(empleado1.no_empleado)

    print(empleado1.salario)
    empleado1.salario = 2500
    print(empleado1.salario)

    empleado1.informacion()
    empleado1.informacion_empleado()


