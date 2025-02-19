using System;

class Program
{
    static void Main(string[] args)
    {
        // Ejecutar el programa
        RunCalculator();
    }

    // Función principal para ejecutar la calculadora
    static void RunCalculator()
    {
        bool continuar = true;
        while (continuar)
        {
            MostrarMenu();
            int opcion = ObtenerOpcion();

            if (opcion == 5)
            {
                continuar = false;
                Console.WriteLine("Gracias por usar la calculadora. ¡Adiós!");
                break;
            }

            double num1 = ObtenerNumero("Ingrese el primer número: ");
            double num2 = ObtenerNumero("Ingrese el segundo número: ");
            double resultado = RealizarOperacion(opcion, num1, num2);

            Console.WriteLine($"Resultado: {resultado}");
        }
    }

    // Función para mostrar el menú de opciones
    static void MostrarMenu()
    {
        Console.Clear();
        Console.WriteLine("Calculadora Básica");
        Console.WriteLine("1. Suma");
        Console.WriteLine("2. Resta");
        Console.WriteLine("3. Multiplicación");
        Console.WriteLine("4. División");
        Console.WriteLine("5. Salir");
    }

    // Función para obtener una opción válida del usuario
    static int ObtenerOpcion()
    {
        int opcion;
        while (true)
        {
            Console.Write("Seleccione una opción: ");
            if (int.TryParse(Console.ReadLine(), out opcion) && opcion >= 1 && opcion <= 5)
            {
                return opcion;
            }
            Console.WriteLine("Opción inválida. Intente de nuevo.");
        }
    }

    // Función para obtener un número válido del usuario
    static double ObtenerNumero(string mensaje)
    {
        double numero;
        while (true)
        {
            Console.Write(mensaje);
            if (double.TryParse(Console.ReadLine(), out numero))
            {
                return numero;
            }
            Console.WriteLine("Número inválido. Intente de nuevo.");
        }
    }

    // Función para realizar la operación seleccionada
    static double RealizarOperacion(int opcion, double num1, double num2)
    {
        switch (opcion)
        {
            case 1:
                return Sumar(num1, num2);
            case 2:
                return Restar(num1, num2);
            case 3:
                return Multiplicar(num1, num2);
            case 4:
                return Dividir(num1, num2);
            default:
                throw new InvalidOperationException("Opción inválida.");
        }
    }

    // Funciones de operaciones básicas
    static double Sumar(double a, double b) => a + b;
    static double Restar(double a, double b) => a - b;
    static double Multiplicar(double a, double b) => a * b;
    static double Dividir(double a, double b)
    {
        try
        {
            if (b == 0)
                throw new DivideByZeroException("No se puede dividir por cero.");
            return a / b;
        }
        catch (DivideByZeroException ex)
        {
            Console.WriteLine(ex.Message);
            return double.NaN;
        }
    }
}
