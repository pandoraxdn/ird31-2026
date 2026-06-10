import sys
from PySide6.QtWidgets import QApplication, QWidget, QRadioButton, QButtonGroup, QLabel, QVBoxLayout

def seleccion():
    if radio1.isChecked():
        texto.setText("Seleccionaste la opción A")
    else:
        texto.setText("Seleccionaste la opción B")

app = QApplication(sys.argv)
ventana = QWidget()
contenedor = QVBoxLayout()

texto = QLabel("Selecciona la opción correcta:")
radio1 = QRadioButton("Opción A")
radio2 = QRadioButton("Opción B")

grupo = QButtonGroup()
grupo.addButton(radio1)
grupo.addButton(radio2)

radio1.toggled.connect(seleccion)
radio2.toggled.connect(seleccion)

contenedor.addWidget(texto)
contenedor.addWidget(radio1)
contenedor.addWidget(radio2)
ventana.setLayout(contenedor)
ventana.show()

sys.exit(app.exec())






