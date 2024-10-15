Algoritmo Chicharronera
	Definir a, b, c, discriminante, solucion1, solucion2, imaginario Como Real
Repetir
	Escribir "Introduce el coeficiente a: "
	Leer a
	Escribir "Introduce el coeficiente b: "
	Leer b
	Escribir "Introduce el coeficiente c: "
	Leer c
	
	discriminante <- b^2 - 4*a*c
	
	Si discriminante >= 0 Entonces
		solucion1 <- (-b + raiz(discriminante)) / (2*a)
		solucion2 <- (-b - raiz(discriminante)) / (2*a)
		Escribir "Las soluciones son: ", solucion1, " y ", solucion2
	SiNo
		solucion1 <- -b / (2*a)
		imaginario <- raiz(Abs(discriminante)) / (2*a)
		Escribir "Las soluciones complejas son: ", solucion1, " + ", imaginario, "i y ", solucion1, " - ", imaginario, "i"
	FinSi
	Escribir "¿Deseas repetir el algoritmo? (1 = Sí, 0 = No)"
	Leer opcion
Hasta Que opcion = 0
FinAlgoritmo