Algoritmo Primos
		Escribir "Ingrese un n�mero para saber si un n�mero es primo"
		Leer numerito
		Si numerito < 2 Entonces
			Escribir "N�mero no v�lido, los negativos no son primos"
		SiNo
			Si numerito = 2 Entonces
				Escribir "Tu n�mero es primo y par"
			SiNo
				primo <- Verdadero
				Para i <- 2 Hasta (numerito - 1) Hacer
					Si (numerito%i = 0) Entonces
						primo <- falso
					Fin Si
				Fin Para
				Si primo es Verdadero Entonces
					Escribir "Es un n�mero primo"
				SiNo
					Si primo es falso Entonces
					Escribir "No es n�mero primo"
				Fin Si
			Fin Si
		Fin Si
	Fin Si
FinAlgoritmo
