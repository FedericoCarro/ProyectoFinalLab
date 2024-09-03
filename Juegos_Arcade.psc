Algoritmo Juegos_Arcade 
	definir opMenu Como Entero

	Repetir
		//Mensaje de bienvenida
		opMenu<-Menu()
		
		Segun opMenu hacer 
			1: 
				JuegoLaberinto()
			2:
				JuegoPacMan()
			3:
				JuegoSudoku()
			4:
				JuegoBatallaNaval()
			5:		
				Escribir "Gracias por jugar, vuelvas prontos"
		FinSegun
	Hasta Que opMenu=5
	
FinAlgoritmo

/// FUNCION MENU
Funcion opMenu<-Menu
	definir opMenu Como Entero
	Repetir
		Escribir "Porfavor seleccione una opción"
		Escribir "1. Laberinto"
		Escribir "2. Pac-Man"
		Escribir "3. Sudoku"
		Escribir "4. Batalla Naval"
		Escribir "5. Salir"
		Leer opMenu		
		Limpiar Pantalla
		si (opMenu<0 O opMenu>6) Entonces
			Escribir "Opcion ingresada imcorrecta porfavor ingrese dentro de las opciones visibles"
		FinSi
	Hasta Que (opMenu>0 Y opMenu<6)
Fin Funcion


///FUNCIONES JUEGO LABERINTO
Funcion JuegoLaberinto
	Limpiar Pantalla
	Dimension VectMovPosibles[17,16]
	definir MovPersonaje,Ceros,Op_Lab Como Caracter
	Definir PosX,PosY,VectMovPosibles,Contador,Llave,CantMov,z,Pausa,Carita Como Entero
	Definir MovSing Como cadena	
	Definir  ii,jj Como Entero
	
	Animacion_Inicio_Lab
	Repetir
		Op_Lab<-Menu_Lab
		Segun Op_Lab Hacer
			"1":
				Limpiar Pantalla
				Pausa<-1
				MovimientosPosibles(VectMovPosibles)
				PosX<-15
				PosY<-15
				Contador<-0
				Llave<-0 //LLAVE 1 es para Ya haberla agarrado, llave 0 es que todavia no se agarró
				Ceros<-"00"
				Carita<-0
				
				//USAR PARA GANAR AL INICIO
//				VectMovPosibles[1,1]<-14 
//				PosX<-1
//				PosY<-1
//				Llave<-1 
				Escribir "*******************************************************************************"
				Escribir "*                                                                             *"
				Escribir "*                                                                             *"
				Escribir "*                                                                             *"
				Escribir "*                                                                             *"
				Escribir "*                                                                             *"
				Escribir "*                                                                             *"
				VisualPorBloques(PosX,PosY,LLave,Contador,Ceros,Carita)
				Escribir "*                                                                             *"
				Escribir "*                                                                             *"
				Escribir "*                                                                             *"
				Escribir "*                                                                             *"
				Escribir "*                                                                             *"
				Escribir "*                                                                             *"
				Escribir "*******************************************************************************"
				Mientras (((PosY<>0 O PosX<>1) o Llave<>1) Y Pausa<>3) Hacer
					
					MovPersonaje<-CargaDeMovimiento(MovPersonaje)
					CantMov<-Longitud(MovPersonaje)
					
					Para z<-0 Hasta CantMov Con Paso 1 Hacer
						MovSing<-Subcadena(MovPersonaje,z,z)
						Si MovSing='P' Entonces
							Pausa<-PausaLaberinto
						Fin Si
					Fin Para
					
					Para z<-0 Hasta CantMov Con Paso 1 Hacer
						MovSing<-Subcadena(MovPersonaje,z,z)
						Si	PosY=12 Y PosX=5 Entonces 						//////////// ACA AGARRA LA LLAVE
							Llave<-1
							Carita<-1
							VectMovPosibles[1,1]<-14
						FinSi
						
						Segun VectMovPosibles[PosY,PosX] Hacer
							1:
								Si MovSing='W' Entonces
									PosY<-MovimientoVertical(PosY,MovSing)
									Contador<-Contador+1
								FinSi
							2:
								Si MovSing='S' Entonces
									PosY<-MovimientoVertical(PosY,MovSing)
									Contador<-Contador+1
								FinSi
							3:
								Si MovSing='A' Entonces
									PosX<-MovimientoHorizontal(PosX,MovSing)
									Contador<-Contador+1
								FinSi
							4:
								Si MovSing='D' Entonces
									PosX<-MovimientoHorizontal(PosX,MovSing)
									Contador<-Contador+1
								FinSi
							5:
								Si MovSing='W'O MovSing="S" Entonces
									PosY<-MovimientoVertical(PosY,MovSing)
									Contador<-Contador+1
								FinSi
							6:
								Si MovSing='A'O MovSing="D" Entonces
									PosX<-MovimientoHorizontal(PosX,MovSing)
									Contador<-Contador+1
								FinSi
							7:
								Si MovSing='W'O MovSing="A" Entonces
									PosX<-MovimientoHorizontal(PosX,MovSing)
									PosY<-MovimientoVertical(PosY,MovSing)
									Contador<-Contador+1
								FinSi
							8:
								Si MovSing='W'O MovSing="D" Entonces
									PosX<-MovimientoHorizontal(PosX,MovSing)
									PosY<-MovimientoVertical(PosY,MovSing)
									Contador<-Contador+1
								FinSi
							9:
								Si MovSing='S'O MovSing="A" Entonces
									PosX<-MovimientoHorizontal(PosX,MovSing)
									PosY<-MovimientoVertical(PosY,MovSing)
									Contador<-Contador+1
								FinSi
							10:
								Si MovSing='S'O MovSing="D" Entonces
									PosX<-MovimientoHorizontal(PosX,MovSing)
									PosY<-MovimientoVertical(PosY,MovSing)
									Contador<-Contador+1
								FinSi
							11:
								Si MovSing='S'O MovSing="A"O MovSing="D" Entonces
									PosX<-MovimientoHorizontal(PosX,MovSing)
									PosY<-MovimientoVertical(PosY,MovSing)
									Contador<-Contador+1
								FinSi
							12:
								Si MovSing='W'O MovSing="A"O MovSing="D" Entonces
									PosX<-MovimientoHorizontal(PosX,MovSing)
									PosY<-MovimientoVertical(PosY,MovSing)
									Contador<-Contador+1
								FinSi
							13:
								Si MovSing='S'O MovSing="A"O MovSing="W" Entonces
									PosX<-MovimientoHorizontal(PosX,MovSing)
									PosY<-MovimientoVertical(PosY,MovSing)
									Contador<-Contador+1
								FinSi
							14:
								Si MovSing='S'O MovSing="W"O MovSing="D" Entonces
									PosX<-MovimientoHorizontal(PosX,MovSing)
									PosY<-MovimientoVertical(PosY,MovSing)
									Contador<-Contador+1
								FinSi
						Fin Segun
						Si Pausa<>3 Entonces	
							Esperar 200 Milisegundos	
							Limpiar Pantalla
							Si Contador<=9 Entonces
								Ceros<-"00"
							SiNo
								si Contador<=99 Entonces
									Ceros<-"0"
								SiNo
									Ceros<-""
								FinSi
							FinSi
							Escribir "*******************************************************************************"
							Escribir "*                                                                             *"
							Escribir "*                                                                             *"
							Escribir "*                                                                             *"
							Escribir "*                                                                             *"
							Escribir "*                                                                             *"
							Escribir "*                                                                             *"
							VisualPorBloques(PosX,PosY,LLave,Contador,Ceros,Carita)
							Escribir "*                                                                             *"
							Escribir "*                                                                             *"
							Escribir "*                                                                             *"
							Escribir "*                                                                             *"
							Escribir "*                                                                             *"
							Escribir "*                                                                             *"
							Escribir "*******************************************************************************"
						FinSi
					Fin Para	
					
					Si (((PosY=0 Y PosX=1) Y Llave=1)) Entonces
						Victoria_Laberinto
						Esperar Tecla
					Fin Si
				Fin Mientras
			"2":
				Instrucciones_Laberinto
				Esperar Tecla
		Fin Segun 
	Hasta Que Op_Lab="3"
	
Fin Funcion

Funcion  MovimientosPosibles ( Movimientos)
	Definir A,B,C,D,E,F,G,H,I,J,K,L,M,N,P,z Como Entero
	Dimension A(16)
	Dimension B(16)
	Dimension C(16)
	Dimension D(16)
	Dimension E(16)
	Dimension F(16)
	Dimension G(16)
	Dimension H(16)
	Dimension I(16)
	Dimension J(16)
	Dimension K(16)
	Dimension L(16)
	Dimension M(16)
	Dimension N(16)
	Dimension P(16)
	
	A(1)<-10;A(2)<-6;A(3)<-11;A(4)<-11;A(5)<-6;A(6)<-6;A(7)<-6;A(8)<-11;A(9)<-6;A(10)<-6;A(11)<-11;A(12)<-6;A(13)<-11;A(14)<-6;A(15)<-9;
	
	B(1)<-8;B(2)<-9;B(3)<-8;B(4)<-13;B(5)<-10;B(6)<-3;B(7)<-4;B(8)<-7;B(9)<-4;B(10)<-9;B(11)<-5; B(12)<-10;B(13)<-12; B(14)<-9;B(15)<-5;
	
	C(1)<-10;C(2)<-13; C(3)<-2; C(4)<-1;C(5)<-8;C(6)<-11; C(7)<-6;C(8)<-6;C(9)<-9;C(10)<-5;C(11)<-5;C(12)<-5;C(13)<-2;C(14)<-5;C(15)<-5;
	
	D(1)<-5;D(2)<-1;D(3)<-14;D(4)<-6;D(5)<-3;D(6)<-5;D(7)<-2;D(8)<-10;D(9)<-13;D(10)<-5; D(11)<-5;D(12)<-1;D(13)<-5;D(14)<-1; D(15)<-5;
	
	E(1)<-5;E(2)<-4; E(3)<-13;E(4)<-4;E(5)<-9;E(6)<-5; E(7)<-5; E(8)<-5; E(9)<-5; E(10)<-5;E(11)<-8;E(12)<-6;E(13)<-12;E(14)<-9;E(15)<-1;
	
	F(1)<-8;F(2)<-9; F(3)<-5;F(4)<-2;F(5)<-8; F(6)<-13; F(7)<-5;F(8)<-5; F(9)<-5;F(10)<-8;F(11)<-6;F(12)<-6;F(13)<-3;F(14)<-14;F(15)<-9;
	
	G(1)<-10; G(2)<-7;G(3)<-8;G(4)<-12;G(5)<-6; G(6)<-7;G(7)<-8; G(8)<-7; G(9)<-8;G(10)<-6;G(11)<-11; G(12)<-11;G(13)<-6;G(14)<-7;G(15)<-5;
	
	H(1)<-5;H(2)<-2; H(3)<-10; H(4)<-6; H(5)<-6; H(6)<-6; H(7)<-11;H(8)<-6;H(9)<-9;H(10)<-10; H(11)<-7;H(12)<-5;H(13)<-10;H(14)<-6; H(15)<-7;
	
	I(1)<-5;I(2)<-8;I(3)<-13; I(4)<-4; I(5)<-11; I(6)<-3;I(7)<-8;I(8)<-3;I(9)<-5;I(10)<-5; I(11)<-2;I(12)<-5; I(13)<-5; I(14)<-10;I(15)<-9;
	
	J(1)<-5;J(2)<-10;J(3)<-13;J(4)<-4;J(5)<-12;J(6)<-6; J(7)<-6;J(8)<-9;J(9)<-5; J(10)<-8; J(11)<-7;J(12)<-5; J(13)<-1;J(14)<-5;J(15)<-5;
	
	K(1)<-1; K(2)<-1; K(3)<-8; K(4)<-6;K(5)<-11; K(6)<-6;K(7)<-9;K(8)<-5;	K(9)<-5;K(10)<-10; K(11)<-6; K(12)<-7;K(13)<-4;K(14)<-7;K(15)<-5;
	
	L(1)<-10; L(2)<-6; L(3)<-6;L(4)<-9; L(5)<-5;L(6)<-10;L(7)<-13;L(8)<-14;L(9)<-13;L(10)<-8; L(11)<-6; L(12)<-6; L(13)<-6; L(14)<-6; L(15)<-13;
	
	M(1)<-5;M(2)<-10;M(3)<-6;M(4)<-13; M(5)<-5;M(6)<-5; M(7)<-5;M(8)<-1;M(9)<-8; M(10)<-9; M(11)<-10;M(12)<-6; M(13)<-6;M(14)<-9;M(15)<-5;
	
	N(1)<-5;N(2)<-1; N(3)<-2; N(4)<-5; N(5)<-8;  N(6)<-7;N(7)<-8;N(8)<-6;N(9)<-9;  N(10)<-8;N(11)<-7;N(12)<-10; N(13)<-6;N(14)<-7;N(15)<-5;
	
	P(1)<-8;P(2)<-6;P(3)<-7;P(4)<-8; P(5)<-6;P(6)<-6;P(7)<-6;P(8)<-6;P(9)<-12; P(10)<-6; P(11)<-3;P(12)<-8; P(13)<-6; P(14)<-6;P(15)<-7; 	
    //P(1) arranca en 8 por la llave, una vez abierto pasa a 14
	
	Para z<-1 Hasta 15 Con Paso 1 Hacer
		Movimientos[15,z]<-A[z]
		Movimientos[14,z]<-B[z]
		Movimientos[13,z]<-C[z]
		Movimientos[12,z]<-D[z]
		Movimientos[11,z]<-E[z]
		Movimientos[10,z]<-F[z]
		Movimientos[9,z]<-G[z]
		Movimientos[8,z]<-H[z]
		Movimientos[7,z]<-I[z]
		Movimientos[6,z]<-J[z]
		Movimientos[5,z]<-K[z]
		Movimientos[4,z]<-L[z]
		Movimientos[3,z]<-M[z]
		Movimientos[2,z]<-N[z]
		Movimientos[1,z]<-P[z]
	Fin Para	
