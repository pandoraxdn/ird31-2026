import sys
from PySide6.QtWidgets import QApplication as App
from PySide6.QtWidgets import QWidget as Ventana
from PySide6.QtWidgets import QGridLayout as Grid
from PySide6.QtWidgets import QPushButton as Boton

app = App()
ventana = Ventana()
ventana.setWindowTitle("Formulario de Usuarios")
ventana.resize(400,300)
grid = Grid()

grid.addWidget(Boton("(0,0)"),0,0)
grid.addWidget(Boton("(0,1)"),0,1)
grid.addWidget(Boton("(1,0)"),1,0)
grid.addWidget(Boton("(1,1)"),1,1)

ventana.setLayout(grid)
ventana.show()
sys.exit(app.exec())


