Algoritmo Pago_Estacionamiento
	Definir horaEntrada, minutoEntrada, horaSalida, minutoSalida, segundoEntrada, segundoSalida Como Entero
	Definir totalMinutos, horasCompletas, minutosRestantes, cobroTotal, cobroHoras, cobroMinutos Como Real
	
	Repetir
	Escribir "Introduce la hora de entrada (0 a 23):"
	Leer horaEntrada
	Si horaEntrada > 23 o horaEntrada < 0 Entonces
		Escribir "La hora ingresada no es válida."
	FinSi
	Hasta Que horaEntrada <= 23 y horaEntrada >= 0

	Repetir
	Escribir "Introduce los minutos de entrada (0 a 59):"
	Leer minutoEntrada
	Si minutoEntrada > 59 o minutoEntrada < 0 Entonces
		Escribir "Los minutos ingresados no son válidos."
	FinSi
	Hasta Que minutoEntrada <= 59 y minutoEntrada >= 0

	Repetir
	Escribir "Introduce los segundos de entrada (0 a 59):"
	Leer segundoEntrada
	Si segundoEntrada > 59 o segundoEntrada < 0 Entonces
		Escribir "Los segundos ingresados no son válidos."
	FinSi
	Hasta Que segundoEntrada <= 59 y segundoEntrada >= 0
	
	Repetir
	Escribir "Introduce la hora de salida (0 a 23):"
	Leer horaSalida
	Si horaSalida > 23 o horaSalida < 0 Entonces
		Escribir "La hora ingresada no es válida."
	FinSi
	Hasta Que horaSalida <= 23 y horaSalida >= 0
	
	Repetir
	Escribir "Introduce los minutos de salida (0 a 59):"
	Leer minutoSalida
	Si minutoSalida > 59 o minutoSalida < 0 Entonces
		Escribir "Los minutos ingresados no son válidos."
	FinSi
	Hasta Que minutoSalida <= 59 y minutoSalida >= 0
	
	Repetir
	Escribir "Introduce los segundos de salida (0 a 59):"
	Leer segundoSalida
	Si segundoSalida > 59 o segundoSalida < 0 Entonces
		Escribir "Los segundos ingresados no son válidos."
	FinSi
	Hasta Que segundoSalida <= 59 y segundoSalida >= 0

	Definir horasTranscurridas, minutosTranscurridos, segundosTranscurridos Como Entero
	
	horasTranscurridas = horaSalida - horaEntrada
	minutosTranscurridos = minutoSalida - minutoEntrada
	segundosTranscurridos = segundoSalida - segundoEntrada
	
	Si minutosTranscurridos < 0 Entonces
		minutosTranscurridos = minutosTranscurridos + 60
		horasTranscurridas = horasTranscurridas - 1
	FinSi
	
	Si segundosTranscurridos < 0 Entonces
		segundosTranscurridos = segundosTranscurridos + 60
		minutosTranscurridos = minutosTranscurridos - 1
	FinSi
	
	totalMinutos = horasTranscurridas * 60 + minutosTranscurridos
	
	Si totalMinutos < 15 Entonces
		Escribir "El tiempo fue menor a 15 minutos, estacionamiento gratis"
FinSi

horasCompletas = Trunc(totalMinutos / 60)
minutosRestantes = totalMinutos % 60

cobroHoras = horasCompletas * 15

Si minutosRestantes > 0 Entonces
	Si minutosRestantes <= 15 Entonces
		cobroMinutos = 6
	SiNo Si minutosRestantes <= 30 Entonces
			cobroMinutos = 12
		SiNo Si minutosRestantes <= 45 Entonces
				cobroMinutos = 18
			SiNo
			FinSi
		FinSi
	FinSi
FinSi
	cobroTotal = cobroHoras + cobroMinutos
	Escribir "El total es: ", cobroTotal, " pesos"
FinAlgoritmo
