Algoritmo Sumatoria_1_10
		Definir i, suma, opcion Como Entero
		Repetir
			suma = 0
			i = 0
			Para i = 1 Hasta 10 Con Paso 1 Hacer
				suma = suma + i
			FinPara
			Escribir "La sumatoria de los n�meros del 1 al 10 es: ", suma
			
			Escribir "�Deseas repetir el algoritmo? (1 = S�, 0 = No)"
			Leer opcion
		Hasta Que opcion = 0
FinAlgoritmo
