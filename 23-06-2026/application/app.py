import sys
from PySide6.QtWidgets import QApplication as App
from LoginWindow import LoginWindow

def main():
    app = App()
    ventana = LoginWindow()
    ventana.show()
    sys.exit(app.exec())

if __name__ == "__main__":
    main()

