import tkinter as tk

ventana = tk.Tk()

ventana.title("Mi primer app")

ventana.geometry("600x400")

etiqueta = tk.Label(ventana,text="Hola Mundo")

etiqueta.pack()

ventana.mainloop()
