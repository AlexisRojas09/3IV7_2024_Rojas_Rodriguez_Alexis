import tkinter as tk
from tkinter import messagebox, simpledialog, Toplevel, ttk
import os

DIRECTORIO = "C:/Users/alror/OneDrive/Desktop/3IV7_2024_Rojas_Rodriguez_Alexis/Python/Examen"
ARCHIVO = os.path.join(DIRECTORIO, "autos.txt")

# Lista inicial de autos
autos = []

#Función para cargar datos de autos.txt
def cargar_datos():
    if os.path.exists(ARCHIVO):
        with open(ARCHIVO, "r") as f:
            for linea in f:
                partes = linea.strip().split(",")
                if len(partes) >= 8:
                    placa = partes[0]
                    marca = partes[1]
                    modelo = partes[2]
                    año = partes[3]
                    motor = partes[4]
                    caballos = partes[5]
                    traccion = partes[6]
                    aceleracion = partes[7]
                    auto = {
                        "Placa": placa,
                        "Marca": marca,
                        "Modelo": modelo,
                        "Año": año,
                        "Motor": motor,
                        "Caballos de fuerza": caballos,
                        "Tracción": traccion,
                        "Aceleración (0-100 Km/h)": aceleracion
                    }
                    autos.append(auto)

cargar_datos()

#Función para guardar los datos
def guardar_datos():
    with open(ARCHIVO, "w") as f:
        for auto in autos:
            f.write(f"{auto['Placa']}, {auto['Marca']}, {auto['Modelo']}, {auto['Año']}, {auto['Motor']}, {auto['Caballos de fuerza']}, {auto['Tracción']}, {auto['Aceleración (0-100 Km/h)']}\n")

#Función para registrar un auto
def registrar_auto():
    ventana.withdraw()
    placa = simpledialog.askstring("Entrada", "Ingresa la placa del auto:")
    marca = simpledialog.askstring("Entrada", "Ingresa la marca del auto:")
    modelo = simpledialog.askstring("Entrada", "Ingresa el modelo del auto:")
    año = simpledialog.askinteger("Entrada", "Ingresa el año del auto:")
    motor = simpledialog.askstring("Entrada", "Ingresa el motor del auto:")
    caballos = simpledialog.askinteger("Entrada", "Ingresa los caballos de fuerza del auto:")
    traccion = simpledialog.askstring("Entrada", "Ingresa la tracción del auto:")
    aceleracion = simpledialog.askstring("Entrada", "Ingresa la aceleración (0-100 Km/h) del auto:")
    
    auto = {
        "Placa": placa,
        "Marca": marca,
        "Modelo": modelo,
        "Año": año,
        "Motor": motor,
        "Caballos de fuerza": caballos,
        "Tracción": traccion,
        "Aceleración (0-100 Km/h)": aceleracion
    }

    autos.append(auto)
    guardar_datos()
    messagebox.showinfo("Exito", "El auto se registró exitosamente")
    ventana.deiconify()

# Función para consultar todos los autos
def consultar_autos():
    if not autos:
        messagebox.showinfo("Sin autos", "No hay autos registrados")
    else:
        # Crear una nueva ventana para la tabla
        ventana_tabla = Toplevel(ventana)
        ventana_tabla.title("Lista de Autos")
        ventana_tabla.geometry("1200x600")

        # Crear un Treeview para mostrar los autos en formato de tabla
        columnas = ("Placa", "Marca", "Modelo", "Año", "Motor", "Caballos de fuerza", "Tracción", "Aceleración (0-100 Km/h)")
        tabla = ttk.Treeview(ventana_tabla, columns=columnas, show="headings")
        
        # Configurar encabezados
        for columna in columnas:
            tabla.heading(columna, text=columna)
            tabla.column(columna, width=100)

        # Insertar datos de los autos en la tabla
        for auto in autos:
            tabla.insert("", tk.END, values=(auto["Placa"], auto["Marca"], auto["Modelo"], auto["Año"], auto["Motor"], auto["Caballos de fuerza"], auto["Tracción"], auto["Aceleración (0-100 Km/h)"]))

        tabla.pack(fill=tk.BOTH, expand=True, padx=20, pady=20)

