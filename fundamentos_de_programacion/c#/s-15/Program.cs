// Aplicación para saber en que etapa se encuentra una persona
/*
Si tiene una edad igual o menor a 13 años es un niño
Si tiene una edad igual o menor a 17 años es un adolescente
Si su edad es igual o menor a 59 años es un adulto
Si su edad es igual o mayor a 60 años está en la vejez
*/

Console.WriteLine("\n<---- En que etapa de mi vida me encuentro ---->");
Console.WriteLine("\n-> Ingresa tu edad (años): ");
string entrada_usuario = Console.ReadLine();
int edad = Convert.ToInt32(entrada_usuario);
Console.WriteLine("\n");

if ( edad <= 13  ) {
    Console.WriteLine("¡Felicidades! te encuentras en la primer etapa, la niñez.");    
} else if ( edad <= 17 ) {
    Console.WriteLine("¡Actualmente te encuentras en la adolescencia!");
} else if ( edad <= 59 ) {
    Console.WriteLine("¡Te encuentras en la adultez!");
} else if ( edad >= 60 ) {
    Console.WriteLine("¡Te encuentras en la última etapa, la vejez!");
} 









// int edad_profesor = 21;

// if ( edad == edad_profesor ) Console.WriteLine("Tienes la misma edad que el profesor..!!!");
// else if (edad < edad_profesor ) Console.WriteLine("Tú profesor es mayor que tú..!!");
// else if (edad > edad_profesor ) Console.WriteLine("Tú profesor es menor que tú..!!");