Fin Funcion

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

Funcion MovPersonaje<-CargaDeMovimiento(MovPersonaje)
	Escribir  ("Ingresá tu movimiento: (P para pausa) ")
	Leer MovPersonaje
	MovPersonaje<-Mayusculas(MovPersonaje)
Fin Funcion



Funcion  VisualPorBloques (PosX,PosY,Llave,Contador,Ceros,Carita)
	definir i,j,PersX,PersY Como Entero
	Definir Pelo,Cab,Cuerpo,Pies Como Cadena
	Dimension Pelo[4,4]
	Dimension Cab[4,4]
	Dimension Cuerpo[4,4]
	Dimension Pies[4,4]
	Para i<-1 Hasta 3 Con Paso 1 Hacer
		Para j<-1 Hasta 3 Con Paso 1 Hacer
			Pelo[i,j]<-"           "
			Cab[i,j]<-"           "
			Cuerpo[i,j]<-"           "
			Pies[i,j]<-"           "
		Fin Para
	Fin Para
	PersX<-PosX mod 3
	PersY<-PosY mod 3
	Si PersX=0 Entonces
		PersX<-3
	FinSi
	Si PersY=0 Entonces
		PersY<-3
	FinSi
	
	Si PosX>3 Y PosX<7 Y PosY>9 y PosY<13 Entonces							//////////// ACA ESTÁ LA VISUAL DE LA LLAVE
		Si Llave=0 Entonces
			Pelo[2,3]<-"           "
			Cab[2,3]<-" |==|____  "
			Cuerpo[2,3]<-" |==|  TT  "
			Pies[2,3]<-"           "
		SiNo
			Pelo[2,3]<-"           "
			Cab[2,3]<-"           "
			Cuerpo[2,3]<-"           "
			Pies[2,3]<-"           "
		FinSi
	FinSi
	
	Pelo[PersX,PersY]<-"   n___n   "
	Cab[PersX,PersY]<-"  (o _ o)  "
	Cuerpo[PersX,PersY]<-" /|    |\  "
	Pies[PersX,PersY]<-"   ~~~~    "
	
	si Carita=1 Entonces
		Cab[PersX,PersY]<-"  (^ u ^)  "
	sino 
		Cab[PersX,PersY]<-"  (o _ o)  "
	FinSi
	
	
	Segun PosX Hacer
		1 o 2 o 3:
			Segun posY Hacer
				1 o 2 o 3:
					Escribir "*                  BLOQUE 21          Contador de pasos: ",Ceros,Contador,"                  *"
					Escribir "*                                                                             *"
					Escribir "*                  ||           ============================","                  *"
					Escribir "*                  ||",Pelo[1,3],"||",Pelo[2,3],"  ",Pelo[3,3],"  ","                  *"
					Escribir "*                  ||",Cab[1,3],"||",Cab[2,3],"  ",Cab[3,3],"  ","                  *"
					Escribir "*                  ||",Cuerpo[1,3],"||",Cuerpo[2,3],"  ",Cuerpo[3,3],"  ","                  *"
					Escribir "*                  ||",Pies[1,3],"||",Pies[2,3],"  ",Pies[3,3],"  ","                  *"
					Escribir "*                  ||           ||           ||=============","                  *"
					Escribir "*                  ||",Pelo[1,2],"||",Pelo[2,2],"||",Pelo[3,2],"||","                  *"
					Escribir "*                  ||",Cab[1,2],"||",Cab[2,2],"||",Cab[3,2],"||","                  *"
					Escribir "*                  ||",Cuerpo[1,2],"||",Cuerpo[2,2],"||",Cuerpo[3,2],"||","                  *"
					Escribir "*                  ||",Pies[1,2],"||",Pies[2,2],"||",Pies[3,2],"||","                  *"
					Escribir "*                  ||           ||===========||           ||","                  *"
					Escribir "*                  ||",Pelo[1,1],"  ",Pelo[2,1],"  ",Pelo[3,1],"||","                  *"
					Escribir "*                  ||",Cab[1,1],"  ",Cab[2,1],"  ",Cab[3,1],"||","                  *"
					Escribir "*                  ||",Cuerpo[1,1],"  ",Cuerpo[2,1],"  ",Cuerpo[3,1],"||","                  *"
					Escribir "*                  ||",Pies[1,1],"  ",Pies[2,1],"  ",Pies[3,1],"||","                  *"
					Si llave=0 Entonces
						Escribir "*                  ||=======================================","                  *"
					Sino
						Escribir "*                  ||           ============================","                  *"
					FinSi
					Escribir "*                     SALIDA                                ","                  *"
				4 o 5 o 6:
					Escribir "*                  BLOQUE 16          Contador de pasos: ",Ceros,Contador,"                  *"
					Escribir "*                                                                             *"
					Escribir "*                  ||           ================          ||","                  *"
					Escribir "*                  ||",Pelo[1,3],"||",Pelo[2,3],"  ",Pelo[3,3],"||","                  *"
					Escribir "*                  ||",Cab[1,3],"||",Cab[2,3],"  ",Cab[3,3],"||","                  *"
					Escribir "*                  ||",Cuerpo[1,3],"||",Cuerpo[2,3],"  ",Cuerpo[3,3],"||","                  *"
					Escribir "*                  ||",Pies[1,3],"||",Pies[2,3],"  ",Pies[3,3],"||","                  *"
					Escribir "*                  ||           ||           ||           ||","                  *"
					Escribir "*                  ||",Pelo[1,2],"||",Pelo[2,2],"||",Pelo[3,2],"  ","                  *"
					Escribir "*                  ||",Cab[1,2],"||",Cab[2,2],"||",Cab[3,2],"  ","                  *"
					Escribir "*                  ||",Cuerpo[1,2],"||",Cuerpo[2,2],"||",Cuerpo[3,2],"  ","                  *"
					Escribir "*                  ||",Pies[1,2],"||",Pies[2,2],"||",Pies[3,2],"  ","                  *"
					Escribir "*                  ||=======================================","                  *"
					Escribir "*                  ||",Pelo[1,1],"  ",Pelo[2,1],"  ",Pelo[3,1],"  ","                  *"
					Escribir "*                  ||",Cab[1,1],"  ",Cab[2,1],"  ",Cab[3,1],"  ","                  *"
					Escribir "*                  ||",Cuerpo[1,1],"  ",Cuerpo[2,1],"  ",Cuerpo[3,1],"  ","                  *"
					Escribir "*                  ||",Pies[1,1],"  ",Pies[2,1],"  ",Pies[3,1],"  ","                  *"
					Escribir "*                  ||           ============================","                  *"
				7 o 8 o 9:
					Escribir "*                  BLOQUE 11          Contador de pasos: ",Ceros,Contador,"                  *"
					Escribir "*                                                                             *"
					Escribir "*                  ||=============           ||           ||","                  *"
					Escribir "*                  ||",Pelo[1,3],"  ",Pelo[2,3],"||",Pelo[3,3],"  ","                  *"
					Escribir "*                  ||",Cab[1,3],"  ",Cab[2,3],"||",Cab[3,3],"  ","                  *"
					Escribir "*                  ||",Cuerpo[1,3],"  ",Cuerpo[2,3],"||",Cuerpo[3,3],"  ","                  *"
					Escribir "*                  ||",Pies[1,3],"  ",Pies[2,3],"||",Pies[3,3],"  ","                  *"
					Escribir "*                  ||           ||===========||=============","                  *"
					Escribir "*                  ||",Pelo[1,2],"||",Pelo[2,2],"||",Pelo[3,2],"  ","                  *"
					Escribir "*                  ||",Cab[1,2],"||",Cab[2,2],"||",Cab[3,2],"  ","                  *"
					Escribir "*                  ||",Cuerpo[1,2],"||",Cuerpo[2,2],"||",Cuerpo[3,2],"  ","                  *"
					Escribir "*                  ||",Pies[1,2],"||",Pies[2,2],"||",Pies[3,2],"  ","                  *"
					Escribir "*                  ||           ||           ||           ||","                  *"
					Escribir "*                  ||",Pelo[1,1],"||",Pelo[2,1],"  ",Pelo[3,1],"||","                  *"
					Escribir "*                  ||",Cab[1,1],"||",Cab[2,1],"  ",Cab[3,1],"||","                  *"
					Escribir "*                  ||",Cuerpo[1,1],"||",Cuerpo[2,1],"  ",Cuerpo[3,1],"||","                  *"
					Escribir "*                  ||",Pies[1,1],"||",Pies[2,1],"  ",Pies[3,1],"||","                  *"
					Escribir "*                  ||           ||=============           ||","                  *"
				10 o 11 o 12:
					Escribir "*                  BLOQUE 6           Contador de pasos: ",Ceros,Contador,"                  *"
					Escribir "*                                                                             *"
					Escribir "*                  ||           ||           ||           ||","                  *"
					Escribir "*                  ||",Pelo[1,3],"||",Pelo[2,3],"||",Pelo[3,3],"  ","                  *"
					Escribir "*                  ||",Cab[1,3],"||",Cab[2,3],"||",Cab[3,3],"  ","                  *"
					Escribir "*                  ||",Cuerpo[1,3],"||",Cuerpo[2,3],"||",Cuerpo[3,3],"  ","                  *"
					Escribir "*                  ||",Pies[1,3],"||",Pies[2,3],"||",Pies[3,3],"  ","                  *"
					Escribir "*                  ||           ||===========||           ||","                  *"
					Escribir "*                  ||",Pelo[1,2],"||",Pelo[2,2],"  ",Pelo[3,2],"||","                  *"
					Escribir "*                  ||",Cab[1,2],"||",Cab[2,2],"  ",Cab[3,2],"||","                  *"
					Escribir "*                  ||",Cuerpo[1,2],"||",Cuerpo[2,2],"  ",Cuerpo[3,2],"||","                  *"
					Escribir "*                  ||",Pies[1,2],"||",Pies[2,2],"  ",Pies[3,2],"||","                  *"
					Escribir "*                  ||           ||===========||           ||","                  *"
					Escribir "*                  ||",Pelo[1,1],"  ",Pelo[2,1],"||",Pelo[3,1],"||","                  *"
					Escribir "*                  ||",Cab[1,1],"  ",Cab[2,1],"||",Cab[3,1],"||","                  *"
					Escribir "*                  ||",Cuerpo[1,1],"  ",Cuerpo[2,1],"||",Cuerpo[3,1],"||","                  *"
					Escribir "*                  ||",Pies[1,1],"  ",Pies[2,1],"||",Pies[3,1],"||","                  *"
					Escribir "*                  ||=============           ||           ||","                  *"
				13 o 14 o 15:
					Escribir "*                  BLOQUE 1           Contador de pasos: ",Ceros,Contador,"                  *"
					Escribir "*                                                                             *"
					Escribir "*                  ||=======================================","                  *"
					Escribir "*                  ||",Pelo[1,3],"  ",Pelo[2,3],"  ",Pelo[3,3],"  ","                  *"
					Escribir "*                  ||",Cab[1,3],"  ",Cab[2,3],"  ",Cab[3,3],"  ","                  *"
					Escribir "*                  ||",Cuerpo[1,3],"  ",Cuerpo[2,3],"  ",Cuerpo[3,3],"  ","                  *"
					Escribir "*                  ||",Pies[1,3],"  ",Pies[2,3],"  ",Pies[3,3],"  ","                  *"
					Escribir "*                  ||             ===========||             ","                  *"
					Escribir "*                  ||",Pelo[1,2],"  ",Pelo[2,2],"||",Pelo[3,2],"  ","                  *"
					Escribir "*                  ||",Cab[1,2],"  ",Cab[2,2],"||",Cab[3,2],"  ","                  *"
					Escribir "*                  ||",Cuerpo[1,2],"  ",Cuerpo[2,2],"||",Cuerpo[3,2],"  ","                  *"
					Escribir "*                  ||",Pies[1,2],"  ",Pies[2,2],"||",Pies[3,2],"  ","                  *"
					Escribir "*                  ||===========             ||===========||","                  *"
					Escribir "*                  ||",Pelo[1,1],"  ",Pelo[2,1],"||",Pelo[3,1],"||","                  *"
					Escribir "*                  ||",Cab[1,1],"  ",Cab[2,1],"||",Cab[3,1],"||","                  *"
					Escribir "*                  ||",Cuerpo[1,1],"  ",Cuerpo[2,1],"||",Cuerpo[3,1],"||","                  *"
					Escribir "*                  ||",Pies[1,1],"  ",Pies[2,1],"||",Pies[3,1],"||","                  *"
					Escribir "*                  ||           ||           ||           ||","                  *"
			Fin Segun
		4 o 5 o 6:
			Segun posY Hacer
				1 o 2 o 3:
					Escribir "*                  BLOQUE 22          Contador de pasos: ",Ceros,Contador,"                  *"
					Escribir "*                                                                             *"
					Escribir "*                  ==           ||           ||           ||","                  *"
					Escribir "*                    ",Pelo[1,3],"||",Pelo[2,3],"||",Pelo[3,3],"||","                  *"
					Escribir "*                    ",Cab[1,3],"||",Cab[2,3],"||",Cab[3,3],"||","                  *"
					Escribir "*                    ",Cuerpo[1,3],"||",Cuerpo[2,3],"||",Cuerpo[3,3],"||","                  *"
					Escribir "*                    ",Pies[1,3],"||",Pies[2,3],"||",Pies[3,3],"||","                  *"
					Escribir "*                  ||           ||           ||           ||","                  *"
					Escribir "*                  ||",Pelo[1,2],"||",Pelo[2,2],"  ",Pelo[3,2],"||","                  *"
					Escribir "*                  ||",Cab[1,2],"||",Cab[2,2],"  ",Cab[3,2],"||","                  *"
					Escribir "*                  ||",Cuerpo[1,2],"||",Cuerpo[2,2],"  ",Cuerpo[3,2],"||","                  *"
					Escribir "*                  ||",Pies[1,2],"||",Pies[2,2],"  ",Pies[3,2],"||","                  *"
					Escribir "*                  ||           ============================","                  *"
					Escribir "*                  ||",Pelo[1,1],"  ",Pelo[2,1],"  ",Pelo[3,1],"  ","                  *"
					Escribir "*                  ||",Cab[1,1],"  ",Cab[2,1],"  ",Cab[3,1],"  ","                  *"
					Escribir "*                  ||",Cuerpo[1,1],"  ",Cuerpo[2,1],"  ",Cuerpo[3,1],"  ","                  *"
					Escribir "*                  ||",Pies[1,1],"  ",Pies[2,1],"  ",Pies[3,1],"  ","                  *"
					Escribir "*                  ========================================="	,"                  *"
				4 o 5 o 6:
					Escribir "*                  BLOQUE 17          Contador de pasos: ",Ceros,Contador,"                  *"
					Escribir "*                                                                             *"
					Escribir "*                  ===============           ===============","                  *"
					Escribir "*                  ||",Pelo[1,3],"  ",Pelo[2,3],"  ",Pelo[3,3],"  ","                  *"
					Escribir "*                  ||",Cab[1,3],"  ",Cab[2,3],"  ",Cab[3,3],"  ","                  *"
					Escribir "*                  ||",Cuerpo[1,3],"  ",Cuerpo[2,3],"  ",Cuerpo[3,3],"  ","                  *"
					Escribir "*                  ||",Pies[1,3],"  ",Pies[2,3],"  ",Pies[3,3],"  ","                  *"
					Escribir "*                  =========================================","                  *"
					Escribir "*                    ",Pelo[1,2],"  ",Pelo[2,2],"  ",Pelo[3,2],"  ","                  *"
					Escribir "*                    ",Cab[1,2],"  ",Cab[2,2],"  ",Cab[3,2],"  ","                  *"
					Escribir "*                    ",Cuerpo[1,2],"  ",Cuerpo[2,2],"  ",Cuerpo[3,2],"  ","                  *"
					Escribir "*                    ",Pies[1,2],"  ",Pies[2,2],"  ",Pies[3,2],"  ","                  *"
					Escribir "*                  ===============           ===============","                  *"
					Escribir "*                    ",Pelo[1,1],"||",Pelo[2,1],"||",Pelo[3,1],"  ","                  *"
					Escribir "*                    ",Cab[1,1],"||",Cab[2,1],"||",Cab[3,1],"  ","                  *"
					Escribir "*                    ",Cuerpo[1,1],"||",Cuerpo[2,1],"||",Cuerpo[3,1],"  ","                  *"
					Escribir "*                    ",Pies[1,1],"||",Pies[2,1],"||",Pies[3,1],"  ","                  *"
					Escribir "*                  ==           ||           ||           ||","                  *"
				7 o 8 o 9:
					Escribir "*                  BLOQUE 12          Contador de pasos: ",Ceros,Contador,"                  *"
					Escribir "*                                                                             *"
					Escribir "*                  ||           ===============           ||","                  *"
					Escribir "*                    ",Pelo[1,3],"  ",Pelo[2,3],"  ",Pelo[3,3],"||","                  *"
					Escribir "*                    ",Cab[1,3],"  ",Cab[2,3],"  ",Cab[3,3],"||","                  *"
					Escribir "*                    ",Cuerpo[1,3],"  ",Cuerpo[2,3],"  ",Cuerpo[3,3],"||","                  *"
					Escribir "*                    ",Pies[1,3],"  ",Pies[2,3],"  ",Pies[3,3],"||","                  *"
					Escribir "*                  =========================================","                  *"
					Escribir "*                    ",Pelo[1,2],"  ",Pelo[2,2],"  ",Pelo[3,2],"  ","                  *"
					Escribir "*                    ",Cab[1,2],"  ",Cab[2,2],"  ",Cab[3,2],"  ","                  *"
					Escribir "*                    ",Cuerpo[1,2],"  ",Cuerpo[2,2],"  ",Cuerpo[3,2],"  ","                  *"
					Escribir "*                    ",Pies[1,2],"  ",Pies[2,2],"  ",Pies[3,2],"  ","                  *"
					Escribir "*                  =======================================||","                  *"
					Escribir "*                  ||",Pelo[1,1],"  ",Pelo[2,1],"  ",Pelo[3,1],"||","                  *"
					Escribir "*                  ||",Cab[1,1],"  ",Cab[2,1],"  ",Cab[3,1],"||","                  *"
					Escribir "*                  ||",Cuerpo[1,1],"  ",Cuerpo[2,1],"  ",Cuerpo[3,1],"||","                  *"
					Escribir "*                  ||",Pies[1,1],"  ",Pies[2,1],"  ",Pies[3,1],"||","                  *"
					Escribir "*                  ===============           =============||","                  *"
					
				10 o 11 o 12:
					
					Si PosY=12 Y PosX=5 y Llave=0 Entonces						//////// ACA ESTÁ LA TRANSICION DE CUANDO AGARRA LA LLAVE
						Limpiar Pantalla
						Para i<-1 Hasta 7 Con Paso 1 Hacer
							Escribir "*******************************************************************************"
							Escribir "*                                                                             *"
							Escribir "*                                                                             *"
							Escribir "*                                                                             *"
							Escribir "*                                                                             *"
							Escribir "*                                                                             *"
							Escribir "*                                                                             *"
							Si i mod 2=0 Entonces
								Cab[PersX,PersY]<-"  (o _ o)  "
							Sino
								Cab[PersX,PersY]<-"  (^ u ^)  "
							FinSi						
							Escribir "*                  BLOQUE 7           Contador de pasos: ",Ceros,Contador,"                  *"
							Escribir "*                                                                             *"
							Escribir "*                  ==========================||           ||","                  *"
							Escribir "*                    ",Pelo[1,3],"  ",Pelo[2,3],"||",Pelo[3,3],"||","                  *"
							Escribir "*                    ",Cab[1,3],"  ",Cab[2,3],"||",Cab[3,3],"||","                  *"
							Escribir "*                    ",Cuerpo[1,3],"  ",Cuerpo[2,3],"||",Cuerpo[3,3],"||","                  *"
							Escribir "*                    ",Pies[1,3],"  ",Pies[2,3],"||",Pies[3,3],"||","                  *"
							Escribir "*                  ==========================||           ||","                  *"
							Escribir "*                  ||",Pelo[1,2],"  ",Pelo[2,2],"||",Pelo[3,2],"||","                  *"
							Escribir "*                  ||",Cab[1,2],"  ",Cab[2,2],"||",Cab[3,2],"||","                  *"
							Escribir "*                  ||",Cuerpo[1,2],"  ",Cuerpo[2,2],"||",Cuerpo[3,2],"||","                  *"
							Escribir "*                  ||",Pies[1,2],"  ",Pies[2,2],"||",Pies[3,2],"||","                  *"
							Escribir "*                  ||===========||           ||           ||","                  *"
							Escribir "*                  ||",Pelo[1,1],"||",Pelo[2,1],"  ",Pelo[3,1],"||","                  *"
							Escribir "*                  ||",Cab[1,1],"||",Cab[2,1],"  ",Cab[3,1],"||","                  *"
							Escribir "*                  ||",Cuerpo[1,1],"||",Cuerpo[2,1],"  ",Cuerpo[3,1],"||","                  *"
							Escribir "*                  ||",Pies[1,1],"||",Pies[2,1],"  ",Pies[3,1],"||","                  *"
							Escribir "*                  ||           ||=============           ||","                  *"
							Si i<>7 Entonces
								Escribir "*                                                                             *"
								Escribir "*                                                                             *"
								Escribir "*                                                                             *"
								Escribir "*                                                                             *"
								Escribir "*                                                                             *"
								Escribir "*                                                                             *"
								Escribir "*******************************************************************************"
								Esperar 200 Milisegundos
							Fin Si
							Si i<>7 Entonces
								Limpiar Pantalla
							Fin Si
						Fin Para
					SiNo
						Escribir "*                  BLOQUE 7           Contador de pasos: ",Ceros,Contador,"                  *"
						Escribir "*                                                                             *"
						Escribir "*                  ==========================||           ||","                  *"
						Escribir "*                    ",Pelo[1,3],"  ",Pelo[2,3],"||",Pelo[3,3],"||","                  *"
						Escribir "*                    ",Cab[1,3],"  ",Cab[2,3],"||",Cab[3,3],"||","                  *"
						Escribir "*                    ",Cuerpo[1,3],"  ",Cuerpo[2,3],"||",Cuerpo[3,3],"||","                  *"
						Escribir "*                    ",Pies[1,3],"  ",Pies[2,3],"||",Pies[3,3],"||","                  *"
						Escribir "*                  ==========================||           ||","                  *"
						Escribir "*                  ||",Pelo[1,2],"  ",Pelo[2,2],"||",Pelo[3,2],"||","                  *"
						Escribir "*                  ||",Cab[1,2],"  ",Cab[2,2],"||",Cab[3,2],"||","                  *"
						Escribir "*                  ||",Cuerpo[1,2],"  ",Cuerpo[2,2],"||",Cuerpo[3,2],"||","                  *"
						Escribir "*                  ||",Pies[1,2],"  ",Pies[2,2],"||",Pies[3,2],"||","                  *"
						Escribir "*                  ||===========||           ||           ||","                  *"
						Escribir "*                  ||",Pelo[1,1],"||",Pelo[2,1],"  ",Pelo[3,1],"||","                  *"
						Escribir "*                  ||",Cab[1,1],"||",Cab[2,1],"  ",Cab[3,1],"||","                  *"
						Escribir "*                  ||",Cuerpo[1,1],"||",Cuerpo[2,1],"  ",Cuerpo[3,1],"||","                  *"
						Escribir "*                  ||",Pies[1,1],"||",Pies[2,1],"  ",Pies[3,1],"||","                  *"
						Escribir "*                  ||           ||=============           ||","                  *"
					Fin Si
					
					
				13 o 14 o 15:
					Escribir "*                  BLOQUE 2           Contador de pasos: ",Ceros,Contador,"                  *"
					Escribir "*                                                                             *"
					Escribir "*                  =========================================","                  *"
					Escribir "*                    ",Pelo[1,3],"  ",Pelo[2,3],"  ",Pelo[3,3],"  ","                  *"
					Escribir "*                    ",Cab[1,3],"  ",Cab[2,3],"  ",Cab[3,3],"  ","                  *"
					Escribir "*                    ",Cuerpo[1,3],"  ",Cuerpo[2,3],"  ",Cuerpo[3,3],"  ","                  *"
					Escribir "*                    ",Pies[1,3],"  ",Pies[2,3],"  ",Pies[3,3],"  ","                  *"
					Escribir "*                               ||========================||","                  *"
					Escribir "*                    ",Pelo[1,2],"||",Pelo[2,2],"  ",Pelo[3,2],"||","                  *"
					Escribir "*                    ",Cab[1,2],"||",Cab[2,2],"  ",Cab[3,2],"||","                  *"
					Escribir "*                    ",Cuerpo[1,2],"||",Cuerpo[2,2],"  ",Cuerpo[3,2],"||","                  *"
					Escribir "*                    ",Pies[1,2],"||",Pies[2,2],"  ",Pies[3,2],"||","                  *"
					Escribir "*                  ||           ||             ===========||","                  *"
					Escribir "*                  ||",Pelo[1,1],"||",Pelo[2,1],"  ",Pelo[3,1],"  ","                  *"
					Escribir "*                  ||",Cab[1,1],"||",Cab[2,1],"  ",Cab[3,1],"  ","                  *"
					Escribir "*                  ||",Cuerpo[1,1],"||",Cuerpo[2,1],"  ",Cuerpo[3,1],"  ","                  *"
					Escribir "*                  ||",Pies[1,1],"||",Pies[2,1],"  ",Pies[3,1],"  ","                  *"
					Escribir "*                  ||===========||===========             ||","                  *"
			Fin Segun
		7 o 8 o 9:
			Segun posY Hacer
				1 o 2 o 3:
					Escribir "*                  BLOQUE 23          Contador de pasos: ",Ceros,Contador,"                  *"
					Escribir "*                                                                             *"
					Escribir "*                  ||           ||           ||           ||","                  *"
					Escribir "*                  ||",Pelo[1,3],"||",Pelo[2,3],"||",Pelo[3,3],"  ","                  *"
					Escribir "*                  ||",Cab[1,3],"||",Cab[2,3],"||",Cab[3,3],"  ","                  *"
					Escribir "*                  ||",Cuerpo[1,3],"||",Cuerpo[2,3],"||",Cuerpo[3,3],"  ","                  *"
					Escribir "*                  ||",Pies[1,3],"||",Pies[2,3],"||",Pies[3,3],"  ","                  *"
					Escribir "*                  ||           ============================","                  *"
					Escribir "*                  ||",Pelo[1,2],"  ",Pelo[2,2],"  ",Pelo[3,2],"||","                  *"
					Escribir "*                  ||",Cab[1,2],"  ",Cab[2,2],"  ",Cab[3,2],"||","                  *"
					Escribir "*                  ||",Cuerpo[1,2],"  ",Cuerpo[2,2],"  ",Cuerpo[3,2],"||","                  *"
					Escribir "*                  ||",Pies[1,2],"  ",Pies[2,2],"  ",Pies[3,2],"||","                  *"
					Escribir "*                  ||==========================           ==","                  *"
					Escribir "*                    ",Pelo[1,1],"  ",Pelo[2,1],"  ",Pelo[3,1],"  ","                  *"
					Escribir "*                    ",Cab[1,1],"  ",Cab[2,1],"  ",Cab[3,1],"  ","                  *"
					Escribir "*                    ",Cuerpo[1,1],"  ",Cuerpo[2,1],"  ",Cuerpo[3,1],"  ","                  *"
					Escribir "*                    ",Pies[1,1],"  ",Pies[2,1],"  ",Pies[3,1],"  ","                  *"
					Escribir "*                  =========================================","                  *"
				4 o 5 o 6:
					Escribir "*                  BLOQUE 18          Contador de pasos: ",Ceros,Contador,"                  *"
					Escribir "*                                                                             *"
					Escribir "*                  ==========================||           ||","                  *"
					Escribir "*                    ",Pelo[1,3],"  ",Pelo[2,3],"||",Pelo[3,3],"||","                  *"
					Escribir "*                    ",Cab[1,3],"  ",Cab[2,3],"||",Cab[3,3],"||","                  *"
					Escribir "*                    ",Cuerpo[1,3],"  ",Cuerpo[2,3],"||",Cuerpo[3,3],"||","                  *"
					Escribir "*                    ",Pies[1,3],"  ",Pies[2,3],"||",Pies[3,3],"||","                  *"
					Escribir "*                  =============||           ||           ||","                  *"
					Escribir "*                    ",Pelo[1,2],"||",Pelo[2,2],"||",Pelo[3,2],"||","                  *"
					Escribir "*                    ",Cab[1,2],"||",Cab[2,2],"||",Cab[3,2],"||","                  *"
					Escribir "*                    ",Cuerpo[1,2],"||",Cuerpo[2,2],"||",Cuerpo[3,2],"||","                  *"
					Escribir "*                    ",Pies[1,2],"||",Pies[2,2],"||",Pies[3,2],"||","                  *"
					Escribir "*                  ==           ||           ||           ||","                  *"
					Escribir "*                    ",Pelo[1,1],"||",Pelo[2,1],"  ",Pelo[3,1],"||","                  *"
					Escribir "*                    ",Cab[1,1],"||",Cab[2,1],"  ",Cab[3,1],"||","                  *"
					Escribir "*                    ",Cuerpo[1,1],"||",Cuerpo[2,1],"  ",Cuerpo[3,1],"||","                  *"
					Escribir "*                    ",Pies[1,1],"||",Pies[2,1],"  ",Pies[3,1],"||","                  *"
					Escribir "*                  ||           ||                        ||","                  *"
				7 o 8 o 9:
					Escribir "*                  BLOQUE 13          Contador de pasos: ",Ceros,Contador,"                  *"
					Escribir "*                                                                             *"
					Escribir "*                  ||           ||           ||            ||","                 *"
					Escribir "*                  ||",Pelo[1,3],"  ",Pelo[2,3],"||",Pelo[3,3],"  ","                  *"
					Escribir "*                  ||",Cab[1,3],"  ",Cab[2,3],"||",Cab[3,3],"  ","                  *"
					Escribir "*                  ||",Cuerpo[1,3],"  ",Cuerpo[2,3],"||",Cuerpo[3,3],"  ","                  *"
					Escribir "*                  ||",Pies[1,3],"  ",Pies[2,3],"||",Pies[3,3],"  ","                  *"
					Escribir "*                  =========================================","                  *"
					Escribir "*                    ",Pelo[1,2],"  ",Pelo[2,2],"  ",Pelo[3,2],"||","                  *"
					Escribir "*                    ",Cab[1,2],"  ",Cab[2,2],"  ",Cab[3,2],"||","                  *"
					Escribir "*                    ",Cuerpo[1,2],"  ",Cuerpo[2,2],"  ",Cuerpo[3,2],"||","                  *"
					Escribir "*                    ",Pies[1,2],"  ",Pies[2,2],"  ",Pies[3,2],"||","                  *"
					Escribir "*                  ||           ===============           ||","                  *"
					Escribir "*                  ||",Pelo[1,1],"  ",Pelo[2,1],"||",Pelo[3,1],"||","                  *"
					Escribir "*                  ||",Cab[1,1],"  ",Cab[2,1],"||",Cab[3,1],"||","                  *"
					Escribir "*                  ||",Cuerpo[1,1],"  ",Cuerpo[2,1],"||",Cuerpo[3,1],"||","                  *"
					Escribir "*                  ||",Pies[1,1],"  ",Pies[2,1],"||",Pies[3,1],"||","                  *"
					Escribir "*                  ============================           ||","                  *"
				10 o 11 o 12:
					Escribir "*                  BLOQUE 8           Contador de pasos: ",Ceros,Contador,"                  *"
					Escribir "*                                                                             *"
					Escribir "*                  ||===========||=============           ||","                  *"
					Escribir "*                  ||",Pelo[1,3],"||",Pelo[2,3],"  ",Pelo[3,3],"||","                  *"
					Escribir "*                  ||",Cab[1,3],"||",Cab[2,3],"  ",Cab[3,3],"||","                  *"
					Escribir "*                  ||",Cuerpo[1,3],"||",Cuerpo[2,3],"  ",Cuerpo[3,3],"||","                  *"
					Escribir "*                  ||",Pies[1,3],"||",Pies[2,3],"  ",Pies[3,3],"||","                  *"
					Escribir "*                  ||           ||           ||           ||","                  *"
					Escribir "*                  ||",Pelo[1,2],"||",Pelo[2,2],"||",Pelo[3,2],"||","                  *"
					Escribir "*                  ||",Cab[1,2],"||",Cab[2,2],"||",Cab[3,2],"||","                  *"
					Escribir "*                  ||",Cuerpo[1,2],"||",Cuerpo[2,2],"||",Cuerpo[3,2],"||","                  *"
					Escribir "*                  ||",Pies[1,2],"||",Pies[2,2],"||",Pies[3,2],"||","                  *"
					Escribir "*                  ||           ||           ||           ||","                  *"
					Escribir "*                  ||",Pelo[1,1],"||",Pelo[2,1],"||",Pelo[3,1],"||","                  *"
					Escribir "*                  ||",Cab[1,1],"||",Cab[2,1],"||",Cab[3,1],"||","                  *"
					Escribir "*                  ||",Cuerpo[1,1],"||",Cuerpo[2,1],"||",Cuerpo[3,1],"||","                  *"
					Escribir "*                  ||",Pies[1,1],"||",Pies[2,1],"||",Pies[3,1],"||","                  *"
					Escribir "*                  ||           ||           ||           ||","                  *"
				13 o 14 o 15:
					Escribir "*                  BLOQUE 3           Contador de pasos: ",Ceros,Contador,"                  *"
					Escribir "*                                                                             *"
					Escribir "*                  =========================================","                  *"
					Escribir "*                    ",Pelo[1,3],"  ",Pelo[2,3],"  ",Pelo[3,3],"  ","                  *"
					Escribir "*                    ",Cab[1,3],"  ",Cab[2,3],"  ",Cab[3,3],"  ","                  *"
					Escribir "*                    ",Cuerpo[1,3],"  ",Cuerpo[2,3],"  ",Cuerpo[3,3],"  ","                  *"
					Escribir "*                    ",Pies[1,3],"  ",Pies[2,3],"  ",Pies[3,3],"  ","                  *"
					Escribir "*                  ===============           ===============","                  *"
					Escribir "*                  ||",Pelo[1,2],"  ",Pelo[2,2],"||",Pelo[3,2],"  ","                  *"
					Escribir "*                  ||",Cab[1,2],"  ",Cab[2,2],"||",Cab[3,2],"  ","                  *"
					Escribir "*                  ||",Cuerpo[1,2],"  ",Cuerpo[2,2],"||",Cuerpo[3,2],"  ","                  *"
					Escribir "*                  ||",Pies[1,2],"  ",Pies[2,2],"||",Pies[3,2],"  ","                  *"
					Escribir "*                  =========================================","                  *"
					Escribir "*                    ",Pelo[1,1],"  ",Pelo[2,1],"  ",Pelo[3,1],"||","                  *"
					Escribir "*                    ",Cab[1,1],"  ",Cab[2,1],"  ",Cab[3,1],"||","                  *"
					Escribir "*                    ",Cuerpo[1,1],"  ",Cuerpo[2,1],"  ",Cuerpo[3,1],"||","                  *"
					Escribir "*                    ",Pies[1,1],"  ",Pies[2,1],"  ",Pies[3,1],"||","                  *"
					Escribir "*                  ==========================             ||","                  *"
			Fin Segun
		10 o 11 o 12:
			Segun posY Hacer
				1 o 2 o 3:
					Escribir "*                  BLOQUE 24          Contador de pasos: ",Ceros,Contador,"                  *"
					Escribir "*                                                                             *"
					Escribir "*                  =========================================","                  *"
					Escribir "*                    ",Pelo[1,3],"||",Pelo[2,3],"  ",Pelo[3,3],"  ","                  *"
					Escribir "*                    ",Cab[1,3],"||",Cab[2,3],"  ",Cab[3,3],"  ","                  *"
					Escribir "*                    ",Cuerpo[1,3],"||",Cuerpo[2,3],"  ",Cuerpo[3,3],"  ","                  *"
					Escribir "*                    ",Pies[1,3],"||",Pies[2,3],"  ",Pies[3,3],"  ","                  *"
					Escribir "*                  ||           ||           ||=============","                  *"
					Escribir "*                  ||",Pelo[1,2],"  ",Pelo[2,2],"||",Pelo[3,2],"  ","                  *"
					Escribir "*                  ||",Cab[1,2],"  ",Cab[2,2],"||",Cab[3,2],"  ","                  *"
					Escribir "*                  ||",Cuerpo[1,2],"  ",Cuerpo[2,2],"||",Cuerpo[3,2],"  ","                  *"
					Escribir "*                  ||",Pies[1,2],"  ",Pies[2,2],"||",Pies[3,2],"  ","                  *"
					Escribir "*                  ==========================||           ==","                  *"
					Escribir "*                    ",Pelo[1,1],"  ",Pelo[2,1],"||",Pelo[3,1],"  ","                  *"
					Escribir "*                    ",Cab[1,1],"  ",Cab[2,1],"||",Cab[3,1],"  ","                  *"
					Escribir "*                    ",Cuerpo[1,1],"  ",Cuerpo[2,1],"||",Cuerpo[3,1],"  ","                  *"
					Escribir "*                    ",Pies[1,1],"  ",Pies[2,1],"||",Pies[3,1],"  ","                  *"
					Escribir "*                  =========================================","                  *"
				4 o 5 o 6:
					Escribir "*                  BLOQUE 19          Contador de pasos: ",Ceros,Contador,"                  *"
					Escribir "*                                                                             *"
					Escribir "*                  ||           ||           ||           ||","                  *"
					Escribir "*                  ||",Pelo[1,3],"  ",Pelo[2,3],"||",Pelo[3,3],"||","                  *"
					Escribir "*                  ||",Cab[1,3],"  ",Cab[2,3],"||",Cab[3,3],"||","                  *"
					Escribir "*                  ||",Cuerpo[1,3],"  ",Cuerpo[2,3],"||",Cuerpo[3,3],"||","                  *"
					Escribir "*                  ||",Pies[1,3],"  ",Pies[2,3],"||",Pies[3,3],"||","                  *"
					Escribir "*                  ||========================||           ||","                  *"
					Escribir "*                  ||",Pelo[1,2],"  ",Pelo[2,2],"  ",Pelo[3,2],"||","                  *"
					Escribir "*                  ||",Cab[1,2],"  ",Cab[2,2],"  ",Cab[3,2],"||","                  *"
					Escribir "*                  ||",Cuerpo[1,2],"  ",Cuerpo[2,2],"  ",Cuerpo[3,2],"||","                  *"
					Escribir "*                  ||",Pies[1,2],"  ",Pies[2,2],"  ",Pies[3,2],"||","                  *"
					Escribir "*                  ||           ============================","                  *"
					Escribir "*                  ||",Pelo[1,1],"  ",Pelo[2,1],"  ",Pelo[3,1],"  ","                  *"
					Escribir "*                  ||",Cab[1,1],"  ",Cab[2,1],"  ",Cab[3,1],"  ","                  *"
					Escribir "*                  ||",Cuerpo[1,1],"  ",Cuerpo[2,1],"  ",Cuerpo[3,1],"  ","                  *"
					Escribir "*                  ||",Pies[1,1],"  ",Pies[2,1],"  ",Pies[3,1],"  ","                  *"
					Escribir "*                  ||=======================================","                  *"
				7 o 8 o 9:
					Escribir "*                  BLOQUE 14          Contador de pasos: ",Ceros,Contador,"                  *"
					Escribir "*                                                                             *"
					Escribir "*                  =========================================","                  *"
					Escribir "*                    ",Pelo[1,3],"  ",Pelo[2,3],"  ",Pelo[3,3],"  ","                  *"
					Escribir "*                    ",Cab[1,3],"  ",Cab[2,3],"  ",Cab[3,3],"  ","                  *"
					Escribir "*                    ",Cuerpo[1,3],"  ",Cuerpo[2,3],"  ",Cuerpo[3,3],"  ","                  *"
					Escribir "*                    ",Pies[1,3],"  ",Pies[2,3],"  ",Pies[3,3],"  ","                  *"
					Escribir "*                  ===============           ||           ||","                  *"
					Escribir "*                  ||",Pelo[1,2],"  ",Pelo[2,2],"||",Pelo[3,2],"||","                  *"
					Escribir "*                  ||",Cab[1,2],"  ",Cab[2,2],"||",Cab[3,2],"||","                  *"
					Escribir "*                  ||",Cuerpo[1,2],"  ",Cuerpo[2,2],"||",Cuerpo[3,2],"||","                  *"
					Escribir "*                  ||",Pies[1,2],"  ",Pies[2,2],"||",Pies[3,2],"||","                  *"
					Escribir "*                  ||           =============||           ||","                  *"
					Escribir "*                  ||",Pelo[1,1],"||",Pelo[2,1],"||",Pelo[3,1],"||","                  *"
					Escribir "*                  ||",Cab[1,1],"||",Cab[2,1],"||",Cab[3,1],"||","                  *"
					Escribir "*                  ||",Cuerpo[1,1],"||",Cuerpo[2,1],"||",Cuerpo[3,1],"||","                  *"
					Escribir "*                  ||",Pies[1,1],"||",Pies[2,1],"||",Pies[3,1],"||","                  *"
					Escribir "*                  ||           ||           ||           ||","                  *"
				10 o 11 o 12:
					Escribir "*                  BLOQUE 9           Contador de pasos: ",Ceros,Contador,"                  *"
					Escribir "*                                                                             *"
					Escribir "*                  ||           ||           ||           ||","                  *"
					Escribir "*                  ||",Pelo[1,3],"||",Pelo[2,3],"||",Pelo[3,3],"||","                  *"
					Escribir "*                  ||",Cab[1,3],"||",Cab[2,3],"||",Cab[3,3],"||","                  *"
					Escribir "*                  ||",Cuerpo[1,3],"||",Cuerpo[2,3],"||",Cuerpo[3,3],"||","                  *"
					Escribir "*                  ||",Pies[1,3],"||",Pies[2,3],"||",Pies[3,3],"||","                  *"
					Escribir "*                  ||           ||           ||===========||","                  *"
					Escribir "*                  ||",Pelo[1,2],"||",Pelo[2,2],"  ",Pelo[3,2],"  ","                  *"
					Escribir "*                  ||",Cab[1,2],"||",Cab[2,2],"  ",Cab[3,2],"  ","                  *"
					Escribir "*                  ||",Cuerpo[1,2],"||",Cuerpo[2,2],"  ",Cuerpo[3,2],"  ","                  *"
					Escribir "*                  ||",Pies[1,2],"||",Pies[2,2],"  ",Pies[3,2],"  ","                  *"
					Escribir "*                  ||           ============================","                  *"
					Escribir "*                  ||",Pelo[1,1],"  ",Pelo[2,1],"  ",Pelo[3,1],"  ","                  *"
					Escribir "*                  ||",Cab[1,1],"  ",Cab[2,1],"  ",Cab[3,1],"  ","                  *"
					Escribir "*                  ||",Cuerpo[1,1],"  ",Cuerpo[2,1],"  ",Cuerpo[3,1],"  ","                  *"
					Escribir "*                  ||",Pies[1,1],"  ",Pies[2,1],"  ",Pies[3,1],"  ","                  *"
					Escribir "*                  ||=====================================||","                  *"
				13 o 14 o 15:
					Escribir "*                  BLOQUE 4           Contador de pasos: ",Ceros,Contador,"                  *"
					Escribir "*                                                                             *"
					Escribir "*                  =========================================","                  *"
					Escribir "*                    ",Pelo[1,3],"  ",Pelo[2,3],"  ",Pelo[3,3],"  ","                  *"
					Escribir "*                    ",Cab[1,3],"  ",Cab[2,3],"  ",Cab[3,3],"  ","                  *"
					Escribir "*                    ",Cuerpo[1,3],"  ",Cuerpo[2,3],"  ",Cuerpo[3,3],"  ","                  *"
					Escribir "*                    ",Pies[1,3],"  ",Pies[2,3],"  ",Pies[3,3],"  ","                  *"
					Escribir "*                  ===============           ===============","                  *"
					Escribir "*                    ",Pelo[1,2],"||",Pelo[2,2],"||",Pelo[3,2],"  ","                  *"
					Escribir "*                    ",Cab[1,2],"||",Cab[2,2],"||",Cab[3,2],"  ","                  *"
					Escribir "*                    ",Cuerpo[1,2],"||",Cuerpo[2,2],"||",Cuerpo[3,2],"  ","                  *"
					Escribir "*                    ",Pies[1,2],"||",Pies[2,2],"||",Pies[3,2],"  ","                  *"
					Escribir "*                               ||           ||             ","                  *"
					Escribir "*                  ||",Pelo[1,1],"||",Pelo[2,1],"||",Pelo[3,1],"||","                  *"
					Escribir "*                  ||",Cab[1,1],"||",Cab[2,1],"||",Cab[3,1],"||","                  *"
					Escribir "*                  ||",Cuerpo[1,1],"||",Cuerpo[2,1],"||",Cuerpo[3,1],"||","                  *"
					Escribir "*                  ||",Pies[1,1],"||",Pies[2,1],"||",Pies[3,1],"||","                  *"
					Escribir "*                  ||           ||           ||           ||","                  *"
			Fin Segun
		13 o 14 o 15: 
			Segun posY Hacer
				1 o 2 o 3:
					Escribir "*                  BLOQUE 25          Contador de pasos: ",Ceros,Contador,"                  *"
					Escribir "*                                                                             *"
					Escribir "*                  ============================           ||","                  *"
					Escribir "*                    ",Pelo[1,3],"  ",Pelo[2,3],"||",Pelo[3,3],"||","                  *"
					Escribir "*                    ",Cab[1,3],"  ",Cab[2,3],"||",Cab[3,3],"||","                  *"
					Escribir "*                    ",Cuerpo[1,3],"  ",Cuerpo[2,3],"||",Cuerpo[3,3],"||","                  *"
					Escribir "*                    ",Pies[1,3],"  ",Pies[2,3],"||",Pies[3,3],"||","                  *"
					Escribir "*                  ===============           ||           ||","                  *"
					Escribir "*                    ",Pelo[1,2],"  ",Pelo[2,2],"||",Pelo[3,2],"||","                  *"
					Escribir "*                    ",Cab[1,2],"  ",Cab[2,2],"||",Cab[3,2],"||","                  *"
					Escribir "*                    ",Cuerpo[1,2],"  ",Cuerpo[2,2],"||",Cuerpo[3,2],"||","                  *"
					Escribir "*                    ",Pies[1,2],"  ",Pies[2,2],"||",Pies[3,2],"||","                  *"
					Escribir "*                  ============================           ||","                  *"
					Escribir "*                    ",Pelo[1,1],"  ",Pelo[2,1],"  ",Pelo[3,1],"||","                  *"
					Escribir "*                    ",Cab[1,1],"  ",Cab[2,1],"  ",Cab[3,1],"||","                  *"
					Escribir "*                    ",Cuerpo[1,1],"  ",Cuerpo[2,1],"  ",Cuerpo[3,1],"||","                  *"
					Escribir "*                    ",Pies[1,1],"  ",Pies[2,1],"  ",Pies[3,1],"||","                  *"
					Escribir "*                  =========================================","                  *"
				4 o 5 o 6:
					Escribir "*                  BLOQUE 20          Contador de pasos: ",Ceros,Contador,"                  *"
					Escribir "*                                                                             *"
					Escribir "*                  ||           ||           ||           ||","                  *"
					Escribir "*                  ||",Pelo[1,3],"||",Pelo[2,3],"||",Pelo[3,3],"||","                  *"
					Escribir "*                  ||",Cab[1,3],"||",Cab[2,3],"||",Cab[3,3],"||","                  *"
					Escribir "*                  ||",Cuerpo[1,3],"||",Cuerpo[2,3],"||",Cuerpo[3,3],"||","                  *"
					Escribir "*                  ||",Pies[1,3],"||",Pies[2,3],"||",Pies[3,3],"||","                  *"
					Escribir "*                  ||===========||           ||           ||","                  *"
					Escribir "*                  ||",Pelo[1,2],"  ",Pelo[2,2],"||",Pelo[3,2],"||","                  *"
					Escribir "*                  ||",Cab[1,2],"  ",Cab[2,2],"||",Cab[3,2],"||","                  *"
					Escribir "*                  ||",Cuerpo[1,2],"  ",Cuerpo[2,2],"||",Cuerpo[3,2],"||","                  *"
					Escribir "*                  ||",Pies[1,2],"  ",Pies[2,2],"||",Pies[3,2],"||","                  *"
					Escribir "*                  ||==========================           ||","                  *"
					Escribir "*                    ",Pelo[1,1],"  ",Pelo[2,1],"  ",Pelo[3,1],"||","                  *"
					Escribir "*                    ",Cab[1,1],"  ",Cab[2,1],"  ",Cab[3,1],"||","                  *"
					Escribir "*                    ",Cuerpo[1,1],"  ",Cuerpo[2,1],"  ",Cuerpo[3,1],"||","                  *"
					Escribir "*                    ",Pies[1,1],"  ",Pies[2,1],"  ",Pies[3,1],"||","                  *"
					Escribir "*                  ============================           ||","                  *"
				7 o 8 o 9:
					Escribir "*                  BLOQUE 15          Contador de pasos: ",Ceros,Contador,"                  *"
					Escribir "*                                                                             *"
					Escribir "*                  ===============           ||           ||","                  *"
					Escribir "*                    ",Pelo[1,3],"  ",Pelo[2,3],"||",Pelo[3,3],"||","                  *"
					Escribir "*                    ",Cab[1,3],"  ",Cab[2,3],"||",Cab[3,3],"||","                  *"
					Escribir "*                    ",Cuerpo[1,3],"  ",Cuerpo[2,3],"||",Cuerpo[3,3],"||","                  *"
					Escribir "*                    ",Pies[1,3],"  ",Pies[2,3],"||",Pies[3,3],"||","                  *"
					Escribir "*                  ============================           ||","                  *"
					Escribir "*                  ||",Pelo[1,2],"  ",Pelo[2,2],"  ",Pelo[3,2],"||","                  *"
					Escribir "*                  ||",Cab[1,2],"  ",Cab[2,2],"  ",Cab[3,2],"||","                  *"
					Escribir "*                  ||",Cuerpo[1,2],"  ",Cuerpo[2,2],"  ",Cuerpo[3,2],"||","                  *"
					Escribir "*                  ||",Pies[1,2],"  ",Pies[2,2],"  ",Pies[3,2],"||","                  *"
					Escribir "*                  ||           ==========================||","                  *"
					Escribir "*                  ||",Pelo[1,1],"||",Pelo[2,1],"  ",Pelo[3,1],"||","                  *"
					Escribir "*                  ||",Cab[1,1],"||",Cab[2,1],"  ",Cab[3,1],"||","                  *"
					Escribir "*                  ||",Cuerpo[1,1],"||",Cuerpo[2,1],"  ",Cuerpo[3,1],"||","                  *"
					Escribir "*                  ||",Pies[1,1],"||",Pies[2,1],"  ",Pies[3,1],"||","                  *"
					Escribir "*                  ||           ||                        ||","                  *"
				10 o 11 o 12:
					Escribir "*                  BLOQUE 10          Contador de pasos: ",Ceros,Contador,"                  *"
					Escribir "*                                                                             *"
					Escribir "*                  ||           ||           ||           ||","                  *"
					Escribir "*                  ||",Pelo[1,3],"||",Pelo[2,3],"||",Pelo[3,3],"||","                  *"
					Escribir "*                  ||",Cab[1,3],"||",Cab[2,3],"||",Cab[3,3],"||","                  *"
					Escribir "*                  ||",Cuerpo[1,3],"||",Cuerpo[2,3],"||",Cuerpo[3,3],"||","                  *"
					Escribir "*                  ||",Pies[1,3],"||",Pies[2,3],"||",Pies[3,3],"||","                  *"
					Escribir "*                  ||           ||===========||           ||","                  *"
					Escribir "*                    ",Pelo[1,2],"  ",Pelo[2,2],"||",Pelo[3,2],"||","                  *"
					Escribir "*                    ",Cab[1,2],"  ",Cab[2,2],"||",Cab[3,2],"||","                  *"
					Escribir "*                    ",Cuerpo[1,2],"  ",Cuerpo[2,2],"||",Cuerpo[3,2],"||","                  *"
					Escribir "*                    ",Pies[1,2],"  ",Pies[2,2],"||",Pies[3,2],"||","                  *"
					Escribir "*                  =============||           ||===========||","                  *"
					Escribir "*                    ",Pelo[1,1],"||",Pelo[2,1],"  ",Pelo[3,1],"||","                  *"
					Escribir "*                    ",Cab[1,1],"||",Cab[2,1],"  ",Cab[3,1],"||","                  *"
					Escribir "*                    ",Cuerpo[1,1],"||",Cuerpo[2,1],"  ",Cuerpo[3,1],"||","                  *"
					Escribir "*                    ",Pies[1,1],"||",Pies[2,1],"  ",Pies[3,1],"||","                  *"
					Escribir "*                  ===============           ||           ||","                  *"
					
				13 o 14 o 15:
					Escribir "*                  BLOQUE 5           Contador de pasos: ",Ceros,Contador,"                  *"
					Escribir "*                                                                             *"
					Escribir "*                  =========================================                  *"
					Escribir "*                    ",Pelo[1,3],"  ",Pelo[2,3],"  ",Pelo[3,3],"||","                  *"
					Escribir "*                    ",Cab[1,3],"  ",Cab[2,3],"  ",Cab[3,3],"||","                  *"
					Escribir "*                    ",Cuerpo[1,3],"  ",Cuerpo[2,3],"  ",Cuerpo[3,3],"||","                  *"
					Escribir "*                    ",Pies[1,3],"  ",Pies[2,3],"  ",Pies[3,3],"||","                  *"
					Escribir "*                  ==           ===============           ||","                  *"
					Escribir "*                    ",Pelo[1,2],"  ",Pelo[2,2],"||",Pelo[3,2],"||","                  *"
					Escribir "*                    ",Cab[1,2],"  ",Cab[2,2],"||",Cab[3,2],"||","                  *"
					Escribir "*                    ",Cuerpo[1,2],"  ",Cuerpo[2,2],"||",Cuerpo[3,2],"||","                  *"
					Escribir "*                    ",Pies[1,2],"  ",Pies[2,2],"||",Pies[3,2],"||","                  *"
					Escribir "*                  ||===========||           ||           ||","                  *"
					Escribir "*                  ||",Pelo[1,1],"||",Pelo[2,1],"||",Pelo[3,1],"||","                  *"
					Escribir "*                  ||",Cab[1,1],"||",Cab[2,1],"||",Cab[3,1],"||","                  *"
					Escribir "*                  ||",Cuerpo[1,1],"||",Cuerpo[2,1],"||",Cuerpo[3,1],"||","                  *"
					Escribir "*                  ||",Pies[1,1],"||",Pies[2,1],"||",Pies[3,1],"||","                  *"
					Escribir "*                  ||           ||           ||           ||","                  *"
			Fin Segun
	Fin Segun
