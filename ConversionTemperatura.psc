Algoritmo ConversionTemperatura
    Definir f, c, k, r Como Real
    Definir opcion, continuar Como Entero
	
    Repetir
        Escribir "Introduce la temperatura que ingresarás:"
        Escribir "1. Fahrenheit"
        Escribir "2. Celsius"
        Escribir "3. Kelvin"
        Escribir "4. Rankine"
        Leer opcion
		
        Segun opcion Hacer
            Caso 1:
                Escribir "Introduce la temperatura en grados Fahrenheit: "
                Leer f
                Escribir "¿Qué conversión deseas realizar?"
                Escribir "1. A Celsius"
                Escribir "2. A Kelvin"
                Escribir "3. A Rankine"
                Leer opcion
                Segun opcion Hacer
                    Caso 1:
                        c <- (f - 32) * 5 / 9
                        Escribir f, " Fahrenheit son ", c, " Celsius."
                    Caso 2:
                        k <- (f - 32) * 5 / 9 + 273.15
                        Escribir f, " Fahrenheit son ", k, " Kelvin."
                    Caso 3:
                        r <- f + 459.67
                        Escribir f, " Fahrenheit son ", r, " Rankine."
                    De Otro Modo:
                        Escribir "Opción no válida."
                FinSegun
            Caso 2:
                Escribir "Introduce la temperatura en grados Celsius: "
                Leer c
                Escribir "¿Qué conversión deseas realizar?"
                Escribir "1. A Fahrenheit"
                Escribir "2. A Kelvin"
                Escribir "3. A Rankine"
                Leer opcion
                Segun opcion Hacer
                    Caso 1:
                        f <- (c * 9 / 5) + 32
                        Escribir c, " Celsius son ", f, " Fahrenheit."
                    Caso 2:
                        k <- c + 273.15
                        Escribir c, " Celsius son ", k, " Kelvin."
                    Caso 3:
                        r <- (c * 9 / 5) + 491.67
                        Escribir c, " Celsius son ", r, " Rankine."
                    De Otro Modo:
                        Escribir "Opción no válida."
                FinSegun
            Caso 3:
                Escribir "Introduce la temperatura en grados Kelvin: "
                Leer k
                Escribir "¿Qué conversión deseas realizar?"
                Escribir "1. A Celsius"
                Escribir "2. A Fahrenheit"
                Escribir "3. A Rankine"
                Leer opcion
                Segun opcion Hacer
                    Caso 1:
                        c <- k - 273.15
                        Escribir k, " Kelvin son ", c, " Celsius."
                    Caso 2:
                        f <- (k - 273.15) * 9 / 5 + 32
                        Escribir k, " Kelvin son ", f, " Fahrenheit."
                    Caso 3:
                        r <- k * 1.8
                        Escribir k, " Kelvin son ", r, " Rankine."
                    De Otro Modo:
                        Escribir "Opción no válida."
                FinSegun
            Caso 4:
                Escribir "Introduce la temperatura en grados Rankine: "
                Leer r
                Escribir "¿Qué conversión deseas realizar?"
                Escribir "1. A Celsius"
                Escribir "2. A Fahrenheit"
                Escribir "3. A Kelvin"
                Leer opcion
                Segun opcion Hacer
                    Caso 1:
                        c <- (r - 491.67) * 5 / 9
                        Escribir r, " Rankine son ", c, " Celsius."
                    Caso 2:
                        f <- r - 459.67
                        Escribir r, " Rankine son ", f, " Fahrenheit."
                    Caso 3:
                        k <- r / 1.8
                        Escribir r, " Rankine son ", k, " Kelvin."
                    De Otro Modo:
                        Escribir "Opción no válida."
                FinSegun
            De Otro Modo:
                Escribir "Opción no válida."
        FinSegun
		
        Escribir "¿Deseas repetir el algoritmo? (1 = Sí, 0 = No)"
        Leer continuar
    Hasta Que continuar = 0
FinAlgoritmo