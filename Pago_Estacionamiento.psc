Algoritmo Pago_Estacionamiento
	Definir horaEntrada, minutoEntrada, horaSalida, minutoSalida Como Entero
	Definir totalMinutos, horasCompletas, minutosRestantes, cobroTotal, cobroHoras, cobroMinutos Como Real
	Escribir "Introduce la hora de entrada (0 a 23):"
	Leer horaEntrada
	Escribir "Introduce los minutos de entrada (0 a 59):"
	Leer minutoEntrada
	Escribir "Introduce la hora de salida (0 a 23):"
	Leer horaSalida
	Escribir "Introduce los minutos de salida (0 a 59):"
	Leer minutoSalida
	Definir horasTranscurridas, minutosTranscurridos Como Entero
	
	horasTranscurridas = horaSalida - horaEntrada
	minutosTranscurridos = minutoSalida - minutoEntrada
	
	Si minutosTranscurridos < 0 Entonces
		minutosTranscurridos = minutosTranscurridos + 60
		horasTranscurridas = horasTranscurridas - 1
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
