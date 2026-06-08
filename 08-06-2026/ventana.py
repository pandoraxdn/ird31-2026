import sys
from PySide6.QtWidgets import QApplication, QWidget

# Crear aplicación (crear solo una estancia)
app = QApplication(sys.argv)

# Crear ventana principal (root)
ventana = QWidget()
ventana.setWindowTitle("Mi primera ventana")
ventana.resize(400,300)

# Mostrar ventana
ventana.show()

sys.exit(app.exec())


