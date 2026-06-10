import sys
from PySide6.QtWidgets import QApplication, QWidget, QCheckBox, QLabel, QVBoxLayout

def estado_cambio(estado):
    if estado == 2:
        texto.setText("Activado")
    else:
        texto.setText("Desactivado")

app = QApplication(sys.argv)
ventana = QWidget()
contenedor = QVBoxLayout()

check = QCheckBox("Acepto terminos y condiciones")
texto = QLabel("Desactivado")

check.stateChanged.connect(estado_cambio)
contenedor.addWidget(check)
contenedor.addWidget(texto)
ventana.setLayout(contenedor)
ventana.show()

sys.exit(app.exec())









