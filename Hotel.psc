Algoritmo SistemaReservasHotel
    Dimension Ocupadas[10], FechasEntrada[10], FechasSalida[10]
    Definir opcion, habitacion, ocupadas_total, dia_entrada, dia_salida, dia_reserva_entrada, dia_reserva_salida Como Entero
    ocupadas_total = 0
	
    Para i = 1 Hasta 10 Hacer
        Ocupadas[i] = Falso
        FechasEntrada[i] = 0
        FechasSalida[i] = 0
    Fin Para
	
    Mientras opcion <> 5 Hacer
        Escribir "Sistema de Gesti�n de Reservas de Hotel"
        Escribir "1. Registrar Reserva"
        Escribir "2. Cancelar Reserva"
        Escribir "3. Consultar Disponibilidad"
        Escribir "4. Consultar Porcentaje de Ocupaci�n"
        Escribir "5. Salir"
        Escribir "Elija una opci�n:"
        Leer opcion
		
        Segun opcion Hacer
            Caso 1:
                Escribir "Ingrese el n�mero de habitaci�n (1-10):"
                Leer habitacion
                Si habitacion >= 1 Y habitacion <= 10 Entonces
                    Si Ocupadas[habitacion] = Falso Entonces
                        Escribir "Ingrese la fecha de entrada (d�a num�rico de 1 a 365):"
                        Leer dia_entrada
                        Escribir "Ingrese la fecha de salida (d�a num�rico de 1 a 365):"
                        Leer dia_salida
						
                        Si dia_salida > dia_entrada Entonces
                            Ocupadas[habitacion] = Verdadero
                            FechasEntrada[habitacion] = dia_entrada
                            FechasSalida[habitacion] = dia_salida
                            ocupadas_total = ocupadas_total + 1
                            Escribir "Reserva registrada en la habitaci�n ", habitacion, " del d�a ", dia_entrada, " al d�a ", dia_salida
                        Sino
                            Escribir "Error: La fecha de salida debe ser posterior a la fecha de entrada."
                        Fin Si
                    Sino
                        Escribir "La habitaci�n ya est� ocupada"
                    Fin Si
                Sino
                    Escribir "N�mero de habitaci�n inv�lido"
                Fin Si
				
            Caso 2:
                Escribir "Ingrese el n�mero de habitaci�n para cancelar la reserva (1-10):"
                Leer habitacion
                Si habitacion >= 1 Y habitacion <= 10 Entonces
                    Si Ocupadas[habitacion] = Verdadero Entonces
                        Ocupadas[habitacion] = Falso
                        FechasEntrada[habitacion] = 0
                        FechasSalida[habitacion] = 0
                        ocupadas_total = ocupadas_total - 1
                        Escribir "Reserva cancelada en la habitaci�n ", habitacion
                    Sino
                        Escribir "No hay reserva en esa habitaci�n para cancelar"
                    Fin Si
                Sino
                    Escribir "N�mero de habitaci�n inv�lido"
                Fin Si
				
            Caso 3:
                Escribir "Ingrese la fecha de entrada deseada (d�a num�rico):"
                Leer dia_reserva_entrada
                Escribir "Ingrese la fecha de salida deseada (d�a num�rico):"
                Leer dia_reserva_salida
				
                Si dia_reserva_salida > dia_reserva_entrada Entonces
                    Escribir "Habitaciones disponibles en las fechas solicitadas:"
                    Para N = 1 Hasta 10 Hacer
                        Si Ocupadas[N] = Falso O (FechasSalida[N] < dia_reserva_entrada O FechasEntrada[N] > dia_reserva_salida) Entonces
                            Escribir "Habitaci�n ", N, " est� disponible"
                        Sino
                            Escribir "Habitaci�n ", N, " est� ocupada"
                        Fin Si
                    Fin Para
                Sino
                    Escribir "Error: La fecha de salida debe ser posterior a la fecha de entrada."
                Fin Si
				
            Caso 4:
                Escribir "Porcentaje de ocupaci�n del hotel:"
                Escribir (ocupadas_total / 10) * 100, "% de las habitaciones est�n ocupadas"
				
            Caso 5:
                Escribir "Saliendo del sistema..."
				
            De Otro Modo:
                Escribir "Opci�n no v�lida"
        Fin Segun
    Fin Mientras
FinAlgoritmo
