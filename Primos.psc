Algoritmo Primos
		Escribir "Ingrese un número para saber si un número es primo"
		Leer numerito
		Si numerito < 2 Entonces
			Escribir "Número no válido, los negativos no son primos"
		SiNo
			Si numerito = 2 Entonces
				Escribir "Tu número es primo y par"
			SiNo
				primo <- Verdadero
				Para i <- 2 Hasta (numerito - 1) Hacer
					Si (numerito%i = 0) Entonces
						primo <- falso
					Fin Si
				Fin Para
				Si primo es Verdadero Entonces
					Escribir "Es un número primo"
				SiNo
					Si primo es falso Entonces
					Escribir "No es número primo"
				Fin Si
			Fin Si
		Fin Si
	Fin Si
FinAlgoritmo
