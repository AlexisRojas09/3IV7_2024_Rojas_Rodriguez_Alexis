def fibonacci(n):
    #Casos base
    if n == 0:
        return 0
    elif n == 1:
        return 1
    #Paso recursivo
    else:
        return fibonacci(n - 1) + fibonacci(n - 2)
    
#Prueba de la función
n = int(input("Introduce un número para calcular el Fibonacci: "))
print(f"El fibonacci de {n} es: {fibonacci(n)}")