from Empleado import Empleado

class Disenador(Empleado):
    def __init__(self, nombre, apellido_p, apellido_m, edad, no_empleado, salario,area) -> None:
        super().__init__(nombre, apellido_p, apellido_m, edad, no_empleado, salario)
        self._area = area

    def informacion_diseñador(self):
        print(f"""
            Area: {self.area}
              """)

    @property
    def area(self):
        return self._area

    @area.setter
    def area(self,area):
        self._area = area

if __name__ == "__main__":
    disenador1 = Disenador("Eduardo","Lopez","Perez",23,112,3000,"Sistemas")

    print(disenador1.area)
    disenador1.area = "Marketing"
    print(disenador1.area)

    disenador1.informacion()
    disenador1.informacion_empleado()
    disenador1.informacion_diseñador()