Fin Funcion


Funcion  Animacion_Inicio_Lab
	Definir i Como Entero
	Para i<-1 Hasta 9 Con Paso 1 Hacer
		Limpiar Pantalla
		Escribir "*******************************************************************************"
		Escribir "*                                                                             *"
		Escribir "*                                                                             *"
		Escribir "*                                                                             *"
		Escribir "*                                                                             *"
		Escribir "*                                                                             *"
		
		Segun i Hacer
			1:
				Escribir "* +                                                                           *"
				Escribir "* ||                                                                          *"
				Escribir "* ||                                                                          *"
				Escribir "* ||                                                                          *"
				Escribir "* +====                                                                       *" 
				
			2:
				Escribir "* +      +=====+                                                              *" 
				Escribir "* ||     ||   ||                                                              *" 
				Escribir "* ||     ||===||                                                              *" 
				Escribir "* ||     ||   ||                                                              *" 
				Escribir "* +====  ||   ||                                                              *" 
				
			3:
				Escribir "* +      +=====+  =====                                                       *" 
				Escribir "* ||     ||   ||  ||  ||                                                      *" 
				Escribir "* ||     ||===||  ||==||                                                      *" 
				Escribir "* ||     ||   ||  ||  ||                                                      *" 
				Escribir "* +====  ||   ||  +====+                                                      *" 
				
			4:
				Escribir "* +      +=====+  =====    +====                                              *" 
				Escribir "* ||     ||   ||  ||  ||   ||                                                 *" 
				Escribir "* ||     ||===||  ||==||   +===                                               *" 
				Escribir "* ||     ||   ||  ||  ||   ||                                                 *" 
				Escribir "* +====  ||   ||  +====+   +====                                              *" 
				
			5:
				Escribir "* +      +=====+  =====    +====   +====+                                     *"
				Escribir "* ||     ||   ||  ||  ||   ||      ||  ||                                     *"
				Escribir "* ||     ||===||  ||==||   +===    |====+                                     *"
				Escribir "* ||     ||   ||  ||  ||   ||      ||\\                                       *"
				Escribir "* +====  ||   ||  +====+   +====   || \\                                      *"
				
			6:
				Escribir "* +      +=====+  =====    +====   +====+  ||                                 *"
				Escribir "* ||     ||   ||  ||  ||   ||      ||  ||  ||                                 *"
				Escribir "* ||     ||===||  ||==||   +===    |====+  ||                                 *"
				Escribir "* ||     ||   ||  ||  ||   ||      ||\\    ||                                 *"
				Escribir "* +====  ||   ||  +====+   +====   || \\   ||                                 *"
				
			7:
				Escribir "* +      +=====+  =====    +====   +====+  ||   ||\\   ||                     *"
				Escribir "* ||     ||   ||  ||  ||   ||      ||  ||  ||   || \\  ||                     *"
				Escribir "* ||     ||===||  ||==||   +===    |====+  ||   ||  \\ ||                     *"
				Escribir "* ||     ||   ||  ||  ||   ||      ||\\    ||   ||   \\||                     *"
				Escribir "* +====  ||   ||  +====+   +====   || \\   ||   ||     ||                     *"
				
			8:
				Escribir "* +      +=====+  =====    +====   +====+  ||   ||\\   ||  ======             *"
				Escribir "* ||     ||   ||  ||  ||   ||      ||  ||  ||   || \\  ||    ||               *"
				Escribir "* ||     ||===||  ||==||   +===    |====+  ||   ||  \\ ||    ||               *"
				Escribir "* ||     ||   ||  ||  ||   ||      ||\\    ||   ||   \\||    ||               *"
				Escribir "* +====  ||   ||  +====+   +====   || \\   ||   ||     ||    ||               *"
				
			9:
				Escribir "* +      +=====+  =====    +====   +====+  ||   ||\\   ||  ======   +=====+   *"
				Escribir "* ||     ||   ||  ||  ||   ||      ||  ||  ||   || \\  ||    ||     ||   ||   *"
				Escribir "* ||     ||===||  ||==||   +===    |====+  ||   ||  \\ ||    ||     ||   ||   *"
				Escribir "* ||     ||   ||  ||  ||   ||      ||\\    ||   ||   \\||    ||     ||   ||   *"
				Escribir "* +====  ||   ||  +====+   +====   || \\   ||   ||     ||    ||     +=====+   *"
				
		Fin Segun
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
		Escribir "*                                                                             *"
		Escribir "*                                                                             *"
		Escribir "*                                                                             *"
		Escribir "*                                                                             *"
		Escribir "*                                                                             *"
		Escribir "*******************************************************************************"
		Esperar 150 Milisegundos
	Fin Para
	
	Para i<-1 Hasta 7 Con Paso 1 Hacer
		Limpiar Pantalla
		Escribir "*******************************************************************************"
		Escribir "*                                                                             *"
		Escribir "*                                                                             *"
		Escribir "*                                                                             *"
		Escribir "*                                                                             *"
		Escribir "*                                                                             *"
		Escribir "* +      +=====+  =====    +====   +====+  ||   ||\\   ||  ======   +=====+   *"
		Escribir "* ||     ||   ||  ||  ||   ||      ||  ||  ||   || \\  ||    ||     ||   ||   *"
		Escribir "* ||     ||===||  ||==||   +===    |====+  ||   ||  \\ ||    ||     ||   ||   *"
		Escribir "* ||     ||   ||  ||  ||   ||      ||\\    ||   ||   \\||    ||     ||   ||   *"
		Escribir "* +====  ||   ||  +====+   +====   || \\   ||   ||     ||    ||     +=====+   *"
		Escribir "*                                                                             *"
		Escribir "*                                                                             *"
		Escribir "*                                                                             *"
		Escribir "*                                                                             *"
		Escribir "*                                                                             *"
		Si i mod 2=0 Entonces
			
			Escribir "*                                n___n                                        *"
			Escribir "*                               (o _ o)                                       *"
			Escribir "*                              /|    |\                                       *"
			Escribir "*                                ~~~~                                         *"
			
		SiNo
			Escribir "*                                n___n                                        *"
			Escribir "*                               (^ u ^)                                       *"
			Escribir "*                              /|    |\                                       *"
			Escribir "*                                ~~~~                                         *"
			
		Fin Si
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
		Esperar 150 Milisegundos
	Fin Para
