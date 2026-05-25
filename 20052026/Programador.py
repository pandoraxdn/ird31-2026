from Empleado import Empleado

class Programador(Empleado):
    def __init__(self, nombre, apellido_p, apellido_m, edad, no_empleado, salario,no_lenguajes) -> None:
        super().__init__(nombre, apellido_p, apellido_m, edad, no_empleado, salario)
        self._no_lenguajes = no_lenguajes
        self._lenguajes = []

    def informacion_programdor(self):
        print(f"""
            Número de lenguajes: {self.no_lenguajes}
            Lenguajes: {self.lenguajes}
              """)
    @property
    def no_lenguajes(self):
        return self._no_lenguajes

    @property
    def lenguajes(self):
        return self._lenguajes

    @no_lenguajes.setter
    def no_lenguajes(self,no_lenguajes):
        self._no_lenguajes = no_lenguajes

    @lenguajes.setter
    def lenguajes(self,lenguaje):
        self._lenguajes.append(lenguaje)

if __name__ == "__main__":

    programador = Programador("Jose Luis","Garcia","Zamora",25,116,8500,10)

    i = 0

    for element in range(programador.no_lenguajes):
        i+=1
        lenguaje = input(f"Lenguaje {i}: ")
        programador.lenguajes = lenguaje

    programador.informacion_programdor()






