import sys
from PySide6.QtWidgets import QApplication as App
from PySide6.QtWidgets import QWidget as Ventana
from PySide6.QtWidgets import QFormLayout as Formulario
from PySide6.QtWidgets import QPushButton as Boton
from PySide6.QtWidgets import QLineEdit as Entrada

app = App()
ventana = Ventana()
ventana.setWindowTitle("Formulario de Usuarios")
ventana.resize(400,300)
formulario = Formulario()

formulario.addRow("Nombre: ",Entrada())
formulario.addRow("E-mail: ",Entrada())
formulario.addRow("Edad: ",Entrada())
formulario.addRow("Enviar datos", Boton("Enviar"))

ventana.setLayout(formulario)
ventana.show()
sys.exit(app.exec())


