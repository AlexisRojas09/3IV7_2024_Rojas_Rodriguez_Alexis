Algoritmo ConversionPies
	Definir pies, pulgadas, yardas, cm, metros Como Real
	
	Escribir "Introduce la medida en pies: "
	Leer pies
	
	Escribir "¿Qué conversión deseas realizar?"
	Escribir "1. Pulgadas"
	Escribir "2. Yardas"
	Escribir "3. Centímetros"
	Escribir "4. Metros"
	
	Leer opcion
		
	Si pies >= 0 Entonces
		Segun opcion Hacer
			1:
				pulgadas <- pies * 12
				Escribir pies, " pies son ", pulgadas, " pulgadas"
				
			2:
				yardas <- pies / 3
				Escribir pies, " pies son ", yardas, " yardas"
				
			3:
				cm <- pies * 12 * 2.54
				Escribir pies, " pies son ", cm, " cm"
				
			4:
				metros <- pies * 12 * 2.54 / 100
				Escribir pies, " pies son ", metros, " metros"
				
			De Otro Modo
				Escribir "Opción no válida."
		FinSegun
	SiNo
		Escribir "No existen medidas negativas"
	FinSi
FinAlgoritmo