#Función para buscar auto por placa
def buscar_auto():
    ventana.withdraw()
    placa_buscar = simpledialog.askstring("Entrada", "Ingresa la placa del auto que deseas buscar:")
    
    auto_encontrado = None
    for auto in autos:
        if auto['Placa'] == placa_buscar:
            auto_encontrado = auto
            break

    if auto_encontrado:
        ventana_tabla = Toplevel(ventana)
        ventana_tabla.title("Detalles del Auto")
        ventana_tabla.geometry("1200x600")
        
        columnas = ("Placa", "Marca", "Modelo", "Año", "Motor", "Caballos de fuerza", "Tracción", "Aceleración (0-100 Km/h)")
        tabla = ttk.Treeview(ventana_tabla, columns=columnas, show="headings")
        
        for columna in columnas:
            tabla.heading(columna, text=columna)
            tabla.column(columna, width=100)
        
        tabla.insert("", tk.END, values=(auto_encontrado["Placa"], auto_encontrado["Marca"], auto_encontrado["Modelo"], auto_encontrado["Año"], auto_encontrado["Motor"], auto_encontrado["Caballos de fuerza"], auto_encontrado["Tracción"], auto_encontrado["Aceleración (0-100 Km/h)"]))

        tabla.pack(fill=tk.BOTH, expand=True, padx=20, pady=20)
        ventana.deiconify()
    else:
        messagebox.showwarning("Auto no encontrado", "No se encontró un auto con esa placa.") 
        ventana.deiconify()

# Función para editar un auto por placa
def editar_auto():
    ventana.withdraw()
    placa = simpledialog.askstring("Entrada", "Ingresa la placa del auto que deseas editar:")
    for auto in autos:
        if auto['Placa'] == placa:
            auto['Marca'] = simpledialog.askstring("Entrada", "Ingresa la nueva marca o presiona ENTER para mantener la actual:") or auto['Marca']
            auto['Modelo'] = simpledialog.askstring("Entrada", "Ingresa el nuevo modelo o presiona ENTER para mantener el actual:") or auto['Modelo']
            auto['Año'] = simpledialog.askstring("Entrada", "Ingresa el nuevo año o presiona ENTER para mantener el actual:") or auto['Año']
            auto['Motor'] = simpledialog.askstring("Entrada", "Ingresa el nuevo motor o presiona ENTER para mantener el actual:") or auto['Motor']
            auto['Caballos de fuerza'] = simpledialog.askstring("Entrada", "Ingresa los nuevos caballos de fuerza o presiona ENTER para mantener los actuales:") or auto['Caballos de fuerza']
            auto['Tracción'] = simpledialog.askstring("Entrada", "Ingresa la nueva tracción o presiona ENTER para mantener la actual:") or auto['Tracción']
            auto['Aceleración (0-100 Km/h)'] = simpledialog.askstring("Entrada", "Ingresa la nueva aceleración o presiona ENTER para mantener la actual:") or auto['Aceleración (0-100 Km/h)']
            messagebox.showinfo("Éxito", "El auto se actualizó correctamente")
            ventana.deiconify()
            return
    messagebox.showwarning("Error", "No se encontró un auto con esa placa")
    ventana.deiconify()

# Función para eliminar un auto por placa
def eliminar_auto():
    ventana.withdraw()
    placa = simpledialog.askstring("Entrada", "Ingresa la placa del auto que deseas eliminar:")
    for auto in autos:
        if auto['Placa'] == placa:
            autos.remove(auto)
            guardar_datos()
            messagebox.showinfo("Exito", "El auto se eliminó exitosamente")
            ventana.deiconify()
            return
    messagebox.showwarning("Error", "No se encontró un auto con esa placa")
    ventana.deiconify()

# Menú principal
ventana = tk.Tk()
ventana.title("Autos")
ventana.geometry("1000x500")

etiqueta_seleccionar = tk.Label(ventana, text="LISTA DE AUTOS\n\nSelecciona una opción\n", font = ("Arial", 20))
etiqueta_seleccionar.pack(pady=10)

boton1 = tk.Button(ventana, text = "Registrar Auto", command = registrar_auto)
boton1.pack(pady=5)

boton2 = tk.Button(ventana, text = "Consultar Autos", command = consultar_autos)
boton2.pack(pady=5)

boton3 = tk.Button(ventana, text="Buscar Auto Por Placa", command = buscar_auto)
boton3.pack(pady=5)

boton4 = tk.Button(ventana, text = "Editar Auto", command = editar_auto)
boton4.pack(pady=5)

boton5 = tk.Button(ventana, text = "Eliminar Auto", command = eliminar_auto)
boton5.pack(pady=5)

boton6 = tk.Button(ventana, text = "Salir", command = exit)
boton6.pack(pady=5)

ventana.mainloop()