<<<<<<< HEAD
Algoritmo ContarPositivosNegativos
	Definir num, positivos, negativos, n Como Entero
Repetir
	positivos <- 0
	negativos <- 0
	
	Escribir "¿Cuántos números deseas introducir?"
	Leer n
	
	Para i <- 1 Hasta n Hacer
		Escribir "Introduce un número: "
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
	
	Escribir "Cantidad de números positivos: ", positivos
	Escribir "Cantidad de números negativos: ", negativos
	Escribir "¿Deseas repetir el algoritmo? (1 = Sí, 0 = No)"
	Leer opcion
Hasta Que opcion = 0
FinAlgoritmo
=======
Algoritmo ContarPositivosNegativos
	Definir num, positivos, negativos, n Como Entero
Repetir
	positivos <- 0
	negativos <- 0
	
	Escribir "¿Cuántos números deseas introducir?"
	Leer n
	
	Para i <- 1 Hasta n Hacer
		Escribir "Introduce un número: "
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
	
	Escribir "Cantidad de números positivos: ", positivos
	Escribir "Cantidad de números negativos: ", negativos
	Escribir "¿Deseas repetir el algoritmo? (1 = Sí, 0 = No)"
	Leer opcion
Hasta Que opcion = 0
FinAlgoritmo
>>>>>>> af3c7ce6cf7340c2c820ba85dc3cf19deab9121f
