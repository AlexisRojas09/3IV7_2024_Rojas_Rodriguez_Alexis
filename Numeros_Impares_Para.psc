Algoritmo Numeros_Impares_Para
		Definir i, opcion Como Entero
		Repetir
			Para i = 1 Hasta 100 Con Paso 1 Hacer
				Si i%2 <> 0 Entonces
					Escribir i
				FinSi
			FinPara
			Escribir "¿Deseas repetir el algoritmo? (1 = Sí, 0 = No)"
			Leer opcion
		Hasta Que opcion = 0
FinAlgoritmo
