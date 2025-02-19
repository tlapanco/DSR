//Obtener el factorial de un número

Console.WriteLine("*** Calcular el factorial de un número ***");

//Método para guardar lo que ingrese el usuario y almacenarlo en entrada_usuario
string? entrada_usuario = Console.ReadLine();
//Convertir lo que ingreso el usuario a un entero y guardarlo en numero
int numero = Convert.ToInt32(entrada_usuario);
//Acumulador que almacenará el resultado del cálculo para obtener el factorial
long factorial = 1;
//Ciclo para obtener el factorial
for (int i = 1; i <= numero; i++)
{
    //multiplicamos el número actual por el valor de factorial anterior
    factorial *= i;//es igual a factorial = factorial * i;
    //Console.WriteLine("factorial: " + factorial);
}


//Mostramos los resultados
Console.WriteLine("El factorial de: " + numero);
Console.WriteLine("Es: " + factorial);


Console.WriteLine("** Serie fibonacci hasta " +  numero + " **");
//Inicio por defecto de la serie fibonacci
int num_anterior1 = 0;
int num_anterior2 = 1;
// fibonacci es igual a la suma de los dos numeros anteriores
int fibonacci = num_anterior1 + num_anterior2; 
//Mostramos valores por defecto
Console.WriteLine(num_anterior1);
Console.WriteLine(num_anterior2);

while( fibonacci <= numero ){
    Console.WriteLine(fibonacci);
    num_anterior1 = num_anterior2;
    num_anterior2 = fibonacci;
    fibonacci = num_anterior1 + num_anterior2;
}