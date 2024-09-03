Algoritmo Batalla_Naval
	Definir i,j,BarcosDisponibles, VectorCoordenadas,LargoBarco,BarcosColocados,Jugador,CantidadJugadores,OrientacionAzar,BarcosExplotados,GuardadoCoordenada,GuardadoCoordenadaAzar,PruebaCPU Como Entero
	Definir TableroCargaJ1,TableroCargaJ2,TableroBatalla,OrientacionBarco,LargoBarcoTexto,CantidadJugadoresTexto Como Caracter
	Definir ValidezBarco,CoordenadaValida,TiroAlAzar,flag Como Logico
	Dimension TableroCargaJ1[10,10]
	Dimension TableroCargaJ2[10,10]
	Dimension TableroBatalla[10,10,2]
	Dimension BarcosDisponibles[4]
	Dimension VectorCoordenadas[2]
	Dimension BarcosExplotados[2]
	Dimension GuardadoCoordenada[2]
	Dimension GuardadoCoordenadaAzar[2]

	Limpiar Pantalla
	Para i<-0 Hasta 9 Con Paso 1 Hacer
		Para j<-0 Hasta 9 Con Paso 1 Hacer
			TableroCargaJ1[i,j]<-" "
			TableroCargaJ2[i,j]<-" "
		Fin Para
	Fin Para
	
	Repetir
		Escribir "Ingrese el modo de juego:"
		Escribir "1- Player vs CPU"
		Escribir "2- Jugador vs Jugador"
		Leer CantidadJugadoresTexto
		Segun CantidadJugadoresTexto Hacer
			"1":
				CantidadJugadores<-1
			"2":
				CantidadJugadores<-2
		Fin Segun
		Limpiar Pantalla
	Hasta Que CantidadJugadores>0 y CantidadJugadores<3

	
//JUGADOR 1
	BarcosDisponibles[0]<-1
	BarcosDisponibles[1]<-1
	BarcosDisponibles[2]<-2
	BarcosDisponibles[3]<-1
	BarcosColocados<-0
	Jugador<-1
	
	Repetir
		//Seleccion de barco
		Repetir
			ValidezBarco<-Verdadero
			VisualBN(TableroCargaJ1,BarcosDisponibles,Jugador)
			Escribir 'Ingrese la longitud del barco a colocar (1-2-3-4):"
			Leer LargoBarcoTexto
			Segun LargoBarcoTexto Hacer
				"1":
					LargoBarco<-1
				"2":
					LargoBarco<-2
				"3":
					LargoBarco<-3
				"4":
					LargoBarco<-4
				De Otro Modo:
					LargoBarco<-1
					ValidezBarco<-Falso
			Fin Segun
			Limpiar Pantalla
			
			//Comprobacion de si tiene el barco disponible
			Si ValidezBarco=Verdadero Entonces
				Si BarcosDisponibles[LargoBarco-1]=0 Entonces
					ValidezBarco<-Falso
					NoTieneBarco
				SiNo
					ValidezBarco<-Verdadero
				Fin Si
			Fin Si
			
		Hasta Que LargoBarco>0 y LargoBarco<5 y ValidezBarco=Verdadero
		
		//Seleccion de orientacion
		Repetir
			VisualBN(TableroCargaJ1,BarcosDisponibles,Jugador)
			Escribir 'Ingrese La orientación del barco (H:Horizontal, V:vertical):"
			Leer OrientacionBarco
			OrientacionBarco<-Mayusculas(OrientacionBarco)
			Limpiar Pantalla
		Hasta Que OrientacionBarco="H" o OrientacionBarco="V"
		
		//Seleccion de Coordenadas
		Repetir
			VisualBN(TableroCargaJ1,BarcosDisponibles,Jugador)
			CoordenadaValida<-IngresoDeCoordenadas(VectorCoordenadas)
			Limpiar Pantalla
		Hasta Que CoordenadaValida=Verdadero
		
		//Validez de ubicacion del barco con los bordes
		Para i<-0 Hasta 2 Con Paso 1 Hacer
			Si LargoBarco>i+1 y OrientacionBarco="H" y VectorCoordenadas[1]>8-i Entonces
				ValidezBarco<-Falso
			Fin Si
		Fin Para
		Para i<-0 Hasta 2 Con Paso 1 Hacer
			Si LargoBarco>i+1 y OrientacionBarco="V" y VectorCoordenadas[0]>8-i Entonces
				ValidezBarco<-Falso
			Fin Si
		Fin Para
		
		//Validez de ubicacion del barco con barcos superpuestos
		Si ValidezBarco=Verdadero Entonces
			Para i<-0 Hasta LargoBarco-1 Con Paso 1 Hacer
				Si OrientacionBarco="V" Entonces
					Si (TableroCargaJ1[VectorCoordenadas[0]+i,VectorCoordenadas[1]]="*") Entonces
						ValidezBarco<-Falso
					Fin Si
				Fin Si
				Si OrientacionBarco="H" Entonces
					Si (TableroCargaJ1[VectorCoordenadas[0],VectorCoordenadas[1]+i]="*") Entonces
						ValidezBarco<-Falso
					Fin Si
				Fin Si
			Fin Para
		Fin Si
		
		//Colocacion  de barcos
		Si ValidezBarco=Verdadero Entonces
			Para i<-0 Hasta LargoBarco-1 Con Paso 1 Hacer
				Si OrientacionBarco="H" Entonces
					TableroCargaJ1[VectorCoordenadas[0],VectorCoordenadas[1]+i]<-"*"
				SiNo
					Si OrientacionBarco="V" Entonces
						TableroCargaJ1[VectorCoordenadas[0]+i,VectorCoordenadas[1]]<-"*"
					Fin Si
				Fin Si
				VisualBN(TableroCargaJ1,BarcosDisponibles,Jugador)
				esperar 200 Milisegundos
				Limpiar Pantalla
			Fin Para
			BarcosDisponibles[LargoBarco-1]<-BarcosDisponibles[LargoBarco-1]-1
			BarcosColocados<-BarcosColocados+1
		SiNo
			ErrorDeBarco
		Fin Si
	Hasta Que BarcosColocados=5
	
