Algoritmo Alm_Libro_Autor
    Definir LibAlma, i Como Entero //Total de libros a almacenar, i ser� nuestro �ndice para recorrer el arreglo
    Definir Nombre_Autor, Nombre_Titulo Como Cadena // arreglos de cadenas para guardar titulos y autores de libros
    Definir Cuantos_libros Como Entero //variable para guardar el total de libros a guardar
	
	Escribir " <--- Aplicaci�n para guardar Autores y t�tulos de libros ---> "
    Escribir "" //  Salto de linea 
    Escribir "�Cu�ntos libros almacenar�?"
    Leer Cuantos_libros //leer el total de libros a guardar
	
	Escribir ">>> Se almacenar�n ", Cuantos_libros, " libros"
	Escribir ""
    Dimension Nombre_Autor[Cuantos_libros] //arreglo para guardar los nombres de los autores
    Dimension Nombre_Titulo[Cuantos_libros] //arreglo para guardar los t�tulos de los libros
		
    // Ciclo para guardar los libros y autores en los respectivos arreglos
    Para i <- 0 Hasta Cuantos_libros - 1 Con Paso +1 Hacer
		Escribir "** Informaci�n del libro n�mero ", i + 1, " **"
        Escribir "-> Ingresa el nombre del autor:"
        Leer NomAutor
        Nombre_Autor[i] <- NomAutor
        
        Escribir "-> Ingresa el t�tulo del libro:"
        Leer TituloLibro
        Nombre_Titulo[i] <- TituloLibro
		
		Escribir "<< El libro n�mero ", i + 1, " fue guardado correctamente >>"
		Escribir ""
    FinPara
    
	Escribir ""
    Escribir "<--- Listado de libros almacenados --->"
	Escribir ""
	//ciclo para mostrar los libros y sus autores guardados
    Para i <- 0 Hasta Cuantos_libros - 1 Con Paso +1 Hacer
		Escribir "** Detalle del libro n�mero ", i + 1, " **"
        Escribir "Nombre del Autor: ", Nombre_Autor[i]
        Escribir "T�tulo del Libro: ", Nombre_Titulo[i]
		Escribir ""
    FinPara
FinAlgoritmo