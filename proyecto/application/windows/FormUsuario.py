import os
from re import U
from PySide6.QtCore import QDate
from PySide6.QtWidgets import (
    QWidget as Ventana,
    QLabel as Texto,
    QLineEdit as Entrada,
    QPushButton as Boton,
    QVBoxLayout as ContenedorV,
)
from database.crud_usuario import crear_usuario


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

        def crear():
            dato_nombre = nombre.toPlainText()
            dato_email = email.toPlainText()
            dato_telefono = telefono.toPlainText()
            dato_direccion = direccion.toPlainText()
            dato_fecha_nacimiento = fecha_nacimiento.toPlainText()
            usuario = crear_usuario(
                nombre=dato_nombre,
                email=dato_email,
                telefono=dato_telefono,
                direccion=dato_direccion,
                fecha_nacimiento=dato_fecha_nacimiento
            )
            print(usuario)

        contenedor = ContenedorV()
        contenedor.setSpacing(18)


        titulo = Texto("CRUD Usuarios")
        titulo.setObjectName("titulo")

        nombre = Entrada()
        nombre.setPlaceholderText("Nombre del usuario")

        email = Entrada()
        email.setPlaceholderText("Correo del Usuario")

        direccion = Entrada()
        direccion.setPlaceholderText("Dirección del Usuario")

        telefono = Entrada()
        telefono.setPlaceholderText("Telefeno del Usuario")

        fecha_nacimiento = Entrada()
        fecha_nacimiento.setPlaceholderText("Fecha de nacimiento del Usuario")

        boton = Boton("Guardar")

        boton.clicked.connect(crear)

        contenedor.addWidget(titulo)
        contenedor.addWidget(nombre)
        contenedor.addWidget(email)
        contenedor.addWidget(direccion)
        contenedor.addWidget(telefono)
        contenedor.addWidget(fecha_nacimiento)
        contenedor.addWidget(boton)

        self.setLayout(contenedor)

    def cargar_estilos(self):
        carpetaActual = os.path.dirname(os.path.abspath(__file__))
        fileQss = os.path.join(carpetaActual,'..','styles','form.qss')
        with open(fileQss,"r",encoding="utf-8") as archivo:
            self.setStyleSheet(archivo.read())


