def sumar_paginas(paginas):
    #Caso base: si la lista está vacía, devuelve 0
    if not paginas:
        return 0
    #suma el primer elemento y llama recursivamente con el resto de la lista
    return paginas[0] + sumar_paginas(paginas[1:])

    #Ejemplo de uso

libros = [200, 250, 450, 120] #Número de páginas de cada libro
total_paginas = sumar_paginas(libros)
print("El total de páginas es: ", total_paginas)