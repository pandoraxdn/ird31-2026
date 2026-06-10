import sys
from PySide6.QtWidgets import QApplication, QWidget, QComboBox, QLabel, QVBoxLayout

def estado_cambio():
    texto.setText(f"Seleccionaste: {check.currentText()}")

app = QApplication(sys.argv)
ventana = QWidget()
contenedor = QVBoxLayout()

check = QComboBox()
check.addItems(["Python","Java","TypeScript"])
texto = QLabel("Ninguno")

check.currentIndexChanged.connect(estado_cambio)

contenedor.addWidget(check)
contenedor.addWidget(texto)
ventana.setLayout(contenedor)
ventana.show()

sys.exit(app.exec())



