import math

#vamos a crear una función para calcular el área y el perímetro

def rectangulo(base, altura):
    area = base * altura
    perimetro = 2*(base + altura)
    return area, perimetro

def triangulo(base, altura):
    area = (base * altura)/2
    perimetro = lado1 + lado2 + lado3
    return area, perimetro

def esfera(radio):
    volumen = (4/3)*math.pi*radio**3
    return volumen

def menu():
    print("Hola, bienvenido a Python con funciones")
    print("Elige una opción: ")
    print("A. Área y perímetro de un Rectángulo")
    print("B. Área y perímetro de un Triángulo")
    print("C. Volumen de una Esfera")

    #programa
menu()
opcion = input("Introduce la opción a desear:").upper()

if opcion == "A":
    base = float(input("Introduce la base: "))
    altura = float(input("Introduce la altura: "))
    area, perimetro = rectangulo(base, altura)
    print("El área es de: ", area)
    print("El perímetro es de: ", perimetro)

elif opcion == "B":
    base = float(input("Introduce la base: "))
    altura = float(input("Introduce la altura: "))
    lado1 = float(input("Introduce el valor del lado 1: "))
    lado2 = float(input("Introduce el valor del lado 2: "))
    lado3 = float(input("Introduce el valor del lado 3: "))
    area, perimetro = triangulo(base, altura, lado1, lado2, lado3)
    print("El área es de:", area)
    print("El perímetro es de:", perimetro)

elif opcion == "C":
    radio = float(input("Introduce el radio: "))
    volumen = esfera(radio)
    print("El volúmen es de: ", volumen)

else:
    print("Opción no válida")