//JUGADOR 2
	BarcosDisponibles[0]<-1
	BarcosDisponibles[1]<-1
	BarcosDisponibles[2]<-2
	BarcosDisponibles[3]<-1
	BarcosColocados<-0
	Jugador<-2
	
	Repetir
		//Seleccion de barco
		Repetir
			ValidezBarco<-Verdadero
			Si CantidadJugadores=2 Entonces
				VisualBN(TableroCargaJ2,BarcosDisponibles,Jugador)
				Escribir 'Ingrese la longitud del barco a colocar (1-2-3-4):"
				Leer LargoBarcoTexto
				Segun LargoBarcoTexto Hacer
					"1":
						LargoBarco<-1
					"2":
						LargoBarco<-2
					"3":
						LargoBarco<-3
					"4":
						LargoBarco<-4
					De Otro Modo:
						LargoBarco<-1
						ValidezBarco<-Falso
				Fin Segun
				Limpiar Pantalla
			SiNo
				
				//Seleccion de Barco para CPU
				Si BarcosColocados=4 Entonces
					LargoBarco<-3
				SiNo
					LargoBarco<-BarcosColocados+1
				Fin Si
				Limpiar Pantalla
			Fin Si
			
			//Comprobacion de si tiene el barco disponible
			Si ValidezBarco=Verdadero Entonces
				Si BarcosDisponibles[LargoBarco-1]=0 Entonces
					ValidezBarco<-Falso
					Si CantidadJugadores=2 Entonces
						NoTieneBarco
					Fin Si
				SiNo
					ValidezBarco<-Verdadero
				Fin Si
			Fin Si
		Hasta Que LargoBarco>0 y LargoBarco<5 y ValidezBarco=Verdadero
		
		//Seleccion de orientacion
		Repetir
			Si CantidadJugadores=2 Entonces
				VisualBN(TableroCargaJ2,BarcosDisponibles,Jugador)
				Escribir 'Ingrese La orientación del barco (H:Horizontal, V:vertical):"
				Leer OrientacionBarco
				OrientacionBarco<-Mayusculas(OrientacionBarco)
				Limpiar Pantalla
			SiNo
				OrientacionAzar<-Azar(2)+1
				Segun OrientacionAzar Hacer
					1:
						OrientacionBarco<-"H"
					2:
						OrientacionBarco<-"V"
				Fin Segun
			Fin Si
		Hasta Que OrientacionBarco="H" o OrientacionBarco="V"
		
		//Seleccion de Coordenadas
		Repetir
			Si CantidadJugadores=2 Entonces
				VisualBN(TableroCargaJ2,BarcosDisponibles,Jugador)
				CoordenadaValida<-IngresoDeCoordenadas(VectorCoordenadas)
				Limpiar Pantalla
			SiNo
				Segun OrientacionBarco Hacer
					"H":
						Segun LargoBarco Hacer
							1:
								VectorCoordenadas[0]<-Azar(10)
							2:
								VectorCoordenadas[0]<-Azar(9)
							3:
								VectorCoordenadas[0]<-Azar(8)
							4:
								VectorCoordenadas[0]<-Azar(7)
						Fin Segun
					"V":
						Segun LargoBarco Hacer
							1:
								VectorCoordenadas[1]<-Azar(10)
							2:
								VectorCoordenadas[1]<-Azar(9)
							3:
								VectorCoordenadas[1]<-Azar(8)
							4:
								VectorCoordenadas[1]<-Azar(7)
						Fin Segun
				Fin Segun
				CoordenadaValida<-Verdadero
			Fin Si
		Hasta Que CoordenadaValida=Verdadero
		
		//Validez de ubicacion del barco con los bordes
		Para i<-0 Hasta 2 Con Paso 1 Hacer
			Si LargoBarco>i+1 y OrientacionBarco="H" y VectorCoordenadas[1]>8-i Entonces
				ValidezBarco<-Falso
			Fin Si
		Fin Para
		Para i<-0 Hasta 2 Con Paso 1 Hacer
			Si LargoBarco>i+1 y OrientacionBarco="V" y VectorCoordenadas[0]>8-i Entonces
				ValidezBarco<-Falso
			Fin Si
		Fin Para
		
		//Validez de ubicacion del barco con barcos superpuestos
		Si ValidezBarco=Verdadero Entonces
			Para i<-0 Hasta LargoBarco-1 Con Paso 1 Hacer
				Si OrientacionBarco="V" Entonces
					Si (TableroCargaJ2[VectorCoordenadas[0]+i,VectorCoordenadas[1]]="*") Entonces
						ValidezBarco<-Falso
					Fin Si
				Fin Si
				Si OrientacionBarco="H" Entonces
					Si (TableroCargaJ2[VectorCoordenadas[0],VectorCoordenadas[1]+i]="*") Entonces
						ValidezBarco<-Falso
					Fin Si
				Fin Si
			Fin Para
		Fin Si
		
		//Colocacion  de barcos
		Si ValidezBarco=Verdadero Entonces
			Para i<-0 Hasta LargoBarco-1 Con Paso 1 Hacer
				Si OrientacionBarco="H" Entonces
					TableroCargaJ2[VectorCoordenadas[0],VectorCoordenadas[1]+i]<-"*"
				SiNo
					Si OrientacionBarco="V" Entonces
						TableroCargaJ2[VectorCoordenadas[0]+i,VectorCoordenadas[1]]<-"*"
					Fin Si
				Fin Si
				Si CantidadJugadores=2 Entonces
					VisualBN(TableroCargaJ2,BarcosDisponibles,Jugador)
					esperar 200 Milisegundos
					Limpiar Pantalla
				Fin Si
			Fin Para
			BarcosDisponibles[LargoBarco-1]<-BarcosDisponibles[LargoBarco-1]-1
			BarcosColocados<-BarcosColocados+1
		SiNo
			Si CantidadJugadores=2 Entonces
				ErrorDeBarco
			Fin Si
		Fin Si
	Hasta Que BarcosColocados=5
	
	