Fin Funcion

Funcion OP_Lab <- Menu_Lab
	definir OP_Lab Como Caracter
	Limpiar Pantalla
	Escribir "*******************************************************************************"
	Escribir "*                                                                             *"
	Escribir "*                                                                             *"
	Escribir "*                                                                             *"
	Escribir "*                                                                             *"
	Escribir "*                                                                             *"
	Escribir "* +      +=====+  =====    +====   +====+  ||   ||\\   ||  ======   +=====+   *"
	Escribir "* ||     ||   ||  ||  ||   ||      ||  ||  ||   || \\  ||    ||     ||   ||   *"
	Escribir "* ||     ||===||  ||==||   +===    |====+  ||   ||  \\ ||    ||     ||   ||   *"
	Escribir "* ||     ||   ||  ||  ||   ||      ||\\    ||   ||   \\||    ||     ||   ||   *"
	Escribir "* +====  ||   ||  +====+   +====   || \\   ||   ||     ||    ||     +=====+   *"
	Escribir "*                                                                             *"
	Escribir "*                                                                             *"
	Escribir "*                                                                             *"
	Escribir "*                                                                             *"
	Escribir "*                                                                             *"
	Escribir "*                                n___n   SELECCIONE UNA OPCIÓN:               *"
	Escribir "*                               (^ u ^)  1- JUGAR                             *"
	Escribir "*                              /|    |\  2- INSTRUCCIONES                     *"
	Escribir "*                                ~~~~    3- SALIR                             *"
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
	Leer OP_Lab
