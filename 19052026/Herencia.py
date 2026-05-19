class Animal:
    def __init__(self,nombre) -> None:
        self.nombre = nombre

    def comer(self):
        print("Como muchas veces al dìa")

    def dormir(self):
        print("Duermo muchas horas")

class Perro(Animal):
    def __init__(self, nombre) -> None:
        super().__init__(nombre)

    def hacer_sonido(self):
        print("Puede ladrar")

    def dormir(self):
        print("Duermo 16 horas al día")

animal1 = Animal("delfin")
animal1.dormir()

animal2 = Perro("Chihuahua")
animal2.dormir()
