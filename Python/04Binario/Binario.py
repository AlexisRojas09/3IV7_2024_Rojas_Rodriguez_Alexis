#Ejercicio, convertir de binario a decimal y de decimal a binario

def decimalabinario(decimal):
    binario = ""
    if decimal == 0:
        binario = "0"
    elif decimal > 0:
        while decimal > 0:
            residuo = decimal % 2
            binario = str(residuo) + binario
            decimal = decimal // 2
    else:
        print("Ingresa un número positivo")
    return binario

def binarioadecimal(binario):
    decimal = 0
    potencia = len(binario) - 1
    for digito in binario:
        if digito == '1':
            decimal += 2 ** potencia
        potencia -= 1
    return decimal

def menu():
    print("Elige una opción:")
    print("A. Convertir de decimal a binario")
    print("B. Convertir de binario a decimal")

menu()
opcion = input("Ingresa la opción: ").upper()
    
if opcion == "A":
    decimal = int(input("Ingresa el número que deseas convertir a binario: "))
    binario = decimalabinario(decimal)
    print("El decimal convertido a binario es: ", binario)

elif opcion == "B":
    binario = input("Ingresa el número binario que deseas convertir a decimal: ")
    decimal = binarioadecimal(binario)
    print("El binario convertido a decimal es: ", decimal)
    
else:
    print("Opción no válida")