Fin Funcion

Funcion Instrucciones_Laberinto
	Limpiar Pantalla
	Escribir "*******************************************************************************"
	Escribir "*                                                                             *"
	Escribir "*                                                                             *"
	Escribir "*    MOVIMIENTO                                                               *"
	Escribir "*                                                                             *"
	Escribir "*      |W|                W: Movimiento hacia arriba                          *"
	Escribir "*   |A||S||D|             S: Movimiento hacia abajo                           *"
	Escribir "*                         A: Movimiento hacia la izquierda                    *"
	Escribir "*      |P|                D: Movimiento hacia la derecha                      *"
	Escribir "*                         P: PAUSA                                            *"
	Escribir "*                                                                             *"
	Escribir "*    OBJETIVO                                                                 *"
	Escribir "*      El juego consiste en encontrar la salida, para poder salir es          *"
	Escribir "*      necesario poder agarrar la llave anteriormente.                        *"
	Escribir "*                                                                             *"
	Escribir "*    LLAVE                                                                    *"
	Escribir "*        |==|____                                                             *"
	Escribir "*        |==|  TT                                                             *"
	Escribir "*                                                                             *"
	Escribir "*    PERSONAJE                                                                *"
	Escribir "*        n___n                                                                *"
	Escribir "*       (o _ o)                                                               *"
	Escribir "*      /|    |\                                                               *"
	Escribir "*        ~~~~                                                                 *"
	Escribir "*                                                                             *"
	Escribir "*                                                                             *"
	Escribir "*                                                                             *"
	Escribir "*                                                                             *"
	Escribir "*                     TOCA UNA TECLA PARA CONTINUAR...                        *"
	Escribir "*                                                                             *"
	Escribir "*                                                                             *"
	Escribir "*******************************************************************************"
	
