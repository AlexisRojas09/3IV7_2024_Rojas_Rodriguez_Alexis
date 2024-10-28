def factorial(n):
    #Caso base: El factorial de 0 o 1 es 1
    if n == 0 or n == 1:
        return 1
    #Paso recursivo n * factorial de (n - 1)
    else:
        return n * factorial(n - 1)

numero = int(input("Introduce un número para calcular su factorial: "))
resultado = factorial(numero)
print(f"El factorial de {numero} es: {resultado}")