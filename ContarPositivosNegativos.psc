Algoritmo ContarPositivosNegativos
	Definir num, positivos, negativos, n Como Entero
	positivos <- 0
	negativos <- 0
	
	Escribir "�Cu�ntos n�meros deseas introducir?"
	Leer n
	
	Para i <- 1 Hasta n Hacer
		Escribir "Introduce un n�mero: "
		Leer num
		Si num > 0 Entonces
			positivos <- positivos + 1
		SiNo
			Si num < 0 Entonces
				negativos <- negativos + 1
			SiNo
			FinSi
		FinSi
	Fin Para
	
	Escribir "Cantidad de n�meros positivos: ", positivos
	Escribir "Cantidad de n�meros negativos: ", negativos
FinAlgoritmo
