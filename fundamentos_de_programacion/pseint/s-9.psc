Proceso CalcularAprobados
  Definir cantidadEstudiantes, calificacion, aprobados, reprobados Como Entero
  Definir i Como Entero
  
  Escribir "Introduce la cantidad de estudiantes:"
  Leer cantidadEstudiantes
  
  aprobados := 0
  reprobados := 0
  
  Para i := 1 Hasta cantidadEstudiantes Hacer
    Escribir "Introduce la calificación del estudiante ", i, ":"
    Leer calificacion
    
    Si calificacion >= 70 Entonces
      aprobados := aprobados + 1
    SiNo
      reprobados := reprobados + 1
    FinSi
  FinPara
  
  Escribir "Cantidad de estudiantes aprobados: ", aprobados
  Escribir "Cantidad de estudiantes reprobados: ", reprobados
FinProceso



Proceso CalcularAprobadosYPromedio
  Definir cantidadEstudiantes, calificacion, aprobados, reprobados, sumaCalificaciones, promedio Como Real
  Definir i Como Entero
  
  Escribir "Introduce la cantidad de estudiantes:"
  Leer cantidadEstudiantes
  
  aprobados := 0
  reprobados := 0
  sumaCalificaciones := 0
  
  Para i := 1 Hasta cantidadEstudiantes Hacer
    Escribir "Introduce la calificación del estudiante ", i, ":"
    Leer calificacion
    
    sumaCalificaciones := sumaCalificaciones + calificacion
    
    Si calificacion >= 70 Entonces
      aprobados := aprobados + 1
    SiNo
      reprobados := reprobados + 1
    FinSi
  FinPara
  
  promedio := sumaCalificaciones / cantidadEstudiantes
  
  Escribir "Cantidad de estudiantes aprobados: ", aprobados
  Escribir "Cantidad de estudiantes reprobados: ", reprobados
  Escribir "Promedio de calificaciones: ", promedio
FinProceso
