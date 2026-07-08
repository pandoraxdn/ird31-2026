import sys
from PySide6.QtWidgets import QApplication as App
#from windows.LoginWindow import LoginWindow
from windows.FormWindow import FormWindow
from database.data import engine, Base
from database.models import Usuario, Pedido, Producto, DetallePedido

Base.metadata.create_all(bind=engine)

def main():
    app = App()
    ventana = FormWindow()
    ventana.show()
    sys.exit(app.exec())

if __name__ == "__main__":
    main()