//Empieza la batalla
	BarcosExplotados[0]<-0
	BarcosExplotados[1]<-0
	flag<-falso
	PruebaCPU<-0
	Para i<-0 Hasta 9 Con Paso 1 Hacer
		Para j<-0 Hasta 9 Con Paso 1 Hacer
			TableroBatalla[i,j,0]<-TableroCargaJ1[i,j] //esto despues tiene que ser " " - TableroCargaJ1[i,j] Para los barcos visibles
			TableroBatalla[i,j,1]<-TableroCargaJ2[i,j] //esto despues tiene que ser " " - TableroCargaJ2[i,j] Para los barcos visibles
		Fin Para
	Fin Para	
	
	Repetir
		//A quien le toca jugar
		Si Jugador=2 Entonces
			Jugador<-1
		SiNo
			Jugador<-2
		Fin Si
		TurnoDelJugador(Jugador)
		
		//Seleccion de Coordenadas
		Si Jugador=1 Entonces
			Repetir
				TableroDeJuego(TableroBatalla,Jugador)
				CoordenadaValida<-IngresoDeCoordenadas(VectorCoordenadas)
				Limpiar Pantalla
			Hasta Que CoordenadaValida=Verdadero
		SiNo
			Si CantidadJugadores=2 Entonces
				Repetir
					TableroDeJuego(TableroBatalla,Jugador)
					CoordenadaValida<-IngresoDeCoordenadas(VectorCoordenadas)
					Limpiar Pantalla
				Hasta Que CoordenadaValida=Verdadero
			SiNo
				///////////////////////////////////////////////////// A REVISAR ///////////////////////////////////////////////
				//Seleccion de Coords Para CPU
				Segun PruebaCPU Hacer
					1:
						VectorCoordenadas[0]<-GuardadoCoordenada[0]+1
						VectorCoordenadas[1]<-GuardadoCoordenada[1]
						TiroAlAzar<-Falso
					2:
						VectorCoordenadas[0]<-GuardadoCoordenada[0]-1
						VectorCoordenadas[1]<-GuardadoCoordenada[1]
						TiroAlAzar<-Falso
					3:
						VectorCoordenadas[1]<-GuardadoCoordenada[1]+1
						VectorCoordenadas[0]<-GuardadoCoordenada[0]
						TiroAlAzar<-Falso
					4:
						VectorCoordenadas[1]<-GuardadoCoordenada[1]-1
						VectorCoordenadas[0]<-GuardadoCoordenada[0]
						TiroAlAzar<-Falso
					0:
						Si flag=Verdadero Entonces
							VectorCoordenadas[0]<-GuardadoCoordenadaAzar[0]
							VectorCoordenadas[1]<-GuardadoCoordenadaAzar[1]
							flag<-Falso
						SiNo
							VectorCoordenadas[0]<-Azar(10)
							VectorCoordenadas[1]<-Azar(10)
							TiroAlAzar<-Verdadero
						Fin Si
				Fin Segun
				Si PruebaCPU>0 Entonces
					PruebaCPU<-PruebaCPU-1
				Fin Si
				///////////////////////////////////////////////////// A REVISAR ///////////////////////////////////////////////
			Fin Si
		Fin Si
		
		Si Jugador=1 Entonces
			Si TableroBatalla[VectorCoordenadas[0],VectorCoordenadas[1],1]=" " o TableroBatalla[VectorCoordenadas[0],VectorCoordenadas[1],1]="*" Entonces
				Si TableroCargaJ2[VectorCoordenadas[0],VectorCoordenadas[1]]="*" Entonces
					//ACA LE PEGÓ AL BARCO
					TableroBatalla[VectorCoordenadas[0],VectorCoordenadas[1],1]<-"X"
					Jugador<-2
					BarcosExplotados[0]<-BarcosExplotados[0]+1
					BarcoDañado
				SiNo
					//ACA LE ERRÓ AL BARCO
					Si TableroCargaJ2[VectorCoordenadas[0],VectorCoordenadas[1]]=" " Entonces
						TableroBatalla[VectorCoordenadas[0],VectorCoordenadas[1],1]<-"O"
						BarcoErrado
					Fin Si
				Fin Si
			SiNo
				CoordenadaRepetida
				Jugador<-2
			FinSi
		SiNo
			Si TableroBatalla[VectorCoordenadas[0],VectorCoordenadas[1],0]=" " o TableroBatalla[VectorCoordenadas[0],VectorCoordenadas[1],0]="*" Entonces
				Si TableroCargaJ1[VectorCoordenadas[0],VectorCoordenadas[1]]="*" Entonces
					//ACA LE PEGÓ AL BARCO
					TableroBatalla[VectorCoordenadas[0],VectorCoordenadas[1],0]<-"X"
					Jugador<-1
					BarcosExplotados[1]<-BarcosExplotados[1]+1
					BarcoDañado
					
					///////////////////////////////////////////////////// A REVISAR ///////////////////////////////////////////////
					//Guardado de Coords Para la CPU cuando hace un acierto 
					Si CantidadJugadores=1  Entonces
						GuardadoCoordenada[0]<-VectorCoordenadas[0]
						GuardadoCoordenada[1]<-VectorCoordenadas[1]
						PruebaCPU<-4
						Si TiroAlAzar=Verdadero Entonces
							GuardadoCoordenadaAzar[0]<-VectorCoordenadas[0]
							GuardadoCoordenadaAzar[1]<-VectorCoordenadas[1]
							flag<-Verdadero
						FinSi
					Fin Si
					///////////////////////////////////////////////////// A REVISAR ///////////////////////////////////////////////
				SiNo
					//ACA LE ERRÓ AL BARCO
					Si TableroCargaJ1[VectorCoordenadas[0],VectorCoordenadas[1]]=" " Entonces
						TableroBatalla[VectorCoordenadas[0],VectorCoordenadas[1],0]<-"O"
						BarcoErrado
					Fin Si
				Fin Si
			SiNo
				
				Si CantidadJugadores=2 Entonces
					CoordenadaRepetida
					Esperar Tecla
				FinSi
				Jugador<-1
			FinSi
		FinSi
	Hasta Que BarcosExplotados[0]=13 O BarcosExplotados[1]=13
