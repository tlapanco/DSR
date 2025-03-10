Algoritmo Alm_Libro_Autor
    Definir LibAlma, i Como Entero //Total de libros a almacenar, i ser� nuestro �ndice para recorrer el arreglo    
    Definir Cuantos_libros Como Entero //variable para guardar el total de libros a guardar
	
	
	Escribir " <--- Aplicaci�n para guardar Autores y t�tulos de libros ---> "
    Escribir "" //  Salto de linea 
    Escribir "�Cu�ntos libros almacenar�?"
    Leer Cuantos_libros //leer el total de libros a guardar
	
	Escribir ">>> Se almacenar�n ", Cuantos_libros, " libros"
	Escribir ""  
	//arreglo bidimensional para guardar libros y su informaci�n
	Dimension matriz_libros[Cuantos_libros +  1, 3] //3 columnas para guardar: Autor, t�tulo y cantidad de libros
	//la primera fila tendr� los encabezados
	matriz_libros[0, 0] <- "T�tulo"
	matriz_libros[0, 1] <- "Autor"
	matriz_libros[0, 2] <- "Ejemplares"
	
    // Ciclo para guardar los libros y autores en los respectivos arreglos
    Para i <- 1 Hasta Cuantos_libros Con Paso +1 Hacer
		Escribir "** Informaci�n del libro n�mero ", i, " **"
		
		Escribir "-> Ingresa el t�tulo del libro:"
        Leer TituloLibro
        matriz_libros[i, 0] <- TituloLibro
		
        Escribir "-> Ingresa el nombre del autor:"
        Leer NomAutor
        matriz_libros[i, 1] <- NomAutor
        
        Escribir "-> Ingresa el n�mero de ejemplares existentes:"
		Leer Ejemplares
		matriz_libros[i, 2] <- Ejemplares
		
		Escribir "<< El libro n�mero ", i, " fue guardado correctamente >>"
		Escribir ""
    FinPara
    
	Escribir ""
    Escribir "<--- Listado de libros almacenados --->"
	Escribir ""
	
	Escribir "|--- ", matriz_libros[0,0], " ---|--- ", matriz_libros[0,1], " ---|--- ", matriz_libros[0, 2], " ---|"
	//ciclo para mostrar los libros y sus autores guardados
    Para i <- 1 Hasta Cuantos_libros  Con Paso +1 Hacer
		Escribir "| ", matriz_libros[i, 0], " | ", matriz_libros[i, 1], " | ", matriz_libros[i, 2], " |"		
    FinPara
FinAlgoritmo