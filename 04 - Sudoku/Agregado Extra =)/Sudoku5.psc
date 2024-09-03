Algoritmo Sudoku
	Definir MatrizResuelta,i,j Como Entero
	Definir MatrizVacia Como Caracter
	Dimension MatrizResuelta[9,9]
	Dimension MatrizVacia[9,9]
	
	ResolverMatriz(MatrizResuelta)

	Para i<-0 Hasta 8 Con Paso 1 Hacer
		Para j<-0 Hasta 8 Con Paso 1 Hacer
			MatrizVacia[i,j]<-"_"
			Si i=j Entonces
				MatrizVacia[i,j]<-ConvertirATexto(MatrizResuelta[i,j])
			Fin Si
		Fin Para
	Fin Para
	
	MostrarMatriz(MatrizVacia)
	Escribir "Ingrese una tecla para continuar.."
	Esperar Tecla
	
	MostrarMatriz(MatrizResuelta)
FinAlgoritmo


Funcion ResolverMatriz( Sud )
	Dimension NumDisponible[9]
	Definir i,j,k,m,n,contador,NumDisponible,contadorAzar,NumAzar,NumRetrocesoX, NumRetrocesoY,CuadranteX, CuadranteY,Acumulador Como Entero
	Definir Error Como Caracter
	Definir SolucionInvalida, NumRepetido,VerificadorNumerico Como Logico
	Limpiar Pantalla
	Carga()
	Repetir
		Para i<-0 Hasta 8 Con Paso 1 Hacer
			Para j<-0 Hasta 8 Con Paso 1 Hacer
				contador<-0
				//rellena todos los numeros disponibles en 1 NOTA: NumDisponible[0] es el num 1, NumDisponible[1]es 2
				Para n<-0 Hasta 8 Con Paso 1 Hacer
					NumDisponible[n]=1
				Fin Para
				
				Repetir
					Error<-''
					NumRepetido<-Falso
					SolucionInvalida<-Falso
					contadorAzar<-0
					Repetir
						NumAzar<-Azar(9)
						contadorAzar<-contadorAzar+1
					Hasta Que NumDisponible[NumAzar]=1 o contadorAzar=100
					Sud[i,j]<-NumAzar+1
					
					//VERIFICACION SI SE REPITE EN FILA
					si j>0
						Para k<-0 Hasta j-1 Con Paso 1 Hacer
							Si Sud[i,j]=Sud[i,k] Entonces
								NumRepetido<-Verdadero
								Error<-'F'
								NumRetrocesoX<-i
								NumRetrocesoY<-k
								NumDisponible[NumAzar]=0
							Fin Si
						Fin Para
					Fin Si
					
					//VERIFICACION SI SE REPITE EN COLUMNA
					
					si i>0
						Para k<-0 Hasta i-1 Con Paso 1 Hacer
							Si Sud[i,j]=Sud[k,j] Entonces
								NumRepetido<-Verdadero
								Error<-'C'
								NumRetrocesoX<-j
								NumRetrocesoY<-k
								NumDisponible[NumAzar]=0
							Fin Si
						Fin Para
					Fin Si
					
					
					
					//VERIFICACION SI SE REPITE EN CUADRANTE 3X3
					
					Si i>0 Entonces
						CuadranteX<-j mod 3
						CuadranteY<-i mod 3
						
						Segun CuadranteY Hacer
							1:
								Para m<-0 Hasta 2 Con Paso 1 Hacer
									Si Sud[i,j]=Sud[i-1,j-CuadranteX+m] Entonces
										NumRepetido<-Verdadero
										Error<-'R'
										NumRetrocesoX<-j-CuadranteX+m
										NumRetrocesoY<-i-1
										NumDisponible[NumAzar]=0
									Fin Si
								Fin Para
							2:
								Para m<-0 Hasta 2 Con Paso 1 Hacer
									Si Sud[i,j]=Sud[i-1,j-CuadranteX+m] Entonces
										NumRepetido<-Verdadero
										Error<-'R'
										NumRetrocesoX<-j-CuadranteX+m
										NumRetrocesoY<-i-1
										NumDisponible[NumAzar]=0
									Fin Si
									Si Sud[i,j]=Sud[i-2,j-CuadranteX+m] Entonces
										NumRepetido<-Verdadero
										Error<-'R'
										NumRetrocesoX<-j-CuadranteX+m
										NumRetrocesoY<-i-2
										NumDisponible[NumAzar]=0
									Fin Si
								Fin Para
						Fin Segun
					FinSi
					
					
					contador<-contador+1
					si contador=10 Entonces
						SolucionInvalida<-Verdadero
						Si Error='F' Entonces
							j<-NumRetrocesoX-1
						SiNo	
							Si Error='C' Entonces
								i<-NumRetrocesoY
							SiNo
								Si Error='R' Entonces
									i<-NumRetrocesoY
									j<-NumRetrocesoX-1
								FinSi
							FinSi
						FinSi
					FinSi
				Hasta Que NumRepetido=Falso O SolucionInvalida=Verdadero
			Fin Para
		Fin Para
		
		Para i<-0 Hasta 8 Con Paso 1 Hacer
			Para j<-0 Hasta 8 Con Paso 1 Hacer
				Acumulador<-Acumulador+Sud[i,j]
			Fin Para
		Fin Para
		
		Si Acumulador=405 Entonces
			VerificadorNumerico<-Verdadero
		SiNo
			VerificadorNumerico<-Falso
		Fin Si
	Hasta Que VerificadorNumerico=Verdadero
	
Fin Funcion


Funcion MostrarMatriz(MatrizResuelta)
	definir i,j Como Entero
	Limpiar Pantalla
	Escribir "*******************************************************************************"
	Escribir "*                                                                             *"
	Escribir "*                                                                             *"
	Escribir "*                                                                             *"
	Escribir "*                                                                             *"
	Escribir "*                                                                             *"
	Escribir "*                                                                             *"
	Escribir "*                                                                             *"
	Escribir "*                          A  B  C    D  E  F    G  H  I                      *"
	Escribir "*                       ++=========++=========++=========++                   *"
	Para i<-0 Hasta 8 Con Paso 1 Hacer
		Escribir  Sin Saltar "*                    ",i+1,"- "
		Escribir Sin Saltar "|| "
		Para j<-0 Hasta 8 Con Paso 1 Hacer
			Escribir Sin Saltar MatrizResuelta[i,j]
			Si j mod 3 =2 Entonces
				Escribir Sin Saltar " || "
			SiNo
				Escribir Sin Saltar "  "
			FinSi
		Fin Para
		Escribir  Sin Saltar "                  *"
		Si i mod 3 =2 Entonces
			Escribir ""
			Escribir "*                       ++=========++=========++=========++                   *"
		SiNo
			Escribir ""
		FinSi
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


Funcion Carga
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
	Escribir "*                                                                             *"
	Escribir "*                                                                             *"
	Escribir "*                                                                             *"
	Escribir "*                                                                             *"
	Escribir "*                       Cargando... Por favor espere...                       *"
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
	Escribir "*                                                                             *"
	Escribir "*                                                                             *"
	Escribir "*                                                                             *"
	Escribir "*                                                                             *"
	Escribir "*******************************************************************************"
Fin Funcion