FinAlgoritmo


//Funcion REFERENCIADEESPACIOS ( Argumentos )
//	Escribir "*******************************************************************************"
//	Escribir "*                                                                             *"
//	Escribir "*                                                                             *"
//	Escribir "*                                                                             *"
//	Escribir "*                                                                             *"
//	Escribir "*                                                                             *"
//	Escribir "*                                                                             *"
//	Escribir "*                                                                             *"
//	Escribir "*                                                                             *"
//	Escribir "*                                                                             *"
//	Escribir "*                                                                             *"
//	Escribir "*                                                                             *"
//	Escribir "*                                                                             *"
//	Escribir "*                                                                             *"
//	Escribir "*                                                                             *"
//	Escribir "*                                                                             *"
//	Escribir "*                                                                             *"
//	Escribir "*                                                                             *"
//	Escribir "*                                                                             *"
//	Escribir "*                                                                             *"
//	Escribir "*                                                                             *"
//	Escribir "*                                                                             *"
//	Escribir "*                                                                             *"
//	Escribir "*                                                                             *"
//	Escribir "*                                                                             *"
//	Escribir "*                                                                             *"
//	Escribir "*                                                                             *"
//	Escribir "*                                                                             *"
//	Escribir "*                                                                             *"
//	Escribir "*                                                                             *"
//	Escribir "*                                                                             *"
//	Escribir "*******************************************************************************"
//Fin Funcion

