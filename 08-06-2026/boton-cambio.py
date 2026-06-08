import sys
from PySide6.QtWidgets import QApplication, QPushButton
from PySide6.QtGui import QFont

def change_text():
    if boton.text() == "Presióname":
        boton.setText("¡Presionado!")
    else:
        boton.setText("Presióname")

app = QApplication(sys.argv)
fuente = QFont("Arial",20)
boton = QPushButton("Presióname")
boton.clicked.connect(change_text)
boton.setFont(fuente)
boton.show()
sys.exit(app.exec())
