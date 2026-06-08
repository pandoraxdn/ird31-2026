import sys
from PySide6.QtWidgets import QApplication, QPushButton

def on_click():
    print("Botón presionado")

app = QApplication(sys.argv)

boton = QPushButton("Haz click")

boton.clicked.connect(on_click)

boton.show()
sys.exit(app.exec())
