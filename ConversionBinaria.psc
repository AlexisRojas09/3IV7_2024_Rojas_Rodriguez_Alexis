Algoritmo ConversionBinaria
	Definir n, residuo Como Entero
	Definir binario Como Texto
	
	//el binario lo tengo que concatenar
	binario = ""
	
	Escribir "Ingresa el n�mero que deseas convertir"
	Leer n
	
	Si n == 0 Entonces
		binario = "0"
		Escribir "El binario es: ", binario
	SiNo
	Si n >= 0 Entonces
		Mientras n > 0 Hacer
			residuo = n%2
			//tengo que ir armando el binario
			nuevobinario <- ConvertirATexto(residuo)
			//concatenar los elementos de texto
			binario = nuevobinario + binario
			n = Trunc(n/2)
		Fin Mientras
		Escribir "El binario es: ", binario
		//si el n�mero es 0
		SiNo
			Escribir "Ingresa un n�mero positivo"
		FinSi
	FinSi
FinAlgoritmo
