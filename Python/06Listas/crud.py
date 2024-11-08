#derivado a que es necesario poder almacenar diferentes fuentes de datos, en python se utiliza la variable diccionario
#un diccionario es capaz de almacenar diferentes tipos de datos en formato de lista
import tkinter as tk
from tkinter import messagebox, simpledialog
#El examen debe de tener al menos 8 elementos de la lista que deseen guardar. Debe de poseer elementos de diálogo y mensajes de salida con tkinter. Debe implementar al menos 30 diferentes elementos y debe verse una interfaz mediante la cual los imprima en formato de lista.
#para poder guardar los datos correspondientes de la lista es necesario utilizar un archivo, para ello vamos a ocupar la libreria os
import os
#vamos a declarar un archivo, tenemos dos opciones, una ruta dinámica o una ruta estátita, eso queda de tarea
DIRECTORIO = "C:/Users/alror/OneDrive/Desktop/3IV7_2024_Rojas_Rodriguez_Alexis/Python/06Listas"
ARCHIVO = os.path.join(DIRECTORIO, "alumnos.txt")

#primero vamos a crear una lista de alumnos
alumnos = []

#vamos a crear una función para cargar datos
def cargar_datos():
    #verificar si existe el archivo
    if os.path.exists(ARCHIVO):
        with open(ARCHIVO, "r") as f:
            for linea in f:
                #que voy a obtener en cada linea
                #strip es un método de cadena que nos ayuda a eliminar espacios al inicio y final de una cadena " habia   "
                partes = linea.strip().split(",")
                if len(partes) >= 6:
                    boleta = partes[0]
                    nombre = partes[1]
                    appat = partes[2]
                    apmat = partes[3]
                    fecnac = partes[4]
                    calificaciones = list(map(float, partes[5:]))
                    alumno = {
                        "boleta": boleta,
                        "nombre": nombre,
                        "apellido_paterno": appat,
                        "apellido_materno": apmat,
                        "fecha_nacimiento": fecnac,
                        "calificaciones": calificaciones
                    }
                    alumnos.append(alumno)

cargar_datos()
#vamos a crear la función para guardar los datos
def guardar_datos():
    with open(ARCHIVO, "w") as f:
        for alumno in alumnos:
            f.write(f"{alumno['boleta']}, {alumno['nombre']}, {alumno['apellido_paterno']}, {alumno['apellido_materno']}, {alumno['fecha_nacimiento']}, {','.join(map(str, alumno['calificaciones']))}\n")
#vamos a crear una función que se encargue de registrar a un alumno

def registar_alumno():
    boleta = simpledialog.askstring("Entrada", "Ingresa la boleta del alumno: ") 
    nombre = simpledialog.askstring("Entrada","Ingresa el nombre del alumno: ")
    appat = simpledialog.askstring("Entrada","Ingresa el apellido paterno del alumno: ")
    apmat = simpledialog.askstring("Entrada","Ingresa el apellido materno del alumno: ")
    fecnac = simpledialog.askstring("Entrada","Ingresa la fecha de nacimiento (dd/mm/aaaa) del alumno: ")

    calificaciones = []
    #Vamos a solicidar 3 calificaciones
    for i in range(1, 4):
        calificacionparcial = float(simpledialog.askstring("Entrada", "Ingrese la calificación del parcial: "))
        calificaciones.append(calificacionparcial)

    #defino al alumno
    alumno = {
        "boleta": boleta,
        "nombre": nombre,
        "apellido_paterno": appat,
        "apellido_materno": apmat,
        "fecha_nacimiento": fecnac,
        "calificaciones": calificaciones
    }

    alumnos.append(alumno)
    #aqui tengo que mandar a llamar a 
    guardar_datos()
    messagebox.showinfo("Exito", "El alumno se registró exitosamente")

#funcion para consultar los datos del arreglo de alumnos(lista)
def consultar_alumnos():
    if not alumnos:
        messagebox.showinfo("Sin alumnos", "No hay alumnos :(")
    else:
        consulta = ""
        for alumno in alumnos:
            consulta += f"Bolta: {alumno['boleta']}, Nombre: {alumno['nombre']} {alumno['apellido_paterno']} {alumno['apellido_materno']}, Fecha de Nacimiento: {alumno['fecha_nacimiento']}, Calificaciones: {alumno['calificaciones']} \n"
        messagebox.showinfo("Lista de Alumnos", consulta)

#funcion para buscar y editar por la boleta
def editar_alumno():
    boleta = simpledialog.askstring("Entrada", "Ingrese la boleta del alumno que desea editar: ")
    for alumno in alumnos:
        if alumno['boleta'] == boleta:
            alumno['nombre'] = simpledialog.askstring("Entrada", "Ingresa el nuevo nombre o presiona ENTER para mantener el actual: ") or alumno ['nombre']
            alumno['apellido_paterno'] = simpledialog.askstring("Entrada", "Ingresa el nuevo apellido paterno o presiona ENTER para mantener el actual: ") or alumno ['apellido_paterno']
            alumno['apellido_materno'] = simpledialog.askstring("Entrada", "Ingresa el nuevo apellido materno o presiona ENTER para mantener el actual: ") or alumno ['apellido_materno']
            alumno['fecha_nacimiento'] = simpledialog.askstring("Entrada", "Ingresa la nueva fecha de nacimiento o presiona ENTER para mantener la actual: ") or alumno ['fecha_nacimiento']
            #editamos las calificaciones
            for i in range(3):
                nueva_calificacion = simpledialog.askstring("Entrada", "Ingresa la nueva calificacion o presiona ENTER para mantener la actual: ")
                if nueva_calificacion:
                    alumno['calificaciones'][i] = float(nueva_calificacion)
    messagebox.showinfo("Sin alumnos", "No hay más alumnos")
    return

def eliminar_alumno():
    boleta = simpledialog.askstring("Entrada", "Ingresa la boleta del alumno que deseas eliminar:")
    for alumno in alumnos:
        if alumno['boleta'] == boleta:
            alumnos.remove(alumno)
            messagebox.showinfo("Exito", "El alumno se eliminó exitosamente")
            return
    messagebox.showwarning("Error", "No se encontró un alumno con esa boleta")


#vamos a crear un menú
def main():
    while True:
        opcion = simpledialog.askinteger("Menu de gestión de próximos extras", "Selecciona una opción:\n 1. Registrar alumno\n 2. Consultar lista de alumnos\n 3. Editar alumno\n 4. Eliminar alumno\n 5. Salir")

        if opcion == 1:
            registar_alumno()
        elif opcion == 2:
            consultar_alumnos()
        elif opcion == 3:
            editar_alumno()
        elif opcion == 4:
            eliminar_alumno()
        elif opcion == 5:
            break
        else:
            messagebox.showwarning("Error", "Opción no válida")

root = tk.Tk()
root.withdraw()

main()

root.mainloop()