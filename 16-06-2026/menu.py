import sys
from PySide6.QtWidgets import QApplication as App
from PySide6.QtWidgets import QMainWindow
from PySide6.QtWidgets import QLabel as Texto

class Ventana(QMainWindow):
    def __init__(self):
        super().__init__()
        self.label = Texto("Archivo > abrir")
        self.setCentralWidget(self.label)

        menu = self.menuBar()

        archivo = menu.addMenu("Archivo")
        accion_abrir = archivo.addAction("Abrir")
        accion_abrir.triggered.connect(self.abrir)
    
    def abrir(self):
        self.label.setText("Abrir presionado")

app = App(sys.argv)
ventana = Ventana()
ventana.show()
sys.exit(app.exec())



