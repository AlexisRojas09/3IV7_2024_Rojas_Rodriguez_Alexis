import tkinter as tk
from tkinter import messagebox
import time

def burbuja(lista):
    n = len(lista)
    for i in range(n):
        for j in range(0, n-i-1):
            if lista[j] > lista[j + 1]:
                lista[j], lista[j + 1] = lista[j + 1], lista[j]
    return lista

def seleccion_sort(lista):
    n = len(lista)
    for i in range(n):
        min_idx = i
        for j in range(i+1, n):
            if lista[j] < lista[min_idx]:
                min_idx = j
        lista[i], lista[min_idx] = lista[min_idx], lista[i]
    return lista

def insercion(lista):
    for i in range(1, len(lista)):
        key = lista[i]
        j = i-1
        while j >= 0 and key < lista[j]:
            lista[j + 1] = lista[j]
            j -= 1
        lista[j + 1] = key
    return lista

def quick_sort(lista):
    if len(lista) <= 1:
        return lista
    pivote = lista[len(lista)//2]
    izquierda = [x for x in lista if x < pivote]
    medio = [x for x in lista if x == pivote]
    derecha = [x for x in lista if x > pivote]
    return quick_sort(izquierda) + medio + quick_sort(derecha)

def merge(lista):
    if len(lista) > 1:
        mid = len(lista) // 2
        izquierda = lista[:mid]
        derecha = lista[mid:]

        merge(izquierda)
        merge(derecha)

        i = j = k = 0

        while i < len(izquierda) and j < len(derecha):
            if izquierda[i] < derecha[j]:
                lista[k] = izquierda[i]
                i += 1
            else:
                lista[k] = derecha[j]
                j += 1
            k += 1

        while i < len(izquierda):
            lista[k] = izquierda[i]
            i += 1
            k += 1

        while j < len(derecha):
            lista[k] = derecha[j]
            j += 1
            k += 1
    return lista

def ordenar(metodo):
    if not pila:
        messagebox.showerror("Error", "Lista vacía. Ingresa números primero.")
        return
    
    lista_original = pila.copy()
    start_time = time.time()
    if metodo == "burbuja":
        lista_ordenada = burbuja(lista_original)
    elif metodo == "seleccion":
        lista_ordenada = seleccion_sort(lista_original)
    elif metodo == "insercion":
        lista_ordenada = insercion(lista_original)
    elif metodo == "quicksort":
        lista_ordenada = quick_sort(lista_original)
    elif metodo == "merge":
        lista_ordenada = merge(lista_original)
    else:
        return
    end_time = time.time()
    tiempo = "{:.5f}".format(end_time - start_time)

    messagebox.showinfo(
        "Resultado",
        f"Lista original: {pila}\nLista ordenada: {lista_ordenada}\nTiempo de ejecución: {tiempo} segundos"
    )

def agregar_numero():
    try:
        numero = int(entry_numero.get())
        if len(pila) >= 40:
            messagebox.showerror("Error", "La lista ya tiene el máximo de 40 números.")
            return
        pila.append(numero)
        label_pila.config(text=f"Lista actual: {pila}")
        entry_numero.delete(0, tk.END)
    except ValueError:
        messagebox.showerror("Error", "Por favor ingresa un número válido.")

def limpiar():
    global pila
    pila = []
    label_pila.config(text="Lista actual: []")
    entry_numero.delete(0, tk.END)

ventana = tk.Tk()
ventana.title("Ordenamiento de Números")
ventana.geometry("500x600")

pila = []

# Elementos de la interfaz
label_instrucciones = tk.Label(ventana, text="Ingresa números (máximo 40):", font=("Arial", 12))
label_instrucciones.pack(pady=10)

entry_numero = tk.Entry(ventana, font=("Arial", 12))
entry_numero.pack(pady=5)

boton_agregar = tk.Button(ventana, text="Agregar número", command=agregar_numero, font=("Arial", 12))
boton_agregar.pack(pady=5)

boton_limpiar = tk.Button(ventana, text="Limpiar lista", command=limpiar, font=("Arial", 12))
boton_limpiar.pack(pady=5)

label_pila = tk.Label(ventana, text="Lista actual: []", font=("Arial", 12))
label_pila.pack(pady=10)

label_metodos = tk.Label(ventana, text="Selecciona un método de ordenamiento:", font=("Arial", 12))
label_metodos.pack(pady=10)

boton_burbuja = tk.Button(ventana, text="Método Burbuja", command=lambda: ordenar("burbuja"), font=("Arial", 12))
boton_burbuja.pack(pady=5)

boton_seleccion = tk.Button(ventana, text="Método Selección", command=lambda: ordenar("seleccion"), font=("Arial", 12))
boton_seleccion.pack(pady=5)

boton_insercion = tk.Button(ventana, text="Método Inserción", command=lambda: ordenar("insercion"), font=("Arial", 12))
boton_insercion.pack(pady=5)

boton_merge = tk.Button(ventana, text="Merge", command=lambda: ordenar("merge"), font=("Arial", 12))
boton_merge.pack(pady=5)

boton_quicksort = tk.Button(ventana, text="Quick Sort", command=lambda: ordenar("quicksort"), font=("Arial", 12))
boton_quicksort.pack(pady=5)

ventana.mainloop()