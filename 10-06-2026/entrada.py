import sys
from PySide6.QtWidgets import QApplication as app, QWidget as ventana, QTextEdit as entrada, QLabel as texto, QVBoxLayout as contenedor, QPushButton as boton
from PySide6.QtWidgets import QMessageBox as notificacion

app = app(sys.argv)
ventana = ventana()
contenedor = contenedor()
entrada = entrada()
boton = boton("Enviar texto")

texto = texto("Texto ingresado: ")

def enviar():
    texto.setText(f"Texto ingresado: {entrada.toPlainText()} ")
    notificacion.information(ventana,"Notificaciòn", f"Texto ingresado: {entrada.toPlainText()}")

boton.clicked.connect(enviar)

contenedor.addWidget(texto)
contenedor.addWidget(entrada)
contenedor.addWidget(boton)
ventana.setLayout(contenedor)
ventana.show()
sys.exit(app.exec())
