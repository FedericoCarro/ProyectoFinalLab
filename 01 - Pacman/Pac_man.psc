Algoritmo Pac_Man
	Dimensión pacman(18,26)
	Dimension fantasma1(26,18)
	Dimension fantasma2(26,18)
	Dimension fantasma3(26,18)
	Dimension fantasma4(26,18)
	Definir i,j,pacmanx,pacmany, puntaje,max,fantasmax1,fantasmax2,fantasmax3,fantasmax4,fantasmay1,fantasmay2,fantasmay3,fantasmay4 como entero
	Definir PACMAN, movimiento como caracter
	fantasmax4<-1
	fantasmay4<-1
	fantasmax3<-1
	fantasmay3<-1
	fantasmax2<-1
	fantasmay2<-1
	fantasmax1<-10
	fantasmay1<-22
	pacmanx<-1
	pacmany<-26
	
	Bienvenida(PACMAN)
	
	// (°< (°- (*< 
	// fantasma /ü\ /ñ\ "°"
	Para i<-1 Hasta 18  Con Paso 1 Hacer
		Para j<-1 Hasta 26 Con Paso 1 Hacer
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
	
	
FinAlgoritmo

//Funciones

//Función de bienvenida - Nombre del juego
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
	Escribir "||",pacman[1,26],"||==||",pacman[4,26],"||==||",pacman[7,26],"",pacman[8,26],"||  ||",pacman[11,26],"",pacman[12,26],"||==||",pacman[15,26],"||==||",pacman[18,26],"||"
	Escribir "||",pacman[1,25],"||==||",pacman[4,25],"||  ||",pacman[7,25],"",pacman[8,25],"||  ||",pacman[11,25],"",pacman[12,25],"||  ||",pacman[15,25],"||==||",pacman[18,25],"||"  
	Escribir "||",pacman[1,24],"",pacman[2,24],"",pacman[3,24],"",pacman[4,24],"||==||",pacman[7,24],"",pacman[8,24],"||  ||",pacman[11,24],"",pacman[12,24],"||==||",pacman[15,24],"",pacman[16,24],"",pacman[17,24],"",pacman[18,24],"||"
	Escribir "||",pacman[1,23],"",pacman[2,23],"",pacman[3,23],"",pacman[4,23],"",pacman[5,23],"",pacman[6,23],"",pacman[7,23],"",pacman[8,23],"||==||",pacman[11,24],"",pacman[12,23],"",pacman[13,23],"",pacman[14,23],"",pacman[15,23],"",pacman[16,23],"",pacman[17,23],"",pacman[18,23],"||"
	Escribir "||",pacman[1,22],"======",pacman[4,22],"|==",pacman[6,22],"",pacman[7,22],"",pacman[8,22],"",pacman[9,22],"",pacman[10,22],"",pacman[11,22],"",pacman[12,22],"  ===|",pacman[15,22],"======",pacman[18,22],"||"
	Escribir "||",pacman[1,21],"",pacman[2,21],"",pacman[3,21],"",pacman[4,21],"|||",pacman[6,21]," ||===========||  ",pacman[13,21],"|||",pacman[15,21],"",pacman[16,21],"",pacman[17,21],"",pacman[18,21],"||"
	Escribir "||=======||",pacman[4,20],"|||",pacman[6,20]," ||===|| ||===||",pacman[12,20],"  ||||",pacman[15,20]," ||=======||"
	Escribir "||       ||",pacman[4,19],"|||",pacman[6,19],"",pacman[7,19],"",pacman[8,19],"|| ||",pacman[10,19],"",pacman[11,19],"",pacman[12,19],"|||",pacman[15,19]," ||       ||"
	Escribir "||       ||",pacman[4,18],"|=======|",pacman[8,18],"=====",pacman[11,18],"|=======|",pacman[15,18],"||       ||"
	Escribir "||=======||",pacman[4,17],"|||",pacman[6,17],"",pacman[7,17],"",pacman[8,17],"",pacman[9,17],"",pacman[10,17],"",pacman[11,17],"",pacman[12,17],"",pacman[13,17]," |||",pacman[15,17],"||=======||"
	Escribir "||",pacman[1,16],"",pacman[2,16],"",pacman[3,16],"",pacman[4,16],"|==",pacman[6,16]," |====     ====| ",pacman[12,16],"==|",pacman[14,16],"",pacman[15,16],"",pacman[16,16],"",pacman[18,16],"||"
	Escribir "||",pacman[1,15],"",pacman[2,15],"",pacman[3,15],"",pacman[4,15],"",pacman[5,15],"",pacman[6,15]," |             | ",pacman[12,15],"",pacman[13,15],"",pacman[14,15],"",pacman[15,15],"",pacman[16,15],"",pacman[17,15],"",pacman[18,15],"||"
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
