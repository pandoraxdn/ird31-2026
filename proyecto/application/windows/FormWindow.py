import os
from PySide6.QtCore import QDate
from PySide6.QtWidgets import (
    QWidget as Ventana,
    QLabel as Texto,
    QLineEdit as Entrada,
    QTextEdit as EntradaII,
    QPushButton as Boton,
    QVBoxLayout as ContenedorV,
    QComboBox as Combo,
    QSpinBox as Spin,
    QDateEdit as Calendario,
)

class FormWindow(Ventana):
    def __init__(self):
        super().__init__()
        self.configurar_ventana()
        self.crear_interfaz()
        self.cargar_estilos()
    
    def configurar_ventana(self):
        self.setWindowTitle("Formulario de Usuarios")
        self.resize(700,800)

    def crear_interfaz(self):
        contenedor = ContenedorV()
        contenedor.setSpacing(18)


        titulo = Texto("Nuevo Usuario")
        titulo.setObjectName("titulo")

        nombre = Entrada()
        nombre.setPlaceholderText("Nombre del Usuario")

        correo = Entrada()
        correo.setPlaceholderText("Correo del Usuario")

        puesto = Combo()
        puesto.addItems([
           "Administrador",
           "Programador",
           "Diseñador",
           "Soporte",
           "Obrero",
           "Admnistrativo"
        ])

        edad = Spin()
        edad.setRange(18,70)

        fecha = Calendario()
        fecha.setDate( QDate.currentDate() )

        responsabilidades = EntradaII()
        responsabilidades.setPlaceholderText("Responsabilidades")

        boton = Boton("Guardar")
        boton2 = Boton("Prueba")
        boton2.setObjectName("boton")

        contenedor.addWidget(titulo)
        contenedor.addWidget(nombre)
        contenedor.addWidget(correo)
        contenedor.addWidget(puesto)
        contenedor.addWidget(edad)
        contenedor.addWidget(fecha)
        contenedor.addWidget(responsabilidades)
        contenedor.addWidget(boton)
        contenedor.addWidget(boton2)

        self.setLayout(contenedor)

    def cargar_estilos(self):
        carpetaActual = os.path.dirname(os.path.abspath(__file__))
        fileQss = os.path.join(carpetaActual,'..','styles','form.qss')
        with open(fileQss,"r",encoding="utf-8") as archivo:
            self.setStyleSheet(archivo.read())


