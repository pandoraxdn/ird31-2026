import sys
from PySide6.QtWidgets import QApplication as App
from PySide6.QtWidgets import QWidget as Ventana
from PySide6.QtWidgets import QHBoxLayout as ContenedorH
from PySide6.QtWidgets import QVBoxLayout as ContenedorV
from PySide6.QtWidgets import QPushButton as Boton

app = App()
ventana = Ventana()
ventana.setWindowTitle("Formulario de Usuarios")
ventana.resize(400,300)
contenedor_principal = ContenedorV()

# izquierda, arriba, derecha, abajo
contenedor_principal.setContentMargins(20,20,20,20) 
contenedor_sub = ContenedorH()

contenedor_sub.addWidget(Boton("1"))
contenedor_sub.addWidget(Boton("2"))

info = ContenedorH()
info.addWidget(Boton("3"))
info.addWidget(Boton("4"))

contenedor_principal.addLayout(contenedor_sub)
contenedor_principal.addLayout(info)

ventana.setLayout(contenedor_principal)
ventana.show()
sys.exit(app.exec())