Fin Funcion


Funcion Victoria_Laberinto
	definir i Como Entero
	Para i<-1 Hasta 11 Con Paso 1 Hacer
		Limpiar Pantalla
		Si i mod 2=0 Entonces
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
			Escribir "*                                  ______                                     *"
			Escribir "*                                 |  #1  |                                    *"
			Escribir "*                                  \    /                                     *"
			Escribir "*                                  _|__|_                                     *"
			Escribir "*                                 |______|                                    *"
			Escribir "*                                  n___n                                      *"
			Escribir "*                                \(^ u ^)/                                    *"
			Escribir "*                                 |    |                                      *"
			Escribir "*                                  ~~~~                                       *"
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
			
		SiNo
			
			Si i=11 Entonces
				Escribir "*******************************************************************************"
				Escribir "*                                                                             *"
				Escribir "*                                                                             *"
				Escribir "*                                                                             *"
				Escribir "*    +======   +=====+   ||\\    ||   +=====+   +======   ======   +====      *"
				Escribir "*    ||        ||   ||   || \\   ||   ||   ||   ||          ||     ||         *"
				Escribir "*    ||  ==+   ||===||   ||  \\  ||   ||===||   +=====+     ||     +===       *"
				Escribir "*    ||   ||   ||   ||   ||   \\ ||   ||   ||        ||     ||     ||         *"
				Escribir "*    +=====+   ||   ||   ||    \\||   ||   ||   ======+     ||     +====      *"
				Escribir "*                                                                             *"
				Escribir "*                                                                             *"
				Escribir "*                                                                             *"
				Escribir "*                                                                             *"
				Escribir "*                                  ______                                     *"
				Escribir "*                                 |  #1  |                                    *"
				Escribir "*                                  \    /                                     *"
				Escribir "*                                  _|__|_                                     *"
				Escribir "*                                 |______|                                    *"
				Escribir "*                                  n___n                                      *"
				Escribir "*                                \(^ u ^)/                                    *"
				Escribir "*                                 |    |                                      *"
				Escribir "*                                  ~~~~                                       *"
				Escribir "*                                                                             *"
				Escribir "*                                                                             *"
				Escribir "*                                                                             *"
				Escribir "*                                                                             *"
				Escribir "*                                                                             *"
				Escribir "*                     TOCA UNA TECLA PARA CONTINUAR...                        *"
				Escribir "*                                                                             *"
				Escribir "*                                                                             *"
				Escribir "*                                                                             *"
				Escribir "*******************************************************************************"
			SiNo
				Escribir "*******************************************************************************"
				Escribir "*                                                                             *"
				Escribir "*                                                                             *"
				Escribir "*                                                                             *"
				Escribir "*    +======   +=====+   ||\\    ||   +=====+   +======   ======   +====      *"
				Escribir "*    ||        ||   ||   || \\   ||   ||   ||   ||          ||     ||         *"
				Escribir "*    ||  ==+   ||===||   ||  \\  ||   ||===||   +=====+     ||     +===       *"
				Escribir "*    ||   ||   ||   ||   ||   \\ ||   ||   ||        ||     ||     ||         *"
				Escribir "*    +=====+   ||   ||   ||    \\||   ||   ||   ======+     ||     +====      *"
				Escribir "*                                                                             *"
				Escribir "*                                                                             *"
				Escribir "*                                                                             *"
				Escribir "*                                                                             *"
				Escribir "*                                  ______                                     *"
				Escribir "*                                 |  #1  |                                    *"
				Escribir "*                                  \    /                                     *"
				Escribir "*                                  _|__|_                                     *"
				Escribir "*                                 |______|                                    *"
				Escribir "*                                  n___n                                      *"
				Escribir "*                                \(^ u ^)/                                    *"
				Escribir "*                                 |    |                                      *"
				Escribir "*                                  ~~~~                                       *"
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
			Fin Si
		Fin Si
		esperar 100 Milisegundos
	Fin Para
