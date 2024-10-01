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
        Escribir "Sistema de Gestión de Reservas de Hotel"
        Escribir "1. Registrar Reserva"
        Escribir "2. Cancelar Reserva"
        Escribir "3. Consultar Disponibilidad"
        Escribir "4. Consultar Porcentaje de Ocupación"
        Escribir "5. Salir"
        Escribir "Elija una opción:"
        Leer opcion
		
        Segun opcion Hacer
            Caso 1:
                Escribir "Ingrese el número de habitación (1-10):"
                Leer habitacion
                Si habitacion >= 1 Y habitacion <= 10 Entonces
                    Si Ocupadas[habitacion] = Falso Entonces
                        Escribir "Ingrese la fecha de entrada (día numérico de 1 a 365):"
                        Leer dia_entrada
                        Escribir "Ingrese la fecha de salida (día numérico de 1 a 365):"
                        Leer dia_salida
						
                        Si dia_salida > dia_entrada Entonces
                            Ocupadas[habitacion] = Verdadero
                            FechasEntrada[habitacion] = dia_entrada
                            FechasSalida[habitacion] = dia_salida
                            ocupadas_total = ocupadas_total + 1
                            Escribir "Reserva registrada en la habitación ", habitacion, " del día ", dia_entrada, " al día ", dia_salida
                        Sino
                            Escribir "Error: La fecha de salida debe ser posterior a la fecha de entrada."
                        Fin Si
                    Sino
                        Escribir "La habitación ya está ocupada"
                    Fin Si
                Sino
                    Escribir "Número de habitación inválido"
                Fin Si
				
            Caso 2:
                Escribir "Ingrese el número de habitación para cancelar la reserva (1-10):"
                Leer habitacion
                Si habitacion >= 1 Y habitacion <= 10 Entonces
                    Si Ocupadas[habitacion] = Verdadero Entonces
                        Ocupadas[habitacion] = Falso
                        FechasEntrada[habitacion] = 0
                        FechasSalida[habitacion] = 0
                        ocupadas_total = ocupadas_total - 1
                        Escribir "Reserva cancelada en la habitación ", habitacion
                    Sino
                        Escribir "No hay reserva en esa habitación para cancelar"
                    Fin Si
                Sino
                    Escribir "Número de habitación inválido"
                Fin Si
				
            Caso 3:
                Escribir "Ingrese la fecha de entrada deseada (día numérico):"
                Leer dia_reserva_entrada
                Escribir "Ingrese la fecha de salida deseada (día numérico):"
                Leer dia_reserva_salida
				
                Si dia_reserva_salida > dia_reserva_entrada Entonces
                    Escribir "Habitaciones disponibles en las fechas solicitadas:"
                    Para N = 1 Hasta 10 Hacer
                        Si Ocupadas[N] = Falso O (FechasSalida[N] < dia_reserva_entrada O FechasEntrada[N] > dia_reserva_salida) Entonces
                            Escribir "Habitación ", N, " está disponible"
                        Sino
                            Escribir "Habitación ", N, " está ocupada"
                        Fin Si
                    Fin Para
                Sino
                    Escribir "Error: La fecha de salida debe ser posterior a la fecha de entrada."
                Fin Si
				
            Caso 4:
                Escribir "Porcentaje de ocupación del hotel:"
                Escribir (ocupadas_total / 10) * 100, "% de las habitaciones están ocupadas"
				
            Caso 5:
                Escribir "Saliendo del sistema..."
				
            De Otro Modo:
                Escribir "Opción no válida"
        Fin Segun
    Fin Mientras
FinAlgoritmo