Funcion  VisualBN ( Tablero,BarcosDisponibles,Jugador)
	
	definir i, j Como Entero
	Escribir "*******************************************************************************"
	Escribir "*                                                                             *"
	Escribir "*                                                                             *"
	Escribir "*                                                                             *"
	Escribir "*                                                                             *"
	Escribir "*                                                                             *"
	Escribir "*                                                                             *"
	Escribir "*                                                                             *"
	Escribir "*                Jugador  ",Jugador,"           [1] [2] [3] [4]                         *"
	Escribir Sin Saltar "*                Barcos Disponibles:   "
	Para i<-0 Hasta 3 Con Paso 1 Hacer
		Escribir Sin Saltar BarcosDisponibles[i]
		Si i<3 Entonces
			Escribir Sin Saltar " - "
		Fin Si
	Fin Para
	Escribir  "                          *"
	Escribir "*                                                                             *"
	Escribir "*                      A   B   C   D   E   F   G   H   I   J                  *"
	Para i<-0 Hasta 9 Con Paso 1 Hacer
		Escribir Sin Saltar"*                 "
		Escribir Sin Saltar i+1
		Si i<9 Entonces
			Escribir Sin Saltar"-  "
		SiNo
			Escribir Sin Saltar"- "
		Fin Si
		Para j<-0 Hasta 9 Con Paso 1 Hacer
			Escribir Sin Saltar "[",Tablero[i,j],"] "
		Fin Para
		Escribir Sin Saltar "                *"
		Escribir ""
	Fin Para
	Escribir "*                                                                             *"
	Escribir "*                                                                             *"
	Escribir "*                                                                             *"
	Escribir "*                                                                             *"
	Escribir "*                                                                             *"
	Escribir "*                                                                             *"
	Escribir "*                                                                             *"
	Escribir "*                                                                             *"
	Escribir "*                                                                             *"
	Escribir "*******************************************************************************"
Fin Funcion

Funcion CoordenadaValida<-IngresoDeCoordenadas(VectorCoordenadas)
	Definir Coordenadas,Fila,Columna Como Caracter
	Definir Cantidad, i Como Entero
	Definir CoordenadaValida Como Logico
	Escribir "Ingrese Coordenadas (LetraNumero: Ej: A1)"
	
	CoordenadaValida<-Verdadero
	leer Coordenadas
	Cantidad<-Longitud(Coordenadas)
	
	Si Cantidad=2 Entonces
		Columna<-Mayusculas(Subcadena(Coordenadas,0,0))
		
		Segun Columna Hacer
			"A":
				VectorCoordenadas[1]<-0
			"B":
				VectorCoordenadas[1]<-1
			"C":
				VectorCoordenadas[1]<-2
			"D":
				VectorCoordenadas[1]<-3
			"E":
				VectorCoordenadas[1]<-4
			"F":
				VectorCoordenadas[1]<-5
			"G":
				VectorCoordenadas[1]<-6
			"H":
				VectorCoordenadas[1]<-7
			"I":
				VectorCoordenadas[1]<-8
			"J": 
				VectorCoordenadas[1]<-9
			De Otro Modo:
				CoordenadaValida<-Falso
		Fin Segun
		
		Fila<-Subcadena(Coordenadas,1,1)
		Segun Fila  Hacer
			'1':
				VectorCoordenadas[0]<-0
			'2':
				VectorCoordenadas[0]<-1
			'3':
				VectorCoordenadas[0]<-2
			'4':
				VectorCoordenadas[0]<-3
			'5':
				VectorCoordenadas[0]<-4
			'6':
				VectorCoordenadas[0]<-5
			'7':
				VectorCoordenadas[0]<-6
			'8':
				VectorCoordenadas[0]<-7
			'9':
				VectorCoordenadas[0]<-8
			'10': 
				VectorCoordenadas[0]<-9
			De Otro Modo:
				CoordenadaValida<-Falso
		Fin Segun
	SiNo
		Si Cantidad=3 Entonces
			Columna<-Mayusculas(Subcadena(Coordenadas,0,0))
			
			Segun Columna Hacer
				"A":
					VectorCoordenadas[1]<-0
				"B":
					VectorCoordenadas[1]<-1
				"C":
					VectorCoordenadas[1]<-2
				"D":
					VectorCoordenadas[1]<-3
				"E":
					VectorCoordenadas[1]<-4
				"F":
					VectorCoordenadas[1]<-5
				"G":
					VectorCoordenadas[1]<-6
				"H":
					VectorCoordenadas[1]<-7
				"I":
					VectorCoordenadas[1]<-8
				"J": 
					VectorCoordenadas[1]<-9
				De Otro Modo:
					CoordenadaValida<-Falso
			Fin Segun
			
			Fila<-Subcadena(Coordenadas,1,2)
			Si Fila="10" Entonces
				VectorCoordenadas[0]<-9
			SiNo
				CoordenadaValida<-Falso
			Fin Si
		SiNo
			CoordenadaValida<-Falso
		Fin Si
	Fin Si
