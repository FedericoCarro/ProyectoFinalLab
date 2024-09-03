Algoritmo Ingreso_De_Coordenadas
	Definir Coordenadas,Fila,Columna Como Caracter
	Definir Cantidad, i,VectorCoordenadas Como Entero
	Definir CoordenadaValida Como Logico
	Dimensionar VectorCoordenadas[2]
	Repetir
		CoordenadaValida<-Verdadero
		Escribir "Ingrese Coordenadas (LetraNumero: Ej: A1)"
		leer Coordenadas
		Cantidad<-Longitud(Coordenadas)

		Si Cantidad=2 Entonces
			Columna<-Mayusculas(Subcadena(Coordenadas,0,0))
			
			Segun Columna Hacer
				"A":
					VectorCoordenadas[0]<-0
				"B":
					VectorCoordenadas[0]<-1
				"C":
					VectorCoordenadas[0]<-2
				"D":
					VectorCoordenadas[0]<-3
				"E":
					VectorCoordenadas[0]<-4
				"F":
					VectorCoordenadas[0]<-5
				"G":
					VectorCoordenadas[0]<-6
				"H":
					VectorCoordenadas[0]<-7
				"I":
					VectorCoordenadas[0]<-8
				"J": 
					VectorCoordenadas[0]<-9
				De Otro Modo:
					CoordenadaValida<-Falso
			Fin Segun
			
			Fila<-Subcadena(Coordenadas,1,1)
			Segun Fila  Hacer
				'1':
					VectorCoordenadas[1]<-0
				'2':
					VectorCoordenadas[1]<-1
				'3':
					VectorCoordenadas[1]<-2
				'4':
					VectorCoordenadas[1]<-3
				'5':
					VectorCoordenadas[1]<-4
				'6':
					VectorCoordenadas[1]<-5
				'7':
					VectorCoordenadas[1]<-6
				'8':
					VectorCoordenadas[1]<-7
				'9':
					VectorCoordenadas[1]<-8
				'10': 
					VectorCoordenadas[1]<-9
				De Otro Modo:
					CoordenadaValida<-Falso
			Fin Segun
		SiNo
			Si Cantidad=3 Entonces
				Columna<-Mayusculas(Subcadena(Coordenadas,0,0))
				
				Segun Columna Hacer
					"A":
						VectorCoordenadas[0]<-0
					"B":
						VectorCoordenadas[0]<-1
					"C":
						VectorCoordenadas[0]<-2
					"D":
						VectorCoordenadas[0]<-3
					"E":
						VectorCoordenadas[0]<-4
					"F":
						VectorCoordenadas[0]<-5
					"G":
						VectorCoordenadas[0]<-6
					"H":
						VectorCoordenadas[0]<-7
					"I":
						VectorCoordenadas[0]<-8
					"J": 
						VectorCoordenadas[0]<-9
					De Otro Modo:
						CoordenadaValida<-Falso
				Fin Segun
				
				Fila<-Subcadena(Coordenadas,1,2)
				Si Fila="10" Entonces
					VectorCoordenadas[1]<-9
				SiNo
					CoordenadaValida<-Falso
				Fin Si
			SiNo
				CoordenadaValida<-Falso
			Fin Si
		Fin Si
		Escribir "Columana: ",Columna
		Escribir "Fila: ",Fila
		Escribir "Columana: ",VectorCoordenadas[0]
		Escribir "Fila: ",VectorCoordenadas[1]
		
	Hasta Que CoordenadaValida=Verdadero
FinAlgoritmo
