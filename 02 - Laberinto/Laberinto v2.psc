Algoritmo Programa_Principal
	
	Limpiar Pantalla
	Dimension VectMovPosibles[17,16]
	definir MovPersonaje,Ceros,Op_Lab Como Caracter
	Definir PosX,PosY,VectMovPosibles,Contador,Llave,Visual,CantMov,z,Pausa,Carita Como Entero
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
	
FinAlgoritmo

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