Fin Funcion

Funcion ErrorDeBarco
	Limpiar Pantalla
	Escribir "*******************************************************************************"
	Escribir "*                                                                             *"
	Escribir "*                                                                             *"
	Escribir "*                                                                             *"
	Escribir "*                                                                             *"
	Escribir "*                                                                             *"
	Escribir "*                                                                             *"
	Escribir "*                                                                             *"
	Escribir "*                                                                             *"
	Escribir "*                                 |\                                          *"
	Escribir "*                                 | \                                         *"
	Escribir "*                                 |__\                                        *"
	Escribir "*                                 |                                           *"
	Escribir "*                         ________|________                                   *"
	Escribir "*                         \               /                                   *"
	Escribir "*                          \_____________/                                    *"
	Escribir "*                                                                             *"
	Escribir "*                                                                             *"
	Escribir "*                     ERROR: NO ENTRA UN BARCO AHI                            *"
	Escribir "*                                                                             *"
	Escribir "*                    PULSE UNA TECLA PARA CONTINUAR..                         *"
	Escribir "*                                                                             *"
	Escribir "*                                                                             *"
	Escribir "*                                                                             *"
	Escribir "*                                                                             *"
	Escribir "*                                                                             *"
	Escribir "*                                                                             *"
	Escribir "*                                                                             *"
	Escribir "*                                                                             *"
	Escribir "*                                                                             *"
	Escribir "*                                                                             *"
	Escribir "*******************************************************************************"
	Esperar Tecla
	Limpiar Pantalla
Fin Funcion

Funcion NoTieneBarco
	Limpiar Pantalla
	Escribir "*******************************************************************************"
	Escribir "*                                                                             *"
	Escribir "*                                                                             *"
	Escribir "*                                                                             *"
	Escribir "*                                                                             *"
	Escribir "*                                                                             *"
	Escribir "*                                                                             *"
	Escribir "*                                                                             *"
	Escribir "*                                                                             *"
	Escribir "*                                 |\                                          *"
	Escribir "*                                 | \                                         *"
	Escribir "*                                 |__\                                        *"
	Escribir "*                                 |                                           *"
	Escribir "*                         ________|________                                   *"
	Escribir "*                         \               /                                   *"
	Escribir "*                          \_____________/                                    *"
	Escribir "*                                                                             *"
	Escribir "*                                                                             *"
	Escribir "*                ERROR: NO TE QUEDAN BARCOS DE ESE LARGO                      *"
	Escribir "*                                                                             *"
	Escribir "*                    PULSE UNA TECLA PARA CONTINUAR..                         *"
	Escribir "*                                                                             *"
	Escribir "*                                                                             *"
	Escribir "*                                                                             *"
	Escribir "*                                                                             *"
	Escribir "*                                                                             *"
	Escribir "*                                                                             *"
	Escribir "*                                                                             *"
	Escribir "*                                                                             *"
	Escribir "*                                                                             *"
	Escribir "*                                                                             *"
	Escribir "*******************************************************************************"
	Esperar Tecla
	Limpiar Pantalla
Fin Funcion

