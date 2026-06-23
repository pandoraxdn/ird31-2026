from PySide6.QtCore import Qt
from PySide6.QtWidgets import (
    QWidget as Ventana,
    QLabel as Texto,
    QPushButton as Boton,
    QLineEdit as Entrada,
    QVBoxLayout as ContenedorV,
    QFrame as Frame,
    QCheckBox as Check
)

class LoginWindow(Ventana):
    def __init__(self):
        super().__init__()
        self.configurar_ventana()
        self.crear_interfaz()
        self.cargar_estilos()

    def configurar_ventana(self):
        self.setWindowTitle("Sistema Empresarial")
        self.resize(600,400)

    def crear_interfaz(self):
        contenedor_principal = ContenedorV()
        contenedor_principal.setContentsMargins(20,20,20,20)
        contenedor_principal.setSpacing(25)

        tarjeta = Frame()
        tarjeta.setObjectName("tarjeta")

        contenedor_tarjeta = ContenedorV()
        contenedor_tarjeta.setContentsMargins(40,40,40,40)
        contenedor_tarjeta.setSpacing(20)
        
        logo = Texto("🖥️")
        subtitulo = Texto("Ingrese Credenciales")
        correo = Entrada()
        correo.setPlaceholderText("Correo Electronico")
        password = Entrada()
        password.setPlaceholderText("Contraseña")
        recordar = Check("Recordar contraseña")
        boton = Boton("Iniciar Sesión")

        contenedor_tarjeta.addWidget(logo)
        contenedor_tarjeta.addWidget(subtitulo)
        contenedor_tarjeta.addWidget(correo)
        contenedor_tarjeta.addWidget(password)
        contenedor_tarjeta.addWidget(recordar)
        contenedor_tarjeta.addWidget(boton)

        contenedor_principal.addLayout(contenedor_tarjeta)
        self.setLayout(contenedor_principal)

    def cargar_estilos(self):
        with open("styles/login.qss","r",encoding="utf-8") as archivo:
            self.setStyleSheet(archivo.read())



