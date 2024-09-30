Algoritmo CensoPersonas
    Definir N, Q, a�o Como Entero
    Definir vivos, edadMin, edadMax, edad Como Entero
    Definir i, j Como Entero
    Dimension nacimientos[100000]
    Dimension fallecimientos[100000]
    vivos = 0
    edadMin = 0
    edadMax = 0
	
    Escribir "Ingresa el n�mero de personas"
    Leer N
    Escribir "Ingresa el n�mero de a�os que consultar�"
    Leer Q
    Para i Desde 1 Hasta N Hacer
        Escribir "Ingresa el a�o de nacimiento de la persona ", i
        Leer nacimientos[i]
        Escribir "Ingresa el a�o de fallecimiento de la persona ", i
        Leer fallecimientos[i]
    Fin Para
    Para j Desde 1 Hasta Q Hacer
        Escribir "Ingrese el a�o del cu�l quiere obtener los datos"
        Leer a�o
        vivos = 0
        edadMin = 9999
        edadMax = -1
        Para i Desde 1 Hasta N Hacer
            Si a�o >= nacimientos[i] y a�o <= fallecimientos[i] Entonces
                vivos = vivos + 1
                edad = a�o - nacimientos[i]
                Si edad < edadMin Entonces
                    edadMin = edad
                Fin Si
                Si edad > edadMax Entonces
                    edadMax = edad
                Fin Si
            Fin Si
        Fin Para
        Si vivos > 0 Entonces
            Escribir "Las personas vivas para el a�o ", a�o, " son: ", vivos, " personas"
            Escribir "La persona m�s joven en ese a�o ten�a ", edadMin, " a�os"
            Escribir "La persona m�s anciana en ese a�o ten�a ", edadMax, " a�os"
        Sino
            Escribir "No hab�a personas vivas en ese a�o"
        Fin Si
    Fin Para
Fin Algoritmo