//Funcion TableroDeJuego
//	Escribir "*******************************************************************************"
//	Escribir "*                                  JUGADOR 1                                  *"
//	Escribir "*                                                                             *"
//	Escribir "*                              TABLERO DEL RIVAL                              *"
//	Escribir "*                      A   B   C   D   E   F   G   H   I   J                  *"
//	Escribir "*                  1- [ ] [ ] [ ] [ ] [ ] [ ] [ ] [ ] [ ] [ ]                 *"
//	Escribir "*                  2- [ ] [ ] [ ] [ ] [ ] [ ] [ ] [ ] [ ] [ ]                 *"
//	Escribir "*                  3- [ ] [ ] [ ] [ ] [ ] [ ] [ ] [ ] [ ] [ ]                 *"
//	Escribir "*                  4- [ ] [ ] [ ] [ ] [ ] [ ] [ ] [ ] [ ] [ ]                 *"
//	Escribir "*                  5- [ ] [ ] [ ] [ ] [ ] [ ] [ ] [ ] [ ] [ ]                 *"
//	Escribir "*                  6- [ ] [ ] [ ] [ ] [ ] [ ] [ ] [ ] [ ] [ ]                 *"
//	Escribir "*                  7- [ ] [ ] [ ] [ ] [ ] [ ] [ ] [ ] [ ] [ ]                 *"
//	Escribir "*                  8- [ ] [ ] [ ] [ ] [ ] [ ] [ ] [ ] [ ] [ ]                 *"
//	Escribir "*                  9- [ ] [ ] [ ] [ ] [ ] [ ] [ ] [ ] [ ] [ ]                 *"
//	Escribir "*                 10- [ ] [ ] [ ] [ ] [ ] [ ] [ ] [ ] [ ] [ ]                 *"
//	Escribir "*                                                                             *"
//	Escribir "*                                                                             *"
//	Escribir "*                                  TU TABLERO                                 *"
//	Escribir "*                      A   B   C   D   E   F   G   H   I   J                  *"
//	Escribir "*                  1- [ ] [ ] [ ] [ ] [ ] [ ] [ ] [ ] [ ] [ ]                 *"
//	Escribir "*                  2- [ ] [ ] [ ] [ ] [ ] [ ] [ ] [ ] [ ] [ ]                 *"
//	Escribir "*                  3- [ ] [ ] [ ] [ ] [ ] [ ] [ ] [ ] [ ] [ ]                 *"
//	Escribir "*                  4- [ ] [ ] [ ] [ ] [ ] [ ] [ ] [ ] [ ] [ ]                 *"
//	Escribir "*                  5- [ ] [ ] [ ] [ ] [ ] [ ] [ ] [ ] [ ] [ ]                 *"
//	Escribir "*                  6- [ ] [ ] [ ] [ ] [ ] [ ] [ ] [ ] [ ] [ ]                 *"
//	Escribir "*                  7- [ ] [ ] [ ] [ ] [ ] [ ] [ ] [ ] [ ] [ ]                 *"
//	Escribir "*                  8- [ ] [ ] [ ] [ ] [ ] [ ] [ ] [ ] [ ] [ ]                 *"
//	Escribir "*                  9- [ ] [ ] [ ] [ ] [ ] [ ] [ ] [ ] [ ] [ ]                 *"
//	Escribir "*                 10- [ ] [ ] [ ] [ ] [ ] [ ] [ ] [ ] [ ] [ ]                 *"
//	Escribir "*                                                                             *"
//	Escribir "*                                                                             *"
//	Escribir "*******************************************************************************"
//Fin Funcion



Funcion TableroDeJuego(TableroBatalla,Jugador)
	Definir i,j Como Entero
	Escribir "*******************************************************************************"
	Escribir "*                                  JUGADOR ",Jugador,"                                  *"
	Escribir "*                                                                             *"
	Escribir "*                              TABLERO DEL RIVAL                              *"
	Escribir "*                      A   B   C   D   E   F   G   H   I   J                  *"
	Para i<-0 Hasta 9 Con Paso 1 Hacer
		Escribir Sin Saltar"*                 "
		Escribir Sin Saltar i+1
		Si i<9 Entonces
			Escribir Sin Saltar"-  "
		SiNo
			Escribir Sin Saltar"- "
		Fin Si
		Para j<-0 Hasta 9 Con Paso 1 Hacer
			Escribir Sin Saltar "[",TableroBatalla[i,j,2-Jugador],"] "
		Fin Para
		Escribir Sin Saltar "                *"
		Escribir ""
	Fin Para
	Escribir "*                                                                             *"
	Escribir "*                                                                             *"
	Escribir "*                                  TU TABLERO                                 *"
	Escribir "*                      A   B   C   D   E   F   G   H   I   J                  *"
	Para i<-0 Hasta 9 Con Paso 1 Hacer
		Escribir Sin Saltar"*                 "
		Escribir Sin Saltar i+1
		Si i<9 Entonces
			Escribir Sin Saltar"-  "
		SiNo
			Escribir Sin Saltar"- "
		Fin Si
		Para j<-0 Hasta 9 Con Paso 1 Hacer
			Escribir Sin Saltar "[",TableroBatalla[i,j,abs(1-Jugador)],"] "
		Fin Para
		Escribir Sin Saltar "                *"
		Escribir ""
	Fin Para
	Escribir "*                                                                             *"
	Escribir "*                                                                             *"
	Escribir "*******************************************************************************"
Fin Funcion

Funcion BarcoDañado
	Definir i,j Como Entero
	Para i<-0 Hasta 13 Con Paso 1 Hacer
		Limpiar Pantalla
		Escribir "*******************************************************************************"
		Para j<-0 Hasta i Con Paso 1 Hacer
			Escribir "*                                                                             *"
		Fin Para
		Escribir "*                               ___  ___                                      *"
		Escribir "*                               \  \/  /                                      *"
		Escribir "*                                |____|                                       *"
		Escribir "*                                |    |                                       *"
		Escribir "*                                 \__/                                        *"
		Para j<-0 Hasta 13-i Con Paso 1 Hacer
			Escribir "*                                                                             *"
		Fin Para
		Escribir "*                     ______                                                  *"
		Escribir "*                    |      |______                                           *"
		Escribir "*                    |      |      |                                          *"
		Escribir "*       _____________|______|______|________________________________          *"
		Escribir "*       \                                                          /          *"
		Escribir "*~~~~~~~~\~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~/~~~~~~~~~~~*"
		Escribir "*         \______________________________________________________/            *"
		Escribir "*                                                                             *"
		Escribir "*                                                                             *"
		Escribir "*                                                                             *"
		Escribir "*******************************************************************************"
		Esperar 40 Milisegundos
		Limpiar Pantalla
	Fin Para
