Algoritmo Alm_Libro_Autor
    Definir LibAlma, i Como Entero //Total de libros a almacenar, i será nuestro índice para recorrer el arreglo    
    Definir Cuantos_libros Como Entero //variable para guardar el total de libros a guardar
	
	
	Escribir " <--- Aplicación para guardar Autores y títulos de libros ---> "
    Escribir "" //  Salto de linea 
    Escribir "¿Cuántos libros almacenará?"
    Leer Cuantos_libros //leer el total de libros a guardar
	
	Escribir ">>> Se almacenarán ", Cuantos_libros, " libros"
	Escribir ""  
	//arreglo bidimensional para guardar libros y su información
	Dimension matriz_libros[Cuantos_libros +  1, 3] //3 columnas para guardar: Autor, título y cantidad de libros
	//la primera fila tendrá los encabezados
	matriz_libros[0, 0] <- "Título"
	matriz_libros[0, 1] <- "Autor"
	matriz_libros[0, 2] <- "Ejemplares"
	
    // Ciclo para guardar los libros y autores en los respectivos arreglos
    Para i <- 1 Hasta Cuantos_libros Con Paso +1 Hacer
		Escribir "** Información del libro número ", i, " **"
		
		Escribir "-> Ingresa el título del libro:"
        Leer TituloLibro
        matriz_libros[i, 0] <- TituloLibro
		
        Escribir "-> Ingresa el nombre del autor:"
        Leer NomAutor
        matriz_libros[i, 1] <- NomAutor
        
        Escribir "-> Ingresa el número de ejemplares existentes:"
		Leer Ejemplares
		matriz_libros[i, 2] <- Ejemplares
		
		Escribir "<< El libro número ", i, " fue guardado correctamente >>"
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