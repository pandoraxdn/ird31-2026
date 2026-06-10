import sys
from PySide6.QtWidgets import QApplication as app, QWidget as ventana, QSpinBox as selector, QLabel as texto, QVBoxLayout as contenedor

app = app(sys.argv)
ventana = ventana()
contenedor = contenedor()
spin = selector()
spin.setRange(0,100)

texto = texto("Valor: 0")

spin.valueChanged.connect(lambda numero: texto.setText(f"Valor: {numero}"))

contenedor.addWidget(spin)
contenedor.addWidget(texto)
ventana.setLayout(contenedor)
ventana.show()
sys.exit(app.exec())