Fin Funcion


Funcion Pausa<-PausaLaberinto
	definir Pausa Como Entero 
	Repetir
		Limpiar Pantalla
		Escribir "*******************************************************************************"
		Escribir "*                                                                             *"
		Escribir "*                                                                             *"
		Escribir "*                                                                             *"
		Escribir "*            +====+   +=====+   ||    ||   +======   +=====+                  *"
		Escribir "*            ||  ||   ||   ||   ||    ||   ||        ||   ||                  *"
		Escribir "*            +====+   ||===||   ||    ||   +=====+   ||===||                  *"
		Escribir "*            ||       ||   ||   ||    ||        ||   ||   ||                  *"
		Escribir "*            ||       ||   ||   ||====||   ======+   ||   ||                  *"
		Escribir "*                                                                             *"
		Escribir "*                                                                             *"
		Escribir "*                                                                             *"
		Escribir "*                                                                             *"
		Escribir "*                                  n___n    SELECCIONE UNA OPCIÓN:            *"
		Escribir "*                                 (u . u)    1- CONTINUAR                     *"
		Escribir "*                                 |\  /|     2- INSTRUCCIONES                 *"
		Escribir "*                                  ~~~~      3- SALIR                         *"
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
		leer Pausa
		Si Pausa=2 Entonces
			Limpiar Pantalla
			Escribir "*******************************************************************************"
			Escribir "*                                                                             *"
			Escribir "*                                                                             *"
			Escribir "*    MOVIMIENTO                                                               *"
			Escribir "*                                                                             *"
			Escribir "*      |W|                W: Movimiento hacia arriba                          *"
			Escribir "*   |A||S||D|             S: Movimiento hacia abajo                           *"
			Escribir "*                         A: Movimiento hacia la izquierda                    *"
			Escribir "*      |P|                D: Movimiento hacia la derecha                      *"
			Escribir "*                         P: PAUSA                                            *"
			Escribir "*                                                                             *"
			Escribir "*    OBJETIVO                                                                 *"
			Escribir "*      El juego consiste en encontrar la salida, para poder salir es          *"
			Escribir "*      necesario poder agarrar la llave anteriormente.                        *"
			Escribir "*                                                                             *"
			Escribir "*    LLAVE                                                                    *"
			Escribir "*        |==|____                                                             *"
			Escribir "*        |==|  TT                                                             *"
			Escribir "*                                                                             *"
			Escribir "*    PERSONAJE                                                                *"
			Escribir "*        n___n                                                                *"
			Escribir "*       (o _ o)                                                               *"
			Escribir "*      /|    |\                                                               *"
			Escribir "*        ~~~~                                                                 *"
			Escribir "*                                                                             *"
			Escribir "*                                                                             *"
			Escribir "*                                                                             *"
			Escribir "*                                                                             *"
			Escribir "*                     TOCA UNA TECLA PARA CONTINUAR...                        *"
			Escribir "*                                                                             *"
			Escribir "*                                                                             *"
			Escribir "*******************************************************************************"
			Esperar Tecla
		Fin Si
	Hasta Que Pausa=3 o Pausa=1
	
Fin Funcion

///FUNCIONES JUEGO PAC-MAN

Funcion JuegoPacMan
	Dimensión pacman(19,27)
	Dimension fantasma1(19,27)
	Dimension fantasma2(19,27)
	Dimension fantasma3(19,27)
	Dimension fantasma4(19,27)
	Definir i,j,pacmanx,pacmany, puntaje,max,fantasmax1,fantasmax2,fantasmax3,fantasmax4,fantasmay1,fantasmay2,fantasmay3,fantasmay4 como entero
	Definir PACMAN, movimiento como caracter
	
	//Falta integrar al juego
	fantasmax4<-0
	fantasmay4<-0
	fantasmax3<-0
	fantasmay3<-0
	fantasmax2<-0
	fantasmay2<-0
	//En funcionamiento
	fantasmax1<-10
	fantasmay1<-22
	pacmanx<-1
	pacmany<-26
	
	Bienvenida(PACMAN)
	
	// (°< (°- (*< 
	// fantasma /ü\ /ñ\ "°"
	Para i<-0 Hasta 18  Con Paso 1 Hacer
		Para j<-0 Hasta 26 Con Paso 1 Hacer
			pacman(i,j) <- "   "
		Fin Para
	Fin Para
	
	//Para i<-1 Hasta 26 Con Paso 1 Hacer
	//Para j<-1 Hasta 18 Con Paso 1 Hacer
	//fantasma1(i,j) <- "   "
	//Fin Para
	//Fin Para
	
	//Para i<-1 Hasta 26 Con Paso 1 Hacer
	//Para j<-1 Hasta 18 Con Paso 1 Hacer
	//fantasma2(i,j) <- "   "
	//Fin Para
	//Fin Para
	
	//Para i<-1 Hasta 30 Con Paso 1 Hacer
	//Para j<-1 Hasta 26 Con Paso 1 Hacer
	//fantasma3(i,j) <- "   "
	//Fin Para
	//Fin Para
	
	//Para i<-1 Hasta 30 Con Paso 1 Hacer
	//Para j<-1 Hasta 26 Con Paso 1 Hacer
	//fantasma4(i,j) <- "   "
	//Fin Para
	//Fin Para
	
	Mientras (puntaje=max) Hacer
		Escribir "Ingrese un caracter"
		leer movimiento
		pacman[pacmanx,pacmany]<-"   "
		pacman[fantasmax1,fantasmay1]<-"   "
		Limpiar Pantalla
		//Movimiento pacman
		Segun (movimiento) Hacer
			'A' o 'a':
				pacmanx<- pacmanx-1
			'S' o 's':
				pacmany<- pacmany-1
			'W' o 'w':
				pacmany<- pacmany+1
			'D' o 'd':
				pacmanx<- pacmanx+1
			De Otro Modo:
				Escribir "Porfavor seleccione la opción correcta"
		Fin Segun
		
		Si pacmanx<fantasmax1 Entonces
			fantasmax1<-fantasmax1-1
		SiNo
			fantasmax1<-fantasmax1+1
		Fin Si
		
		Si pacmany<fantasmay1 Entonces
			fantasmay1<-fantasmay1-1
		SiNo
			fantasmay1<-fantasmay1+1
		Fin Si
		//MovimientoFantasma1(pacmanx,pacmany,fantasmax1,fantasmay1)		
		//Movimiento fantasma 2
		MovimientoFantasma2(pacmanx,pacmany,fantasmax2,fantasmay2)
		//Movimiento fantasma 3
		MovimientoFantasma3(pacmanx,pacmany,fantasmax3,fantasmay3)			
		//Movimiento fantasma 4
		MovimientoFantasma4(pacmanx,pacmany,fantasmax4,fantasmay4)
		//tablero
		visual(Pacman,pacmanx,pacmany,fantasmax1,fantasmay1)
	Fin Mientras
