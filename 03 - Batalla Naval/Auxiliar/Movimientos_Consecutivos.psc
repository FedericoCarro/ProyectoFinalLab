Algoritmo sin_titulo
	Definir Coordenadas Como Caracter
	Definir Cantidad, i Como Entero
	Definir CoordenadaValida Como Logico
	Repetir
		Escribir "Ingrese Coordenadas (LetraNumero: Ej: A6)"
		leer Coordenadas
		Cantidad<-Longitud(Coordenadas)
		
		Escribir Coordenadas, Cantidad
		
		Para i<-0 Hasta Cantidad-1 Con Paso 1 Hacer
			Escribir Subcadena(Coordenadas,i,i)
		Fin Para
	Hasta Que CoordenadaValida
FinAlgoritmo
