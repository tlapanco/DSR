Algoritmo calcular_mayoria_de_edad
	//variable para guardar la edad
	Definir edad Como Entero
	
	//variable que guarda el valor l�gico 
	Definir mayor_edad Como Logico
	
	//Se da el n�mero de a�os 
	//necesarios para ser considerado mayor de edad
	//se guarda en la variable mayoria_de_edad
	mayoria_de_edad <- 18 
	
	//mostramos en pantalla el mensaje para pedir la edad en a�os
	Escribir "Ingresa tu edad (a�os):"
	
	//Guardamos el valor en la variable edad
	Leer edad 
	
	//v�lidamos si es mayor de edad y guardamos en la variable mayor_edad
	mayor_edad <- edad >= 18
	
	//Mostramos un mensaje de acuerdo a la evaluaci�n
	Si mayor_edad Entonces // si mayor_edad es Verdadero 
		Escribir "Eres mayor de edad, felicidades...!!!"
	SiNo //si mayor_edad es Falso
		Escribir "A�n no eres mayor de edad :c"
	Fin Si
	
FinAlgoritmo
