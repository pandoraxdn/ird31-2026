import sys
from PySide6.QtWidgets import QApplication as App
from PySide6.QtWidgets import QWidget as Ventana
from PySide6.QtWidgets import QHBoxLayout as Contenedor
from PySide6.QtWidgets import QPushButton as Boton

app = App()
ventana = Ventana()
contenedor = Contenedor()

contenedor.addWidget(Boton("Botón 1"))
contenedor.addWidget(Boton("Botón 2"))
contenedor.addWidget(Boton("Botón 3"))
ventana.setLayout(contenedor)
ventana.show()
sys.exit(app.exec())
