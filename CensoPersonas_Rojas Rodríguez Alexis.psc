Algoritmo CensoPersonas
    Definir N, Q, año Como Entero
    Definir vivos, edadMin, edadMax, edad Como Entero
    Definir i, j Como Entero
    Dimension nacimientos[100000]
    Dimension fallecimientos[100000]
    vivos = 0
    edadMin = 0
    edadMax = 0
	
    Escribir "Ingresa el número de personas"
    Leer N
    Escribir "Ingresa el número de años que consultará"
    Leer Q
    Para i Desde 1 Hasta N Hacer
        Escribir "Ingresa el año de nacimiento de la persona ", i
        Leer nacimientos[i]
        Escribir "Ingresa el año de fallecimiento de la persona ", i
        Leer fallecimientos[i]
    Fin Para
    Para j Desde 1 Hasta Q Hacer
        Escribir "Ingrese el año del cuál quiere obtener los datos"
        Leer año
        vivos = 0
        edadMin = 9999
        edadMax = -1
        Para i Desde 1 Hasta N Hacer
            Si año >= nacimientos[i] y año <= fallecimientos[i] Entonces
                vivos = vivos + 1
                edad = año - nacimientos[i]
                Si edad < edadMin Entonces
                    edadMin = edad
                Fin Si
                Si edad > edadMax Entonces
                    edadMax = edad
                Fin Si
            Fin Si
        Fin Para
        Si vivos > 0 Entonces
            Escribir "Las personas vivas para el año ", año, " son: ", vivos, " personas"
            Escribir "La persona más joven en ese año tenía ", edadMin, " años"
            Escribir "La persona más anciana en ese año tenía ", edadMax, " años"
        Sino
            Escribir "No había personas vivas en ese año"
        Fin Si
    Fin Para
Fin Algoritmo