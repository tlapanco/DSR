Proceso CalcularDescuento
  Escribir "Introduce la edad del cliente:"
  Leer edad
  Escribir "Introduce el monto de la compra:"
  Leer monto
  Escribir "¿Tiene membresía? (si/no):"
  Leer tieneMembresia

  descuento := 0
  
  // Descuento por membresía
  Si tieneMembresia = "si" Entonces
    descuento := descuento + 10
  FinSi

  // Descuento por monto de compra
  Si monto > 1000 Entonces
    Si descuento < 15 Entonces
      descuento := 15
    FinSi
  FinSi

  // Descuento por edad
  Si edad < 18 Entonces
    Si descuento < 5 Entonces
      descuento := 5
    FinSi
  SiNo
    Si edad >= 60 Entonces
      Si descuento < 20 Entonces
        descuento := 20
      FinSi
    FinSi
  FinSi

  // Aplicar descuento más alto posible
  descuentoTotal := descuento

  // Mostrar resultado
  Escribir "El descuento aplicado es del ", descuentoTotal, "%."
FinProceso


Proceso PrestamoLibros
  Escribir "Introduce la edad del usuario:"
  Leer edad
  Escribir "Introduce el tipo de membresía (premium/estándar/ninguna):"
  Leer tipoMembresia
  Escribir "Introduce la cantidad de libros vencidos:"
  Leer librosVencidos

  librosPermitidos := 0

  // Verificar si el usuario es mayor de 12 años
  Si edad > 12 Entonces
    // Verificar si el usuario tiene libros vencidos
    Si librosVencidos > 3 Entonces
      Escribir "No puede tomar prestados más libros hasta que devuelva los libros vencidos."
    SiNo
      // Determinar la cantidad de libros permitidos según la membresía
      Segun tipoMembresia Hacer
        "premium":
          librosPermitidos := 10
        "estándar":
          librosPermitidos := 5
        "ninguna":
          librosPermitidos := 2
        De Otro Modo:
          Escribir "Tipo de membresía no válido."
      FinSegun

      // Mostrar la cantidad de libros permitidos
      Si tipoMembresia = "premium" O tipoMembresia = "estándar" O tipoMembresia = "ninguna" Entonces
        Escribir "Puede tomar prestados hasta ", librosPermitidos, " libros."
      FinSi
    FinSi
  SiNo
    Escribir "Debe ser mayor de 12 años para tomar prestados libros."
  FinSi
FinProceso