Fin Funcion

Funcion Bienvenida ( Pacman )
	Escribir "______________________________________________________"
	Escribir "------------------------------------------------------"
	Escribir" _____   ___   ________      ____  ____  ___  ___   __"
	Escribir"||   || || ||  ||    || ____ ||\\  //|| || || ||\\  ||"
	Escribir"||___|| ||-||  ||       ____ || \\// || ||-|| || \\ ||"
	Escribir"||      || ||  ||____||      ||  \/  || || || ||  \\||"
	Escribir "------------------------------------------------------"
	Escribir "------------------------------------------------------"
Fin Funcion

Funcion visual(Pacman,pacmanx,pacmany,fantasmax1,fantasmay1)
	
	pacman[pacmanx,pacmany]<-"(°<"
	pacman[fantasmax1,fantasmay1]<-"/ü\"
	Escribir "===========================||=||============================"
	Escribir "||",pacman[1,26],"||==||",pacman[4,26],"||==||",pacman[7,26]," ",pacman[8,26],"|| ||",pacman[11,26]," ",pacman[12,26],"||==||",pacman[15,26],"||==||",pacman[18,26],"||"
	Escribir "||",pacman[1,25],"||==||",pacman[4,25],"||  ||",pacman[7,25]," ",pacman[8,25],"|| ||",pacman[11,25]," ",pacman[12,25],"||  ||",pacman[15,25],"||==||",pacman[18,25],"||"  
	Escribir "||",pacman[1,24],"",pacman[2,24],"",pacman[3,24],"",pacman[4,24],"||==||",pacman[7,24]," ",pacman[8,24],"|| ||",pacman[11,24]," ",pacman[12,24],"||==||",pacman[15,24],"",pacman[16,24],"",pacman[17,24],"",pacman[18,24],"||"
	Escribir "||",pacman[1,23],"",pacman[2,23],"",pacman[3,23],"",pacman[4,23],"",pacman[5,23],"",pacman[6,23],"",pacman[7,23]," ",pacman[8,23],"||=||",pacman[11,24]," ",pacman[12,23],"",pacman[13,23],"",pacman[14,23],"",pacman[15,23],"",pacman[16,23],"",pacman[17,23],"",pacman[18,23],"||"
	Escribir "||",pacman[1,22],"======",pacman[4,22],"|==",pacman[6,22],"",pacman[7,22]," ",pacman[8,22],"",pacman[9,22],"",pacman[10,22],"",pacman[11,22]," ",pacman[12,22]," ===|",pacman[15,22],"======",pacman[18,22],"||"
	Escribir "||",pacman[1,21],"",pacman[2,21],"",pacman[3,21],"",pacman[4,21],"|||",pacman[6,21],"  ||===========||  ",pacman[13,21],"|||",pacman[15,21],"",pacman[16,21],"",pacman[17,21],"",pacman[18,21],"||"
	Escribir "||=======||",pacman[4,20],"||| ",pacman[6,20]," ||===|| ||===||",pacman[12,20],"  |||",pacman[15,20],"||=======||"
	Escribir "||       ||",pacman[4,19],"|||",pacman[6,19],"",pacman[7,19]," ",pacman[8,19],"|| ||",pacman[10,19],"",pacman[11,19],"",pacman[12,19]," |||",pacman[15,19],"||       ||"
	Escribir "||       ||",pacman[4,18],"|=======| ",pacman[8,18],"=====",pacman[11,18]," |=======|",pacman[15,18],"||       ||"
	Escribir "||=======||",pacman[4,17],"|||",pacman[6,17],"",pacman[7,17],"",pacman[8,17],"",pacman[9,17],"",pacman[10,17],"",pacman[11,17],"",pacman[12,17],"",pacman[13,17]," |||",pacman[15,17],"||=======||"
	Escribir "||",pacman[1,16],"",pacman[2,16],"",pacman[3,16],"",pacman[4,16],"|== ",pacman[6,16]," |====     ====| ",pacman[12,16]," ==|",pacman[14,16],"",pacman[15,16],"",pacman[16,16],"",pacman[18,16],"||"
	Escribir "||",pacman[1,15],"",pacman[2,15],"",pacman[3,15],"",pacman[4,15],"",pacman[5,15]," ",pacman[6,15]," |             | ",pacman[13,15],"",pacman[14,15],"",pacman[15,15],"",pacman[16,15],"",pacman[17,15]," ",pacman[18,15],"||"
	Escribir "||=======||",pacman[4,14],"|==|",pacman[6,14]," |             | ",pacman[12,14],"|==|",pacman[15,14],"||=======||"
	Escribir "||       ||",pacman[4,13],"||||",pacman[6,13]," |=============| ",pacman[12,13],"||||",pacman[15,13],"||       ||"
	Escribir "||       ||",pacman[4,12],"||||. .                 . .||||",pacman[15,12],"||       ||"
	Escribir "||=======||",pacman[4,11],"|==|. .||============||. . |==|",pacman[15,11],"||=======||"
	Escribir "||",pacman[1,10],"",pacman[2,10],"",pacman[3,10],"",pacman[4,10]," . .. .||====|| ||===||. .. .  . .. .. .. .||"
	Escribir "||. .||====||. .. .. .. .. .|||. .. .. .. .. .||====||. .||"
	Escribir "||. .||====||. .||=====||. .===. .||=====||. .||====||. .||"
	Escribir "||. .. .. .||. .. .. .. .. .. .. .. .. .. .. .||. .. .. .||"
	Escribir "||==|. .. .==. .. .. .===============. .. .. .==. .. .|==||"
	Escribir "||. .. .. .. . ||. .. .|===========|. .. .||. .. .. . . .||"
	Escribir "||. .==============. .. .. .|||. .. .. . ============ . .||"
	Escribir "||. .==============.. .. .. |||.. .. .. .============. ..||"
	Escribir "||. .. .. .. .. .. .. .. .. |||.. .. .. .. .. .. .. .. ..||"
	Escribir "||. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. .. ..||"
	Escribir "||======. .. .. .. .. .. .. .. .. .. .. .. .. .. ..======||"
	Escribir "==========================================================="
	
	escribir "px:",pacmanx
	escribir"py: ",pacmany
Fin Funcion

//Función de movimiento del fantasma1
Funcion MovimientoFantasma1(pacmanx,pacmany,fantasmax1,fantasmay1)
	Si pacmanx<fantasmax1 Entonces
		fantasmax1<-fantasmax1-1
	SiNo
		fantasmax1<-fantasmax1+1
	Fin Si
	
	Si pacmany<fantasmay1 Entonces
		fantasmay1<-fantasmay1-1
	SiNo
		fantasmay1<-fantasmay1+1
	Fin Si
Fin Funcion

//Función de movimiento del fantasma2
Funcion MovimientoFantasma2(pacmanx,pacmany,fantasmax2,fantasmay2)	
	Si pacmanx<fantasmax2 Entonces
		fantasmax2<-fantasmax2-2
	SiNo
		fantasmax2<-fantasmax2+2
	Fin Si
	
	Si pacmany<fantasmay2 Entonces
		fantasmay2<-fantasmay2-2
	SiNo
		fantasmay2<-fantasmay2+2
	Fin Si
Fin Funcion

//Función de movimiento del fantasma3
Funcion MovimientoFantasma3(pacmanx,pacmany,fantasmax3,fantasmay3)	
	Si pacmanx-fantasmax3 < 3 y pacmanx-fantasmax3 > 3 Entonces
		fantasmax3<-fantasmax3-1
	SiNo
		fantasmax3<-fantasmax3+1
	Fin Si
	
	Si pacmany-fantasmay3 < 3 y pacmany-fantasmay3 > 3 Entonces
		fantasmay3<-fantasmay3-2
	SiNo
		fantasmay3<-fantasmay3+1
	Fin Si
Fin Funcion

//Función de movimiento del fantasma4
Funcion MovimientoFantasma4(pacmanx,pacmany,fantasmax4,fantasmay4)	
	Repetir
		Segun azar(3)+1 Hacer
			1:
				fantasmax4<-fantasmax4+1
			2:	
				fantasmax4<-fantasmax4-1
			3:
				fantasmay4<-fantasmay4+1
			4:
				fantasmay4<-fantasmay4-1
		Fin Segun
		escribir "FX: ",fantasmax4
		Escribir "FY: " ,fantasmay4
	Hasta Que fantasmax4 >= 0 Y fantasmay4 >= 0
Fin Funcion

///FUNCIONES JUEGO SUDOKU

Funcion JuegoSudoku
	Definir c,f, tablero Como entero
	Dimension tablero[4,4];
	Definir num Como Entero;
	Definir posicion Como Caracter;
	posicion <- "";
	num <- 0;
	Para c<-0 Hasta 3 Con Paso 1 Hacer
		Para f<-0 Hasta 3 Con Paso 1 Hacer
			tablero[c,f]<-0;
		Fin Para
	Fin Para
	Repetir
		Escribir "Columnas: A, B, C.";
		Escribir "Filas: 1, 2, 3.";
		Escribir "Para finalizar ingrese (F): ";
		Escribir "Elija su posición: ";
		Leer posicion;
		Segun posicion Hacer
			'A1'o'a1':
				Escribir "Ingrese un número del (1 - 9): ";
				Leer num;
				tablero[1,1]<-num;
			'A2'o'a2':
				Escribir "Ingrese un número del (1 - 9): ";
				Leer num;
				tablero[1,2]<-num;
			'A3'o'a3':
				Escribir "Ingrese un número del (1 - 9): ";
				Leer num;
				tablero[1,3]<-num;
			'B1'o'b1':
				Escribir "Ingrese un número del (1 - 9): ";
				Leer num;
				tablero[2,1]<-num;
			'B2'o'b2':
				Escribir "Ingrese un número del (1 - 9): ";
				Leer num;
				tablero[2,2]<-num;
			'B3'o'b3':
				Escribir "Ingrese un número del (1 - 9): ";
				Leer num;
				tablero[2,3]<-num;
			'C1'o'c1':
				Escribir "Ingrese un número del (1 - 9): ";
				Leer num;
				tablero[3,1]<-num;
			'C2'o'c2':
				Escribir "Ingrese un número del (1 - 9): ";
				Leer num;
				tablero[3,2]<-num;
			'C3'o'c3':
				Escribir "Ingrese un número del (1 - 9): ";
				Leer num;
				tablero[3,3]<-num;
		Fin Segun
	Hasta Que posicion="f"o posicion="F"
	
	Para c<-1 Hasta 3 Con Paso 1 Hacer
		Para f<-1 Hasta 3 Con Paso 1 Hacer
			Escribir Sin Saltar"[",tablero[c,f],"]";
		Fin Para
		Escribir "";
	Fin Para
Fin Funcion

///FUNCIONES JUEGO BATALLA NAVAL

Funcion JuegoBatallaNaval
	
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
Fin Funcion

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
