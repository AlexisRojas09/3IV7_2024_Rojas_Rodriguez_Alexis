Algoritmo Tiendita
    Definir productos Como Texto
    Definir codigosDeProducto, cantidades Como Entero
    Definir precios Como Real
    Definir opcion, codigoIngresado, cantidadVendida, i, totalProductos Como Entero
    Definir nombreProducto Como Texto
    totalProductos = 0
	
    Mientras opcion <> 5 Hacer
        Escribir "1.- Ingresar un nuevo producto"
        Escribir "2.- Actualizar stock (vender producto)"
        Escribir "3.- Consultar inventario"
        Escribir "4.- Generar reporte de stock"
        Escribir "5.- Salir"
        Leer opcion
		
        Segun opcion Hacer
            Caso 1: 
                Escribir "Ingresa el nombre del producto:"
                Leer nombreProducto
                Escribir "Ingresa el código del producto (número entero):"
                Leer codigosDeProducto
                Escribir "Ingresa la cantidad disponible:"
                Leer cantidades
                Escribir "Ingresa el precio unitario:"
                Leer precios
                productos = nombreProducto
                totalProductos = totalProductos + 1
                Escribir "Producto ingresado con éxito."
            Caso 2: 
                Escribir "Ingresa el código del producto a actualizar:"
                Leer codigoIngresado
                Para i = 0 Hasta totalProductos-1 Hacer
					Si codigosDeProducto <> codigoIngresado Entonces
						Escribir "Producto no encontrado."
					SiNo
                    Si codigosDeProducto = codigoIngresado Entonces
                        Escribir "Cantidad actual de ", productos, ": ", cantidades
                        Escribir "Ingresa la cantidad vendida:"
                        Leer cantidadVendida
                        Si cantidadVendida > cantidades Entonces
                            Escribir "No hay suficiente stock para vender esa cantidad."
                        SiNo
                            cantidades = cantidades - cantidadVendida
                            Escribir "Stock actualizado. Cantidad restante de ", productos, ": ", cantidades
							Fin Si
                        FinSi
                    FinSi
                FinPara
            Caso 3: 
                Escribir "Inventario actual:"
                Para i = 0 Hasta totalProductos-1 Hacer
                    Escribir "Producto: ", productos, " | Código: ", codigosDeProducto, " | Precio: $", precios, " | Cantidad: ", cantidades
                FinPara
            Caso 4: 
                Escribir "Reporte de stock:"
                Para i = 0 Hasta totalProductos-1 Hacer
                    Escribir "Producto: ", productos, " | Cantidad en stock: ", cantidades
                    Si cantidades = 0 Entonces
                        Escribir "Este producto está agotado."
                    FinSi
                FinPara
            Caso 5:
                Escribir "Saliendo"
            De Otro Modo:
                Escribir "Opción no válida, ingresa otra opción"
        FinSegun
		
    FinMientras
FinAlgoritmo