Fin Funcion

Funcion BarcoErrado
	Definir i,j Como Entero
	
	Para i<-0 Hasta 18 Con Paso 1 Hacer
		Limpiar Pantalla
		Escribir "*******************************************************************************"
		Para j<-0 Hasta i Con Paso 1 Hacer
			Escribir "*                                                                             *"
		Fin Para
		Escribir "*                               ___  ___                                      *"
		Escribir "*                               \  \/  /                                      *"
		Escribir "*                                |____|                                       *"
		Escribir "*                                |    |                                       *"
		Escribir "*                                 \__/                                        *"
		Para j<-0 Hasta 18-i Con Paso 1 Hacer
			Escribir "*                                                                             *"
		Fin Para
		Escribir "*~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~*"
		Escribir "*                ~~                                   ~~              ~~      *"
		Escribir "*     ~~                           ~~                                         *"
		Escribir "*                   ~~                                        ~~              *"
		Escribir "*     ~~                                      ~~                        ~~    *"
		Escribir "*******************************************************************************"
		
		Esperar 40 Milisegundos
		Limpiar Pantalla
	Fin Para
Fin Funcion

Funcion TurnoDelJugador(Jugador)
	Limpiar Pantalla
	Escribir "*******************************************************************************"
	Escribir "*                                                                             *"
	Escribir "*                                                                             *"
	Escribir "*                                                                             *"
	Escribir "*                                                                             *"
	Escribir "*                                                                             *"
	Escribir "*                                                                             *"
	Escribir "*                                                                             *"
	Escribir "*                                                                             *"
	Escribir "*                       TURNO DEL JUGADOR ",Jugador,"                                   *"
	Escribir "*                                                                             *"
	Escribir "*                                                                             *"
	Escribir "*                                                                             *"
	Escribir "*                                                                             *"
	Escribir "*                                                                             *"
	Escribir "*                                                                             *"
	Escribir "*                                                                             *"
	Escribir "*                                                                             *"
	Escribir "*                                                                             *"
	Escribir "*                                                                             *"
	Escribir "*                                                                             *"
	Escribir "*                     ______                                                  *"
	Escribir "*                    |      |______                                           *"
	Escribir "*                    |      |      |                                          *"
	Escribir "*       _____________|______|______|________________________________          *"
	Escribir "*       \                                                          /          *"
	Escribir "*~~~~~~~~\~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~/~~~~~~~~~~~*"
	Escribir "*         \______________________________________________________/            *"
	Escribir "*                                                                             *"
	Escribir "*                                                                             *"
	Escribir "*                                                                             *"
	Escribir "*******************************************************************************"
	Esperar 500 Milisegundos
	Limpiar Pantalla
Fin Funcion

Funcion CoordenadaRepetida
	Limpiar Pantalla
	Escribir "*******************************************************************************"
	Escribir "*                                                                             *"
	Escribir "*                                                                             *"
	Escribir "*                                                                             *"
	Escribir "*                                                                             *"
	Escribir "*                                                                             *"
	Escribir "*                                                                             *"
	Escribir "*                                                                             *"
	Escribir "*                                                                             *"
	Escribir "*                                                                             *"
	Escribir "*                                                                             *"
	Escribir "*                    ERROR: YA USASTE ESA COORDENADA                          *"
	Escribir "*                                                                             *"
	Escribir "*                    PULSE UNA TECLA PARA CONTINUAR..                         *"
	Escribir "*                                                                             *"
	Escribir "*                                                                             *"
	Escribir "*                                                                             *"
	Escribir "*                                                                             *"
	Escribir "*                                                                             *"
	Escribir "*                                                                             *"
	Escribir "*                                                                             *"
	Escribir "*                     ______                                                  *"
	Escribir "*                    |      |______                                           *"
	Escribir "*                    |      |      |                                          *"
	Escribir "*       _____________|______|______|________________________________          *"
	Escribir "*       \                                                          /          *"
	Escribir "*~~~~~~~~\~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~/~~~~~~~~~~~*"
	Escribir "*         \______________________________________________________/            *"
	Escribir "*                                                                             *"
	Escribir "*                                                                             *"
	Escribir "*                                                                             *"
	Escribir "*******************************************************************************"
	Esperar Tecla
	Limpiar Pantalla
Fin Funcion