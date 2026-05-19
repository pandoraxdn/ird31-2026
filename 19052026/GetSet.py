class Coche:
    def __init__(self,marca, modelo, color) -> None:
        self._marca = marca
        self._modelo = modelo
        self._color = color

    # Get me permite acceder a los atributos
    @property
    def marca(self):
        return self._marca

    @property
    def modelo(self):
        return self._modelo

    @property
    def color(self):
        return self._color

    # Setter me permite cambiar los valores de los atributos
    @marca.setter
    def marca(self, marca):
        self._marca = marca

    @modelo.setter
    def modelo(self, modelo):
        self._modelo = modelo

    @color.setter
    def color(self, color):
        self._color = color

coche1 = Coche("BWM","M3","Black")
print(coche1.marca)
coche1.marca = "Ferrary"
print(coche1.marca)
