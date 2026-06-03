import tkinter as tk

# Crear una ventana
ventana = tk.Tk()

# Definir el tamaño de la ventana
ventana.geometry("800x600")

# Definir titulo de ventana
ventana.title("Mi primer ventana")

# Registrar mi primer texto
etiqueta = tk.Label(
    ventana,        # Donde se va a renderizar
    text="Mi primer texto", # Que texto va a mostrar
    bg="blue",              # Fondo del texto
    fg="white",             # Color de letra del texto
    font=("Arial",40),      # Fuente y tamaño del texto
    width=20,               # Margen de ancho
    height=2,               # Margen de alto
)
etiqueta.pack()

def saludar():
    print("Hola")

button = tk.Button(
    ventana,    # Donde se va a renderizar
    text="Saludar",     # Texto del boton
    command=saludar,    # Que va a ejecutar
)
button.pack()

entrada1 = tk.Entry(ventana, width=40)
entrada1.pack()

entrada2 = tk.Entry(ventana, width=40)
entrada2.pack()

def sumar():
    valor1 = int(entrada1.get())
    valor2 = int(entrada2.get())
    print(valor1+valor2)

button = tk.Button(
    ventana,    # Donde se va a renderizar
    text="Sumar",     # Texto del boton
    command=sumar,    # Que va a ejecutar
)
button.pack()

ventana.mainloop()
