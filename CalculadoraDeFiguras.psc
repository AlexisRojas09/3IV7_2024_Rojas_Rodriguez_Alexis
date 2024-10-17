//vamos a crear un programa para calcular areas y perimetros
//pero con el uso de subprocesos

//vamos a crear el subproceso del rectangulo
SubProceso Rectangulo(base, altura)
	Definir area, perimetro Como Real
	area = base * altura
	perimetro = 2 * (base + altura)
	Escribir "El �rea del rect�ngulo es: ", area
	Escribir "El per�metro del rect�ngulo es: ", perimetro
FinSubProceso

//vamos a crear el subproceso del triangulo
SubProceso Triangulo(base, altura, lado1, lado2, lado3)
	Definir area, perimetro Como Real
	area = (base * altura) / 2
	perimetro = lado1 + lado2 + lado3
	Escribir "El �rea del tri�ngulo es: ", area
	Escribir "El per�metro del tri�ngulo es: ", perimetro
FinSubProceso

SubProceso Trapecio(basemayor, basemenor, altura, lado1, lado2, lado3, lado4)
	Definir area, perimetro Como Real
	area = ((basemayor + basemenor) * altura) / 2
	perimetro = lado1 + lado2 + lado3 + lado4
	Escribir "El �rea del Trapecio es: ", area
	Escribir "El per�metro del Trapecio es: ", perimetro
FinSubProceso

SubProceso Pentagono(apotema, lado1)
	Definir area, perimetro Como Real
	perimetro = lado1 * 5
	area = (perimetro * apotema) / 2
	Escribir "El �rea del Pent�gono es: ", area
	Escribir "El per�metro del Pent�gono es: ", perimetro
FinSubProceso

SubProceso Hexagono(apotema, lado1)
	Definir area, perimetro Como Real
	perimetro = lado1 * 6
	area = (perimetro * apotema) / 2
	Escribir "El �rea del Hex�gono es: ", area
	Escribir "El per�metro del Hex�gono es: ", perimetro
FinSubProceso

SubProceso Heptagono(apotema, lado1)
	Definir area, perimetro Como Real
	perimetro = lado1 * 7
	area = (perimetro * apotema) / 2
	Escribir "El �rea del Hept�gono es: ", area
	Escribir "El per�metro del Hept�gono es: ", perimetro
FinSubProceso

SubProceso Octagono(apotema, lado1)
	Definir area, perimetro Como Real
	perimetro = lado1 * 8
	area = (perimetro * apotema) / 2
	Escribir "El �rea del Oct�gono es: ", area
	Escribir "El per�metro del Oct�gono es: ", perimetro
FinSubProceso

SubProceso Eneagono(apotema, lado1)
	Definir area, perimetro Como Real
	perimetro = lado1 * 9
	area = (perimetro * apotema) / 2
	Escribir "El �rea del Ene�gono es: ", area
	Escribir "El per�metro del Ene�gono es: ", perimetro
FinSubProceso


Algoritmo CalculadoraDeFiguras
	Definir opcion Como Caracter
	Definir continuar Como Real
	Definir base, altura, basemayor, basemenor, apotema, lado1, lado2, lado3, lado4 Como Real
	Repetir
	//vamos a crear el men�
	Escribir "Selecciona una opci�n: "
	Escribir "A �rea y Per�metro del Rect�ngulo"
	Escribir "B �rea y Per�metro del Tri�ngulo"
	Escribir "C �rea y Per�metro del Trapecio"
	Escribir "D �rea y Per�metro del Pent�gono"
	Escribir "E �rea y Per�metro del Hex�gono"
	Escribir "F �rea y Per�metro del Hept�gono"
	Escribir "G �rea y Per�metro del Oct�gono"
	Escribir "H �rea y Per�metro del Ene�gono"
	Leer opcion
	
	Segun opcion hacer
			//caso 1
		Caso "A":
			Escribir "Ingresa la base del rect�ngulo: "
			Leer base
			Escribir "Ingresa la altura del rect�ngulo: "
			Leer altura
			Rectangulo(base, altura)
			
			//caso 2
		Caso "B":
			Escribir "Ingresa la base del tri�ngulo: "
			Leer base
			Escribir "Ingresa la altura del tri�ngulo: "
			Leer altura
			Escribir "Ingresa el lado 1 del tri�ngulo: "
			Leer lado1
			Escribir "Ingresa el lado 2 del tri�ngulo: "
			Leer lado2
			Escribir "Ingresa el lado 3 del tri�ngulo: "
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
			Escribir "Ingresa el apotema del pent�gono: "
			Leer apotema
			Escribir "Ingresa el lado del pent�gono: "
			Leer lado1
			Pentagono(apotema, lado1)
			
		Caso "E":
			Escribir "Ingresa el apotema del hex�gono: "
			Leer apotema
			Escribir "Ingresa el lado del hex�gono: "
			Leer lado1
			Hexagono(apotema, lado1)
			
		Caso "F":
			Escribir "Ingresa el apotema del hept�gono: "
			Leer apotema
			Escribir "Ingresa el lado del hept�gono: "
			Leer lado1
			Heptagono(apotema, lado1)
			
		Caso "G":
			Escribir "Ingresa el apotema del oct�gono: "
			Leer apotema
			Escribir "Ingresa el lado del oct�gono: "
			Leer lado1
			Octagono(apotema, lado1)
			
		Caso "H":
			Escribir "Ingresa el apotema del ene�gono: "
			Leer apotema
			Escribir "Ingresa el lado del ene�gono: "
			Leer lado1
			Eneagono(apotema, lado1)
			
		De Otro Modo:
			Escribir "Opci�n no v�lida"
	FinSegun
	Escribir "�Deseas repetir el algoritmo? (1 = S�, 0 = No)"
	Leer continuar
Hasta Que continuar == 0
FinAlgoritmo