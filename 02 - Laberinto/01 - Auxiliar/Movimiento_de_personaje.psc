Algoritmo Movimiento_de_personaje
	definir movimiento Como Caracter
	Definir PosX,PosY Como Entero
	PosX<-0
	PosY<-0
	Escribir "Movete hasta llegar a X:5 Y:5"
	Mientras flag<>1 Hacer
		Escribir  ("Ingresá un caracter:")
		Leer movimiento
		Borrar Pantalla
		Segun movimiento Hacer
			'W'o'w':
				PosY<-PosY+1
			'A'o'a':
				PosX<-PosX-1
			'd'o'D':
				PosX<-PosX+1
			's'o'S':
				PosY<-PosY-1
		Fin Segun
		Escribir  "Movete hasta llegar a X:5 Y:5"
		Escribir 	"Su posicion horizontal es: ", PosX
		Escribir  "Su posicion vertical es: ", PosY
		si	(PosX=5 Y PosY=5) Entonces
			flag<-1
			Escribir ("*******************")
			Escribir ("   	 LLEGASTE")
			Escribir ("*******************")
		FinSi
	Fin Mientras
FinAlgoritmo



//EL CONCEPTO ES EL DE ARRIBA PERO FUE SEPARADO PARA SU FUNCIONALIDAD EN EL PROGRAMA PRINCIPAL
Funcion  Vertical<-MovimientoVertical(Vertical,MovPersonaje)
	Segun MovPersonaje Hacer
		'S':
			Vertical<-Vertical-1
		'W':
			Vertical<-Vertical+1
	Fin Segun
Fin Funcion

Funcion  Horizontal<-MovimientoHorizontal(Horizontal,MovPersonaje)
	Segun MovPersonaje Hacer
		'A':
			Horizontal<-Horizontal-1
		'D':
			Horizontal<-Horizontal+1
	Fin Segun
Fin Funcion
