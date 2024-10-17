<<<<<<< HEAD
Algoritmo ConversionPies
    Definir pies, pulgadas, yardas, cm, metros Como Real
    Definir opcion, continuar Como Entero
	
    Repetir
        Escribir "Introduce la medida en pies: "
        Leer pies
		
        Si pies >= 0 Entonces
            Escribir "¿Qué conversión deseas realizar?"
            Escribir "1. Pulgadas"
            Escribir "2. Yardas"
            Escribir "3. Centímetros"
            Escribir "4. Metros"
            Leer opcion
			
            Segun opcion Hacer
                Caso 1:
                    pulgadas <- pies * 12
                    Escribir pies, " pies son ", pulgadas, " pulgadas."
                Caso 2:
                    yardas <- pies / 3
                    Escribir pies, " pies son ", yardas, " yardas."
                Caso 3:
                    cm <- pies * 12 * 2.54
                    Escribir pies, " pies son ", cm, " cm."
                Caso 4:
                    metros <- pies * 12 * 2.54 / 100
                    Escribir pies, " pies son ", metros, " metros."
                De Otro Modo:
                    Escribir "Opción no válida."
            FinSegun
        SiNo
            Escribir "No existen medidas negativas."
        FinSi
		
        Escribir "¿Deseas repetir el algoritmo? (1 = Sí, 0 = No)"
        Leer continuar
    Hasta Que continuar = 0
FinAlgoritmo
=======
Algoritmo ConversionPies
    Definir pies, pulgadas, yardas, cm, metros Como Real
    Definir opcion, continuar Como Entero
	
    Repetir
        Escribir "Introduce la medida en pies: "
        Leer pies
		
        Si pies >= 0 Entonces
            Escribir "¿Qué conversión deseas realizar?"
            Escribir "1. Pulgadas"
            Escribir "2. Yardas"
            Escribir "3. Centímetros"
            Escribir "4. Metros"
            Leer opcion
			
            Segun opcion Hacer
                Caso 1:
                    pulgadas <- pies * 12
                    Escribir pies, " pies son ", pulgadas, " pulgadas."
                Caso 2:
                    yardas <- pies / 3
                    Escribir pies, " pies son ", yardas, " yardas."
                Caso 3:
                    cm <- pies * 12 * 2.54
                    Escribir pies, " pies son ", cm, " cm."
                Caso 4:
                    metros <- pies * 12 * 2.54 / 100
                    Escribir pies, " pies son ", metros, " metros."
                De Otro Modo:
                    Escribir "Opción no válida."
            FinSegun
        SiNo
            Escribir "No existen medidas negativas."
        FinSi
		
        Escribir "¿Deseas repetir el algoritmo? (1 = Sí, 0 = No)"
        Leer continuar
    Hasta Que continuar = 0
FinAlgoritmo
>>>>>>> af3c7ce6cf7340c2c820ba85dc3cf19deab9121f
