import sys
from PySide6.QtWidgets import QApplication as App
from PySide6.QtWidgets import QPushButton as Boton
from PySide6.QtWidgets import QMessageBox as Mensaje

def confirmar():
    resp = Mensaje.question(
            None,
            "Salir", 
            "¿Estás seguro?", 
            Mensaje.Yes | Mensaje.No)
    if resp == Mensaje.Yes:
        print("Saliendo...")
        App.quit()

app = App(sys.argv)
btn = Boton("Salir")
btn.clicked.connect(confirmar)
btn.show()
sys.exit(app.exec())

