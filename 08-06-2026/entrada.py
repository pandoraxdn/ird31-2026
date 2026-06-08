import sys
from PySide6.QtWidgets import QApplication, QWidget, QLabel, QLineEdit, QVBoxLayout

app = QApplication(sys.argv)
ventana = QWidget()

contenedor = QVBoxLayout()

texto = QLabel("Nombre: ")
entrada = QLineEdit()

contenedor.addWidget(texto)
contenedor.addWidget(entrada)

ventana.setLayout(contenedor)
ventana.show()
sys.exit(app.exec())

