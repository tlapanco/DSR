


void Menu()
{
    while (true)
    {
        Console.WriteLine("<<<< Bienvenido a mi app >>>>");
        Console.WriteLine("** Menu **");
        Console.WriteLine("1. Calculadora básica");
        Console.WriteLine("2. Adivinar número");
        Console.WriteLine("3. Salir");
        string opcion = Console.ReadLine();
        if (opcion == "1") Calculadora();
        else if (opcion == "2") AdivinarNumero();
        else if (opcion == "3") break;
        else Console.WriteLine("Error: opción no válida...");
    }

}

void Calculadora()
{
    while (true)
    {
        Console.WriteLine("*** CALCULADORA BÁSICA ***");
        Console.WriteLine("<< Ingresa la operación a realizar >>");
        Console.WriteLine("1. Suma");
        Console.WriteLine("2. Resta");
        Console.WriteLine("3. Multiplicación");
        Console.WriteLine("4. División");
        Console.WriteLine("5. Salir");
        string opcion = Console.ReadLine();
        if (opcion == "5") return;
        if (opcion != "1" && opcion != "2" && opcion != "3" && opcion != "4") {
            Console.WriteLine("Opción no válida");
            continue;
        }
        Console.WriteLine("Ingresa el primer número: ");
        string dato1 = Console.ReadLine();
        Console.WriteLine("Ingresa el segundo número:");
        string dato2 = Console.ReadLine();
        double num1 = ConvertirADouble(dato1);
        double num2 = ConvertirADouble(dato2);
        double resultado = 0;
        switch (opcion)
        {
            case "1":
                resultado = Suma(num1, num2);
                break;
            case "2":
                resultado = Resta(num1, num2);
                break;
            case "3":
                resultado = Multiplicacion(num1, num2);
                break;
            case "4":
                resultado = Division(num1, num2);
                break;            
            default:
                Console.WriteLine("Opción ingresada no válida...");
                break;
        }
        Console.WriteLine("El resultado es: " + resultado);
    }
}
double Suma(double num1, double num2)
{
    return num1 + num2;
}

double Resta(double num1, double num2)
{
    return num1 - num2;
}

double Multiplicacion(double num1, double num2)
{
    return num1 * num2;
}

double Division(double num1, double num2)
{
    return num1 / num2;
}

double ConvertirADouble(string numero)
{
    return Convert.ToDouble(numero);
}

void AdivinarNumero()
{
    int min = 1;
    int max = 100;
    int guess;
    char response;

    Console.WriteLine("Piensa en un número entre 1 y 100.");
    Console.WriteLine("Presiona Enter cuando estés listo...");
    Console.ReadKey();

    do
    {
        guess = (min + max) / 2;
        Console.WriteLine($"¿Es tu número {guess}? (s/m/a): ");
        response = Console.ReadKey().KeyChar;

        if (response == 'm')
        {
            max = guess - 1;
        }
        else if (response == 'a')
        {
            min = guess + 1;
        }

        Console.WriteLine();
    } while (response != 's');

    Console.WriteLine($"¡Adiviné tu número! Es {guess}.");
}




Menu();
