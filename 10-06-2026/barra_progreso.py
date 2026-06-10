import sys
from PySide6.QtWidgets import QApplication as app, QWidget as ventana, QProgressBar as barra, QVBoxLayout as contenedor, QPushButton as boton, QLabel as texto

app = app(sys.argv)
ventana = ventana()
contenedor = contenedor()
bar = barra()
bar.setValue(0)
texto = texto("Valor actual: 0 %")
boton1 = boton("Incrementar")
boton2 = boton("Decrementar")

def incrementar():
    valor = bar.value()
    if valor <= 100:
        new_valor = valor + 10
        texto.setText(f"Valor actual: {new_valor} %")
        bar.setValue(new_valor)
        
def decrementar():
    valor = bar.value()
    if valor >= 0:
        new_valor = valor - 10
        texto.setText(f"Valor actual: {new_valor} %")
        bar.setValue(new_valor)
    
boton1.clicked.connect(incrementar)
boton2.clicked.connect(decrementar)

contenedor.addWidget(texto)
contenedor.addWidget(bar)
contenedor.addWidget(boton1)
contenedor.addWidget(boton2)
ventana.setLayout(contenedor)
ventana.show()
sys.exit(app.exec())
