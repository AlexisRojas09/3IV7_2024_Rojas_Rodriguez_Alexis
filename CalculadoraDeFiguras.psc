//vamos a crear un programa para calcular areas y perimetros
//pero con el uso de subprocesos

//vamos a crear el subproceso del rectangulo
SubProceso Rectangulo(base, altura)
	Definir area, perimetro Como Real
	area = base * altura
	perimetro = 2 * (base + altura)
	Escribir "El área del rectángulo es: ", area
	Escribir "El perímetro del rectángulo es: ", perimetro
FinSubProceso

//vamos a crear el subproceso del triangulo
SubProceso Triangulo(base, altura, lado1, lado2, lado3)
	Definir area, perimetro Como Real
	area = (base * altura) / 2
	perimetro = lado1 + lado2 + lado3
	Escribir "El área del triángulo es: ", area
	Escribir "El perímetro del triángulo es: ", perimetro
FinSubProceso

SubProceso Trapecio(basemayor, basemenor, altura, lado1, lado2, lado3, lado4)
	Definir area, perimetro Como Real
	area = ((basemayor + basemenor) * altura) / 2
	perimetro = lado1 + lado2 + lado3 + lado4
	Escribir "El área del Trapecio es: ", area
	Escribir "El perímetro del Trapecio es: ", perimetro
FinSubProceso

SubProceso Pentagono(apotema, lado1)
	Definir area, perimetro Como Real
	perimetro = lado1 * 5
	area = (perimetro * apotema) / 2
	Escribir "El área del Pentágono es: ", area
	Escribir "El perímetro del Pentágono es: ", perimetro
FinSubProceso

SubProceso Hexagono(apotema, lado1)
	Definir area, perimetro Como Real
	perimetro = lado1 * 6
	area = (perimetro * apotema) / 2
	Escribir "El área del Hexágono es: ", area
	Escribir "El perímetro del Hexágono es: ", perimetro
FinSubProceso

SubProceso Heptagono(apotema, lado1)
	Definir area, perimetro Como Real
	perimetro = lado1 * 7
	area = (perimetro * apotema) / 2
	Escribir "El área del Heptágono es: ", area
	Escribir "El perímetro del Heptágono es: ", perimetro
FinSubProceso

SubProceso Octagono(apotema, lado1)
	Definir area, perimetro Como Real
	perimetro = lado1 * 8
	area = (perimetro * apotema) / 2
	Escribir "El área del Octágono es: ", area
	Escribir "El perímetro del Octágono es: ", perimetro
FinSubProceso

SubProceso Eneagono(apotema, lado1)
	Definir area, perimetro Como Real
	perimetro = lado1 * 9
	area = (perimetro * apotema) / 2
	Escribir "El área del Eneágono es: ", area
	Escribir "El perímetro del Eneágono es: ", perimetro
FinSubProceso


Algoritmo CalculadoraDeFiguras
	Definir opcion Como Caracter
	Definir continuar Como Real
	Definir base, altura, basemayor, basemenor, apotema, lado1, lado2, lado3, lado4 Como Real
	Repetir
	//vamos a crear el menú
	Escribir "Selecciona una opción: "
	Escribir "A Área y Perímetro del Rectángulo"
	Escribir "B Área y Perímetro del Triángulo"
	Escribir "C Área y Perímetro del Trapecio"
	Escribir "D Área y Perímetro del Pentágono"
	Escribir "E Área y Perímetro del Hexágono"
	Escribir "F Área y Perímetro del Heptágono"
	Escribir "G Área y Perímetro del Octágono"
	Escribir "H Área y Perímetro del Eneágono"
	Leer opcion
	
	Segun opcion hacer
			//caso 1
		Caso "A":
			Escribir "Ingresa la base del rectángulo: "
			Leer base
			Escribir "Ingresa la altura del rectángulo: "
			Leer altura
			Rectangulo(base, altura)
			
			//caso 2
		Caso "B":
			Escribir "Ingresa la base del triángulo: "
			Leer base
			Escribir "Ingresa la altura del triángulo: "
			Leer altura
			Escribir "Ingresa el lado 1 del triángulo: "
			Leer lado1
			Escribir "Ingresa el lado 2 del triángulo: "
			Leer lado2
			Escribir "Ingresa el lado 3 del triángulo: "
			Leer lado3
			Triangulo(base, altura, lado1, lado2, lado3)
			
		Caso "C":
			Escribir "Ingresa la base mayor del trapecio: "
			Leer basemayor
			Escribir "Ingresa la base menor del trapecio: "
			Leer basemenor
			Escribir "Ingresa la altura del trapecio: "
			Leer altura
			Escribir "Ingresa el lado 1 del trapecio: "
			Leer lado1
			Escribir "Ingresa el lado 2 del trapecio: "
			Leer lado2
			Escribir "Ingresa el lado 3 del trapecio: "
			Leer lado3
			Escribir "Ingresa el lado 4 del trapecio: "
			Leer lado4
			Trapecio(basemayor, basemenor, altura, lado1, lado2, lado3, lado4)
			
		Caso "D":
			Escribir "Ingresa el apotema del pentágono: "
			Leer apotema
			Escribir "Ingresa el lado del pentágono: "
			Leer lado1
			Pentagono(apotema, lado1)
			
		Caso "E":
			Escribir "Ingresa el apotema del hexágono: "
			Leer apotema
			Escribir "Ingresa el lado del hexágono: "
			Leer lado1
			Hexagono(apotema, lado1)
			
		Caso "F":
			Escribir "Ingresa el apotema del heptágono: "
			Leer apotema
			Escribir "Ingresa el lado del heptágono: "
			Leer lado1
			Heptagono(apotema, lado1)
			
		Caso "G":
			Escribir "Ingresa el apotema del octágono: "
			Leer apotema
			Escribir "Ingresa el lado del octágono: "
			Leer lado1
			Octagono(apotema, lado1)
			
		Caso "H":
			Escribir "Ingresa el apotema del eneágono: "
			Leer apotema
			Escribir "Ingresa el lado del eneágono: "
			Leer lado1
			Eneagono(apotema, lado1)
			
		De Otro Modo:
			Escribir "Opción no válida"
	FinSegun
	Escribir "¿Deseas repetir el algoritmo? (1 = Sí, 0 = No)"
	Leer continuar
Hasta Que continuar == 0
FinAlgoritmo