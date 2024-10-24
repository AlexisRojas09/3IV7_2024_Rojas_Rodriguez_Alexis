def ingresar_matriz3():
    matriz = []
    print("Introduce los valores de la matriz 3 x 3")
    for i in range(3):
        fila = []
        for j in range(3):
            valor = float(input("Elemento: [{i + 1}][{j + 1}]: "))
            fila.append(valor)
        matriz.append(fila)
    return matriz

def imprimir_matriz3(matriz):
    for fila in matriz:
        print(fila)

def ingresar_matriz5():
    matriz = []
    print("Introduce los valores de la matriz 5 x 5")
    for i in range(5):
        fila = []
        for j in range(5):
            valor = float(input("Elemento: [{i + 1}][{j + 1}]: "))
            fila.append(valor)
        matriz.append(fila)
    return matriz

def imprimir_matriz5(matriz):
    for fila in matriz:
        print(fila)

def transponer_matriz(matriz):
    transpuesta = []
    filas = len(matriz)
    columnas = len(matriz[0])
    for i in range(columnas):
        fila_transpuesta = []
        for j in range(filas):
            fila_transpuesta.append(matriz[j][i])
        transpuesta.append(fila_transpuesta)
    return transpuesta

def menu():
    print("Elige qué matrices vas a ingresar: ")
    print("A. 3 X 3")
    print("B. 5 x 5")

#programa principal
menu()
opcion = input("Introduce la opción: ").upper()

if opcion == "A":
    print("Matriz original: ")
    matriz = ingresar_matriz3()
    imprimir_matriz3(matriz)
    print("Matriz con trasposición: ")
    transpuesta = transponer_matriz(matriz)
    imprimir_matriz3(transpuesta)

elif opcion == "B":
    print("Matriz original: ")
    matriz = ingresar_matriz5()
    imprimir_matriz5(matriz)
    print("Matriz con trasposición: ")
    transpuesta = transponer_matriz(matriz)
    imprimir_matriz5(transpuesta)

else:
    print("Ingrese una opción válida")