
Algoritmo Juegos_Arcade 
	definir opMenu Como Caracter
	Esperar Tecla
	AN_ApareceBarco()
	AN_BarcoDañado()
	AN_Explosion()
	AN_Pacman()
	AN_Sudoku()
	
	Repetir
		//Mensaje de bienvenida
		opMenu<-Menu()
		
		Segun opMenu hacer 
			"1": 
				JuegoLaberinto()
			"2":
				JuegoPacMan()
			"3":
				JuegoSudoku()
			"4":
				JuegoBatallaNaval()
			"5":		
				Escribir "Gracias por jugar, vuelvas prontos"
		FinSegun
	Hasta Que opMenu="5"
FinAlgoritmo

/// FUNCION MENU
Funcion opMenu<-Menu
	definir opMenu Como Caracter
	definir op Como Entero
	Repetir
		Limpiar Pantalla
		Escribir "*******************************************************************************"
		Escribir "*                       _ _    _ ______ _____  ____   _____                   *"
		Escribir "*                      | | |  | |  ____/ ____|/ __ \ / ____|                  *"
		Escribir "*                      | | |  | | |__ | |  __| |  | | (___                    *"
		Escribir "*                  _   | | |  | |  __|| | |_ | |  | |\___ \                   *"
		Escribir "*                 | |__| | |__| | |___| |__| | |__| |____) |                  *"
		Escribir "*                  \____/ \____/|______\_____|\____/|_____/                   *"
		Escribir "*                        _____   _____          _____  ______                 *"
		Escribir "*                  /\   |  __ \ / ____|   /\   |  __ \|  ____|                *"
		Escribir "*                 /  \  | |__) | |       /  \  | |  | | |__                   *"
		Escribir "*                / /\ \ |  _  /| |      / /\ \ | |  | |  __|                  *"
		Escribir "*               / ____ \| | \ \| |____ / ____ \| |__| | |____                 *"
		Escribir "*              /_/    \_\_|  \_\\_____/_/    \_\_____/|______|                *"
		Escribir "*                                                                             *"
		Escribir "*                                                                             *"
		Escribir "*                               ELIGE UN JUEGO                                *"
		Escribir "*                                                                             *"
		Escribir "*                      1. Laberinto                                           *"
		Escribir "*                      2. Pac-Man                                             *"
		Escribir "*                      3. Sudoku                                              *"
		Escribir "*                      4. Batalla Naval                                       *"
		Escribir "*                      5. SALIR                                               *"
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
		Leer opMenu	
		
		Segun opMenu Hacer
			"1":
				op<-1
			"2":
				op<-2
			"3":
				op<-3
			"4":
				op<-4
			"5":
				op<-5
			De Otro Modo:
				op<-9
		Fin Segun
		Limpiar Pantalla
		si (op<0 O op>6) Entonces
			Escribir "*******************************************************************************"
			Escribir "*                       _ _    _ ______ _____  ____   _____                   *"
			Escribir "*                      | | |  | |  ____/ ____|/ __ \ / ____|                  *"
			Escribir "*                      | | |  | | |__ | |  __| |  | | (___                    *"
			Escribir "*                  _   | | |  | |  __|| | |_ | |  | |\___ \                   *"
			Escribir "*                 | |__| | |__| | |___| |__| | |__| |____) |                  *"
			Escribir "*                  \____/ \____/|______\_____|\____/|_____/                   *"
			Escribir "*                        _____   _____          _____  ______                 *"
			Escribir "*                  /\   |  __ \ / ____|   /\   |  __ \|  ____|                *"
			Escribir "*                 /  \  | |__) | |       /  \  | |  | | |__                   *"
			Escribir "*                / /\ \ |  _  /| |      / /\ \ | |  | |  __|                  *"
			Escribir "*               / ____ \| | \ \| |____ / ____ \| |__| | |____                 *"
			Escribir "*              /_/    \_\_|  \_\\_____/_/    \_\_____/|______|                *"
			Escribir "*                                                                             *"
			Escribir "*                                                                             *"
			Escribir "*                                                                             *"
			Escribir "*                                                                             *"
			Escribir "*                                                                             *"
			Escribir "*                       < OPCION INGRESADA INCORRECTA >                       *"
			Escribir "*                                                                             *"
			Escribir "*                                                                             *"
			Escribir "*                                                                             *"
			Escribir "*                                                                             *"
			Escribir "*                                                                             *"
			Escribir "*                     PRESIONE UNA TECLA PARA CONTINUAR..                     *"
			Escribir "*                                                                             *"
			Escribir "*                                                                             *"
			Escribir "*                                                                             *"
			Escribir "*                                                                             *"
			Escribir "*                                                                             *"
			Escribir "*                                                                             *"
			Escribir "*******************************************************************************"
			Esperar Tecla
		FinSi
	Hasta Que (op>0 Y op<6)
	
Fin Funcion


Funcion AN_ApareceBarco
	Definir i Como Entero
	Definir Barco,Vacio,Agua Como Caracter
	Dimension Barco[7]
	
	Para i<-0 Hasta 74 Con Paso 2 Hacer
		Limpiar Pantalla
		Agua<-"~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
		Vacio<-"                                                                             "
		Barco[0]<-"                                          ______                             "
		Barco[1]<-"                                         |      |______                      "
		Barco[2]<-"                                         |      |      |                     "
		Barco[3]<-"       __________________________________|______|______|___________          "
		Barco[4]<-"       \                                                          /          "
		Barco[5]<-"~~~~~~~~\~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~/~~~~~~~~~~~"
		Barco[6]<-"         \______________________________________________________/            "
		Barco[0]<-Subcadena(Barco[0],74-i,74)
		Barco[1]<-Subcadena(Barco[1],74-i,74)
		Barco[2]<-Subcadena(Barco[2],74-i,74)
		Barco[3]<-Subcadena(Barco[3],74-i,74)
		Barco[4]<-Subcadena(Barco[4],74-i,74)
		Barco[5]<-Subcadena(Barco[5],74-i,74)
		Barco[6]<-Subcadena(Barco[6],74-i,74)
		Vacio<-Subcadena(Vacio,i-1,74)
		Agua<-Subcadena(Agua,i-1,74)
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
		Escribir "*                                                                             *"
		Escribir "*                                                                             *"
		Escribir "*                                                                             *"
		Escribir "*                                                                             *"
		Escribir "*                                                                             *"
		Escribir "*                                                                             *"
		Escribir "*",Barco[0],Vacio,"*"
		Escribir "*",Barco[1],Vacio,"*"
		Escribir "*",Barco[2],Vacio,"*"
		Escribir "*",Barco[3],Vacio,"*"
		Escribir "*",Barco[4],Vacio,"*"
		Escribir "*",Barco[5],Agua,"*"
		Escribir "*",Barco[6],Vacio,"*"
		Escribir "*                                                                             *"
		Escribir "*                                                                             *"
		Escribir "*                                                                             *"
		Escribir "*******************************************************************************"
		Esperar 25 Milisegundos
	Fin Para
	
Fin Funcion

Funcion AN_BarcoDañado
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
		Escribir "*                                          ______                             *"
		Escribir "*                                         |      |______                      *"
		Escribir "*                                         |      |      |                     *"
		Escribir "*       __________________________________|______|______|___________          *"
		Escribir "*       \                                                          /          *"
		Escribir "*~~~~~~~~\~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~/~~~~~~~~~~~*"
		Escribir "*         \______________________________________________________/            *"
		Escribir "*                                                                             *"
		Escribir "*                                                                             *"
		Escribir "*                                                                             *"
		Escribir "*******************************************************************************"
		Esperar 80 Milisegundos
		Limpiar Pantalla
	Fin Para
Fin Funcion

Funcion AN_Explosion
	Definir Barco Como Caracter
	Dimension Barco[10]
	Definir i,j Como Entero
	
	Barco[0]<- "*                                          ______                             *"
	Barco[1]<- "*                                         |      |______                      *"
	Barco[2]<- "*                                         |      |      |                     *"
	Barco[3]<- "*       __________________________________|______|______|___________          *"
	Barco[4]<- "*       \                                                          /          *"
	Barco[5]<- "*~~~~~~~~\~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~/~~~~~~~~~~~*"
	Barco[6]<- "*         \______________________________________________________/            *"
	Barco[7]<- "*                                                                             *"
	Barco[8]<- "*                                                                             *"
	Barco[9]<- "*                                                                             *"
	Para i<-0 Hasta 17 Con Paso 1 Hacer
		Limpiar Pantalla
		Escribir "*******************************************************************************"
		Para j<-0 Hasta i Con Paso 1 Hacer
			Escribir "*******************************************************************************"
		Fin Para
		Escribir "*******************************************************************************"
		Para j<-0 Hasta 17-i Con Paso 1 Hacer
			Escribir "*                                                                             *"
		Fin Para
		Escribir "*                                          ______                             *"
		Escribir "*                                         |      |______                      *"
		Escribir "*                                         |      |      |                     *"
		Escribir "*       __________________________________|______|______|___________          *"
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
	
	Para i<-0 Hasta 9 Con Paso 1 Hacer
		Barco[i]<- "*******************************************************************************"
		Limpiar Pantalla
		Escribir "*******************************************************************************"
		Escribir "*******************************************************************************"
		Escribir "*******************************************************************************"
		Escribir "*******************************************************************************"
		Escribir "*******************************************************************************"
		Escribir "*******************************************************************************"
		Escribir "*******************************************************************************"
		Escribir "*******************************************************************************"
		Escribir "*******************************************************************************"
		Escribir "*******************************************************************************"
		Escribir "*******************************************************************************"
		Escribir "*******************************************************************************"
		Escribir "*******************************************************************************"
		Escribir "*******************************************************************************"
		Escribir "*******************************************************************************"
		Escribir "*******************************************************************************"
		Escribir "*******************************************************************************"
		Escribir "*******************************************************************************"
		Escribir "*******************************************************************************"
		Escribir "*******************************************************************************"
		Escribir "*******************************************************************************"
		Escribir Barco[0]
		Escribir Barco[1]
		Escribir Barco[2]
		Escribir Barco[3]
		Escribir Barco[4]
		Escribir Barco[5]
		Escribir Barco[6]
		Escribir Barco[7]
		Escribir Barco[8]
		Escribir Barco[9]
		Escribir "*******************************************************************************"
		Esperar 40 Milisegundos
		Limpiar Pantalla
	Fin Para
	
Fin Funcion


Funcion AN_Pacman
	Definir i,j Como Entero
	Definir Pacman,Vacio,Pelota Como Caracter
	Dimension Pacman[9]
	Dimension Pelota[2]
	Para i<-1 Hasta 30 Con Paso 1 Hacer
		Limpiar Pantalla
		Escribir "*******************************************************************************"
		Para j<-1 Hasta i Con Paso 1 Hacer
			Escribir "*                                                                             *"
		Fin Para
		Para j<-30 Hasta i Con Paso -1 Hacer
			Escribir "*******************************************************************************"
		Fin Para
		Esperar 40 Milisegundos
		
		Limpiar Pantalla
	Fin Para
	
	Para i<-0 Hasta 75 Con Paso 5 Hacer
		Limpiar Pantalla
		Vacio<-"                                                                             "
		Pelota[0]<-"    /ª\   /ª\   /ª\   /ª\   /ª\   /ª\   /ª\   /ª\   /ª\   /ª\   /ª\   /ª\    "
		Pelota[1]<-"    \_/   \_/   \_/   \_/   \_/   \_/   \_/   \_/   \_/   \_/   \_/   \_/    "
		Pacman[0]<-"                                                                _________    "
		Pacman[1]<-"                                                               /         \   "
		Pacman[2]<-"                                                              /      ()   \  "
		Pacman[3]<-"                                                             /            /  "
		Pacman[4]<-"                                                            |            /   "
		Pacman[5]<-"                                                            |            \   "
		Pacman[6]<-"                                                             \            \  "
		Pacman[7]<-"                                                              \           /  "
		Pacman[8]<-"                                                               \_________/   "
		
		Vacio<-Subcadena(Vacio,i,75)
		Pacman[0]<-Subcadena(Pacman[0],75-i,75)
		Pacman[1]<-Subcadena(Pacman[1],75-i,75)
		Pacman[2]<-Subcadena(Pacman[2],75-i,75)
		Pacman[3]<-Subcadena(Pacman[3],75-i,75)
		Pacman[4]<-Subcadena(Pacman[4],75-i,75)
		Pacman[5]<-Subcadena(Pacman[5],75-i,75)
		Pacman[6]<-Subcadena(Pacman[6],75-i,75)
		Pacman[7]<-Subcadena(Pacman[7],75-i,75)
		Pacman[8]<-Subcadena(Pacman[8],75-i,75)
		Pelota[0]<-Subcadena(Pelota[0],i,75)
		Pelota[1]<-Subcadena(Pelota[1],i,75)
		
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
		Escribir "*",Pacman[0],Vacio,"*"
		Escribir "*",Pacman[1],Vacio,"*"
		Escribir "*",Pacman[2],Vacio,"*"
		Escribir "*",Pacman[3],Vacio,"*"
		Escribir "*",Pacman[4],Pelota[0],"*"
		Escribir "*",Pacman[5],Pelota[1],"*"
		Escribir "*",Pacman[6],Vacio,"*"
		Escribir "*",Pacman[7],Vacio,"*"
		Escribir "*",Pacman[8],Vacio,"*"
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
		Esperar 100 Milisegundos
	Fin Para
	
	Para i<-0 Hasta 15 Con Paso 3 Hacer
		Limpiar Pantalla
		Vacio<-"                                                                             "
		Pelota[0]<-"    /T\   /T\   /T\   /T\   /T\   /T\   /T\   /T\   /T\   /T\   /T\   /T\    "
		Pelota[1]<-"    \_/   \_/   \_/   \_/   \_/   \_/   \_/   \_/   \_/   \_/   \_/   \_/    "
		Pacman[0]<-"                                                                _________    "
		Pacman[1]<-"                                                               /         \   "
		Pacman[2]<-"                                                              /      ()   \  "
		Pacman[3]<-"                                                             /            /  "
		Pacman[4]<-"                                                            |            /   "
		Pacman[5]<-"                                                            |            \   "
		Pacman[6]<-"                                                             \            \  "
		Pacman[7]<-"                                                              \           /  "
		Pacman[8]<-"                                                               \_________/   "
		
		Vacio<-Subcadena(Vacio,0,60+i)
		Pacman[0]<-Subcadena(Pacman[0],60,75-i)
		Pacman[1]<-Subcadena(Pacman[1],60,75-i)
		Pacman[2]<-Subcadena(Pacman[2],60,75-i)
		Pacman[3]<-Subcadena(Pacman[3],60,75-i)
		Pacman[4]<-Subcadena(Pacman[4],60,75-i)
		Pacman[5]<-Subcadena(Pacman[5],60,75-i)
		Pacman[6]<-Subcadena(Pacman[6],60,75-i)
		Pacman[7]<-Subcadena(Pacman[7],60,75-i)
		Pacman[8]<-Subcadena(Pacman[8],60,75-i)
		Pelota[0]<-Subcadena(Pelota[0],60,75-i)
		Pelota[1]<-Subcadena(Pelota[1],60,75-i)
		
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
		Escribir "*",Vacio,Pacman[0],"*"
		Escribir "*",Vacio,Pacman[1],"*"
		Escribir "*",Vacio,Pacman[2],"*"
		Escribir "*",Vacio,Pacman[3],"*"
		Escribir "*",Vacio,Pacman[4],"*"
		Escribir "*",Vacio,Pacman[5],"*"
		Escribir "*",Vacio,Pacman[6],"*"
		Escribir "*",Vacio,Pacman[7],"*"
		Escribir "*",Vacio,Pacman[8],"*"
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
		Esperar 100 Milisegundos
	Fin Para
	
Fin Funcion

Funcion AN_Sudoku
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
	Escribir "*                     ++=========++=========++=========++                     *"
	Escribir "*                     || 4  1  9 || 3  8  6 || 2  7  5 ||                     *"
	Escribir "*                     || 2  5  8 || 1  4  7 || 3  9  6 ||                     *"
	Escribir "*                     || 3  7  6 || 5  2  9 || 8  1  4 ||                     *"
	Escribir "*             n___n   ++=========++=========++=========++                     *"
	Escribir "*            (o _ o)  || 5  6  7 || 2  1  3 || 9  4  8 ||                     *"
	Escribir "*            |\_   |\_|| 9  8  3 || 4  6  5 || 1  2  7 ||                     *"
	Escribir "*             ~~~~~   || 1  2  4 || 7  9  8 || 6  5  3 ||                     *"
	Escribir "*                     ++=========++=========++=========++                     *"
	Escribir "*                     || 7  3  1 || 6  5  2 || 4  8  9 ||                     *"
	Escribir "*                     || 8  4  5 || 9  3  1 || 7  6  2 ||                     *"
	Escribir "*                     || 6  9  2 || 8  7  4 || 5  3  1 ||                     *"
	Escribir "*                     ++=========++=========++=========++                     *"
	Escribir "*                                                                             *"
	Escribir "*                                                                             *"
	Escribir "*                                                                             *"
	Escribir "*                                                                             *"
	Escribir "*                                                                             *"
	Escribir "*                                                                             *"
	Escribir "*                                                                             *"
	Escribir "*                                                                             *"
	Escribir "*******************************************************************************"
//	
	Definir i Como Entero
	Definir Sudoku,Vacio,Conejito Como Caracter
	Dimension Sudoku[13]
	Dimension Conejito[20]
	
	Para i<-0 Hasta 75 Con Paso 2 Hacer
		Limpiar Pantalla
		Vacio<-"                                                                             "
		Sudoku[0]<- "                     ++=========++=========++=========++                     "
		Sudoku[1]<- "                     || _  1  9 || _  8  _ || _  7  _ ||                     "
		Sudoku[2]<- "                     || 2  5  _ || 1  4  7 || 3  9  _ ||                     "
		Sudoku[3]<- "                     || 3  _  6 || 5  _  9 || 8  1  4 ||                     "
		Sudoku[4]<- "             n___n   ++=========++=========++=========++                     "
		Sudoku[5]<- "            (o _ o)  || 5  _  7 || 2  1  _ || 9  4  _ ||                     "
		Sudoku[6]<- "            |\_   |\_|| _  8  3 || 4  _  5 || _  _  7 ||                     "
		Sudoku[7]<- "             ~~~~~   || 1  2  _ || _  9  _ || _  5  3 ||                     "
		Sudoku[8]<- "                     ++=========++=========++=========++                     "
		Sudoku[9]<- "                     || 7  _  1 || _  5  _ || _  8  _ ||                     "
		Sudoku[10]<-"                     || _  4  _ || 9  _  1 || 7  _  _ ||                     "
		Sudoku[11]<-"                     || 6  _  _ || 8  7  _ || _  3  _ ||                     "
		Sudoku[12]<-"                     ++=========++=========++=========++                     "
		Sudoku[0]<-Subcadena(Sudoku[0],75-i,75)
		Sudoku[1]<-Subcadena(Sudoku[1],75-i,75)
		Sudoku[2]<-Subcadena(Sudoku[2],75-i,75)
		Sudoku[3]<-Subcadena(Sudoku[3],75-i,75)
		Sudoku[4]<-Subcadena(Sudoku[4],75-i,75)
		Sudoku[5]<-Subcadena(Sudoku[5],75-i,75)
		Sudoku[6]<-Subcadena(Sudoku[6],75-i,75)
		Sudoku[7]<-Subcadena(Sudoku[7],75-i,75)
		Sudoku[8]<-Subcadena(Sudoku[8],75-i,75)
		Sudoku[9]<-Subcadena(Sudoku[9],75-i,75)
		Sudoku[10]<-Subcadena(Sudoku[10],75-i,75)
		Sudoku[11]<-Subcadena(Sudoku[11],75-i,75)
		Sudoku[12]<-Subcadena(Sudoku[12],75-i,75)
		Vacio<-Subcadena(Vacio,i,75)
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
		Escribir "*",Sudoku[0],Vacio,"*"
		Escribir "*",Sudoku[1],Vacio,"*"
		Escribir "*",Sudoku[2],Vacio,"*"
		Escribir "*",Sudoku[3],Vacio,"*"
		Escribir "*",Sudoku[4],Vacio,"*"
		Escribir "*",Sudoku[5],Vacio,"*"
		Escribir "*",Sudoku[6],Vacio,"*"
		Escribir "*",Sudoku[7],Vacio,"*"
		Escribir "*",Sudoku[8],Vacio,"*"
		Escribir "*",Sudoku[9],Vacio,"*"
		Escribir "*",Sudoku[10],Vacio,"*"
		Escribir "*",Sudoku[11],Vacio,"*"
		Escribir "*",Sudoku[12],Vacio,"*"
		Escribir "*                                                                             *"
		Escribir "*                                                                             *"
		Escribir "*                                                                             *"
		Escribir "*                                                                             *"
		Escribir "*                                                                             *"
		Escribir "*                                                                             *"
		Escribir "*                                                                             *"
		Escribir "*                                                                             *"
		Escribir "*******************************************************************************"
		Esperar 50 Milisegundos
	Fin Para
	
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
	Escribir "*                     ++=========++=========++=========++                     *"
	Escribir "*                     || 4  1  9 || _  8  _ || _  7  5 ||                     *"
	Escribir "*                     || 2  5  _ || 1  4  7 || 3  9  _ ||                     *"
	Escribir "*                     || 3  _  6 || 5  2  9 || 8  1  4 ||                     *"
	Escribir "*             n___n   ++=========++=========++=========++                     *"
	Escribir "*            (o _ o)  || 5  _  7 || 2  1  _ || 9  4  8 ||                     *"
	Escribir "*            |\_   |\_|| _  8  3 || 4  _  5 || _  2  7 ||                     *"
	Escribir "*             ~~~~~   || 1  2  _ || _  9  _ || 6  5  3 ||                     *"
	Escribir "*                     ++=========++=========++=========++                     *"
	Escribir "*                     || 7  3  1 || _  5  2 || 4  8  9 ||                     *"
	Escribir "*                     || _  4  5 || 9  3  1 || 7  _  _ ||                     *"
	Escribir "*                     || 6  9  _ || 8  7  _ || _  3  1 ||                     *"
	Escribir "*                     ++=========++=========++=========++                     *"
	Escribir "*                                                                             *"
	Escribir "*                                                                             *"
	Escribir "*                                                                             *"
	Escribir "*                                                                             *"
	Escribir "*                                                                             *"
	Escribir "*                                                                             *"
	Escribir "*                                                                             *"
	Escribir "*                                                                             *"
	Escribir "*******************************************************************************"
	Esperar 500 Milisegundos
	
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
	Escribir "*                     ++=========++=========++=========++                     *"
	Escribir "*                     || 4  1  9 || _  8  _ || 2  7  5 ||                     *"
	Escribir "*                     || 2  5  _ || 1  4  7 || 3  9  6 ||                     *"
	Escribir "*                     || 3  _  6 || 5  2  9 || 8  1  4 ||                     *"
	Escribir "*             n___n   ++=========++=========++=========++                     *"
	Escribir "*            (o _ o)  || 5  _  7 || 2  1  3 || 9  4  8 ||                     *"
	Escribir "*            |\_   |\_|| _  8  3 || 4  6  5 || _  2  7 ||                     *"
	Escribir "*             ~~~~~   || 1  2  _ || _  9  _ || 6  5  3 ||                     *"
	Escribir "*                     ++=========++=========++=========++                     *"
	Escribir "*                     || 7  3  1 || _  5  2 || 4  8  9 ||                     *"
	Escribir "*                     || _  4  5 || 9  3  1 || 7  2  _ ||                     *"
	Escribir "*                     || 6  9  _ || 8  7  _ || _  3  1 ||                     *"
	Escribir "*                     ++=========++=========++=========++                     *"
	Escribir "*                                                                             *"
	Escribir "*                                                                             *"
	Escribir "*                                                                             *"
	Escribir "*                                                                             *"
	Escribir "*                                                                             *"
	Escribir "*                                                                             *"
	Escribir "*                                                                             *"
	Escribir "*                                                                             *"
	Escribir "*******************************************************************************"
	Esperar 500 Milisegundos
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
	Escribir "*                     ++=========++=========++=========++                     *"
	Escribir "*                     || 4  1  9 || 3  8  6 || 2  7  5 ||                     *"
	Escribir "*                     || 2  5  8 || 1  4  7 || 3  9  6 ||                     *"
	Escribir "*                     || 3  7  6 || 5  2  9 || 8  1  4 ||                     *"
	Escribir "*             n___n   ++=========++=========++=========++                     *"
	Escribir "*            (o _ o)  || 5  6  7 || 2  1  3 || 9  4  8 ||                     *"
	Escribir "*            |\_   |\_|| 9  8  3 || 4  6  5 || 1  2  7 ||                     *"
	Escribir "*             ~~~~~   || 1  2  4 || 7  9  8 || 6  5  3 ||                     *"
	Escribir "*                     ++=========++=========++=========++                     *"
	Escribir "*                     || 7  3  1 || 6  5  2 || 4  8  9 ||                     *"
	Escribir "*                     || 8  4  5 || 9  3  1 || 7  6  2 ||                     *"
	Escribir "*                     || 6  9  2 || 8  7  4 || 5  3  1 ||                     *"
	Escribir "*                     ++=========++=========++=========++                     *"
	Escribir "*                                                                             *"
	Escribir "*                                                                             *"
	Escribir "*                                                                             *"
	Escribir "*                                                                             *"
	Escribir "*                                                                             *"
	Escribir "*                                                                             *"
	Escribir "*                                                                             *"
	Escribir "*                                                                             *"
	Escribir "*******************************************************************************"
	Esperar 500 Milisegundos
	
	Para i<-0 Hasta 19 Con Paso 1 Hacer
		Conejito[i]<-"         "
	Fin Para
	Para i<-0 Hasta 8 Con Paso 1 Hacer
		Limpiar Pantalla
		Conejito[i]<-" ~~~~~   "
		Conejito[i+1]<-"|\_   |\_"
		Conejito[i+2]<-"(^ u ^)  "
		Conejito[i+3]<-" n___n   "
		Escribir "*******************************************************************************"
		Escribir "*                                                                             *"
		Escribir "*                                                                             *"
		Escribir "*                                                                             *"
		Escribir "*                                                                             *"
		Escribir "*                                                                             *"
		Escribir "*            ",Conejito[11],"                                                        *"
		Escribir "*            ",Conejito[10],"                                                        *"
		Escribir "*            ",Conejito[9],"                                                        *"
		Escribir "*            ",Conejito[8],"                                                        *"
		Escribir "*            ",Conejito[7],"++=========++=========++=========++                     *"
		Escribir "*            ",Conejito[6],"|| 4  1  9 || 3  8  6 || 2  7  5 ||                     *"
		Escribir "*            ",Conejito[5],"|| 2  5  8 || 1  4  7 || 3  9  6 ||                     *"
		Escribir "*            ",Conejito[4],"|| 3  7  6 || 5  2  9 || 8  1  4 ||                     *"
		Escribir "*            ",Conejito[3],"++=========++=========++=========++                     *"
		Escribir "*            ",Conejito[2],"|| 5  6  7 || 2  1  3 || 9  4  8 ||                     *"
		Escribir "*            ",Conejito[1],"|| 9  8  3 || 4  6  5 || 1  2  7 ||                     *"
		Escribir "*            ",Conejito[0],"|| 1  2  4 || 7  9  8 || 6  5  3 ||                     *"
		Escribir "*                     ++=========++=========++=========++                     *"
		Escribir "*                     || 7  3  1 || 6  5  2 || 4  8  9 ||                     *"
		Escribir "*                     || 8  4  5 || 9  3  1 || 7  6  2 ||                     *"
		Escribir "*                     || 6  9  2 || 8  7  4 || 5  3  1 ||                     *"
		Escribir "*                     ++=========++=========++=========++                     *"
		Escribir "*                                                                             *"
		Escribir "*                                                                             *"
		Escribir "*                                                                             *"
		Escribir "*                                                                             *"
		Escribir "*                                                                             *"
		Escribir "*                                                                             *"
		Escribir "*                                                                             *"
		Escribir "*                                                                             *"
		Escribir "*******************************************************************************"
		Conejito[i]<-"         "
		Conejito[i+1]<-"         "
		Conejito[i+2]<-"         "
		Conejito[i+3]<-"         "
		Esperar 100 Milisegundos
	Fin Para
	
	Para i<-0 Hasta 19 Con Paso 1 Hacer
		Conejito[i]<-"         "
	Fin Para
	Para i<-0 Hasta 16 Con Paso 4 Hacer
		Limpiar Pantalla
		Conejito[i]<-" ~~~~~   "
		Conejito[i+1]<-"|\_   |\_"
		Conejito[i+2]<-"(^ u ^)  "
		Conejito[i+3]<-" n___n   "
		Escribir "*******************************************************************************"
		Escribir "*                                                                             *"
		Escribir "*                                                                             *"
		Escribir "*                                                                             *"
		Escribir "*                                                                             *"
		Escribir "*                                                                             *"
		Escribir "*            ",Conejito[3],"   ",Conejito[7],"   ",Conejito[11],"   ",Conejito[15]," ",Conejito[19],"          *"
		Escribir "*            ",Conejito[2],"   ",Conejito[6],"   ",Conejito[10],"   ",Conejito[14]," ",Conejito[18],"          *"
		Escribir "*            ",Conejito[1],"   ",Conejito[5],"   ",Conejito[9],"   ",Conejito[13]," ",Conejito[17],"          *"
		Escribir "*            ",Conejito[0],"   ",Conejito[4],"   ",Conejito[8],"   ",Conejito[12]," ",Conejito[16],"          *"
		Escribir "*                     ++=========++=========++=========++                     *"
		Escribir "*                     || 4  1  9 || 3  8  6 || 2  7  5 ||                     *"
		Escribir "*                     || 2  5  8 || 1  4  7 || 3  9  6 ||                     *"
		Escribir "*                     || 3  7  6 || 5  2  9 || 8  1  4 ||                     *"
		Escribir "*                     ++=========++=========++=========++                     *"
		Escribir "*                     || 5  6  7 || 2  1  3 || 9  4  8 ||                     *"
		Escribir "*                     || 9  8  3 || 4  6  5 || 1  2  7 ||                     *"
		Escribir "*                     || 1  2  4 || 7  9  8 || 6  5  3 ||                     *"
		Escribir "*                     ++=========++=========++=========++                     *"
		Escribir "*                     || 7  3  1 || 6  5  2 || 4  8  9 ||                     *"
		Escribir "*                     || 8  4  5 || 9  3  1 || 7  6  2 ||                     *"
		Escribir "*                     || 6  9  2 || 8  7  4 || 5  3  1 ||                     *"
		Escribir "*                     ++=========++=========++=========++                     *"
		Escribir "*                                                                             *"
		Escribir "*                                                                             *"
		Escribir "*                                                                             *"
		Escribir "*                                                                             *"
		Escribir "*                                                                             *"
		Escribir "*                                                                             *"
		Escribir "*                                                                             *"
		Escribir "*                                                                             *"
		Escribir "*******************************************************************************"
		Conejito[i]<-"         "
		Conejito[i+1]<-"         "
		Conejito[i+2]<-"         "
		Conejito[i+3]<-"         "
		Esperar 100 Milisegundos
	Fin Para
	
	Para i<-0 Hasta 19 Con Paso 1 Hacer
		Conejito[i]<-"        "
	Fin Para
	
	Para i<-11 Hasta 3 Con Paso -1 Hacer
		Limpiar Pantalla
		Conejito[i-3]<-"  ~~~~~ "
		Conejito[i-2]<-"_/|  _/|"
		Conejito[i-1]<-" (^ u ^)"
		Conejito[i]<-"  n___n "
		Escribir "*******************************************************************************"
		Escribir "*                                                                             *"
		Escribir "*                                                                             *"
		Escribir "*                                                                             *"
		Escribir "*                                                                             *"
		Escribir "*                                                                             *"
		Escribir "*                                                        ",Conejito[11],"             *"
		Escribir "*                                                        ",Conejito[10],"             *"
		Escribir "*                                                        ",Conejito[9],"             *"
		Escribir "*                                                        ",Conejito[8],"             *"
		Escribir "*                     ++=========++=========++=========++",Conejito[7],"             *"
		Escribir "*                     || 4  1  9 || 3  8  6 || 2  7  5 ||",Conejito[6],"             *"
		Escribir "*                     || 2  5  8 || 1  4  7 || 3  9  6 ||",Conejito[5],"             *"
		Escribir "*                     || 3  7  6 || 5  2  9 || 8  1  4 ||",Conejito[4],"             *"
		Escribir "*                     ++=========++=========++=========++",Conejito[3],"             *"
		Escribir "*                     || 5  6  7 || 2  1  3 || 9  4  8 ||",Conejito[2],"             *"
		Escribir "*                     || 9  8  3 || 4  6  5 || 1  2  7 ||",Conejito[1],"             *"
		Escribir "*                     || 1  2  4 || 7  9  8 || 6  5  3 ||",Conejito[0],"             *"
		Escribir "*                     ++=========++=========++=========++                     *"
		Escribir "*                     || 7  3  1 || 6  5  2 || 4  8  9 ||                     *"
		Escribir "*                     || 8  4  5 || 9  3  1 || 7  6  2 ||                     *"
		Escribir "*                     || 6  9  2 || 8  7  4 || 5  3  1 ||                     *"
		Escribir "*                     ++=========++=========++=========++                     *"
		Escribir "*                                                                             *"
		Escribir "*                                                                             *"
		Escribir "*                                                                             *"
		Escribir "*                                                                             *"
		Escribir "*                                                                             *"
		Escribir "*                                                                             *"
		Escribir "*                                                                             *"
		Escribir "*                                                                             *"
		Escribir "*******************************************************************************"
		Conejito[i]<-"        "
		Conejito[i-1]<-"        "
		Conejito[i-2]<-"        "
		Conejito[i-3]<-"        "
		Esperar 100 Milisegundos
	Fin Para
	
	
	Para i<-0 Hasta 75 Con Paso 2 Hacer
		Limpiar Pantalla
		Vacio<-"                                                                             "
		Sudoku[0]<- "                     ++=========++=========++=========++                     "
		Sudoku[1]<- "                     || 4  1  9 || 3  8  6 || 2  7  5 ||                     "
		Sudoku[2]<- "                     || 2  5  8 || 1  4  7 || 3  9  6 ||                     "
		Sudoku[3]<- "                     || 3  7  6 || 5  2  9 || 8  1  4 ||                     "
		Sudoku[4]<- "                     ++=========++=========++=========++  n___n              "
		Sudoku[5]<- "                     || 5  6  7 || 2  1  3 || 9  4  8 || (^ u ^)             "
		Sudoku[6]<- "                     || 9  8  3 || 4  6  5 || 1  2  7 ||_/|  _/|             "
		Sudoku[7]<- "                     || 1  2  4 || 7  9  8 || 6  5  3 ||  ~~~~~              "
		Sudoku[8]<- "                     ++=========++=========++=========++                     "
		Sudoku[9]<- "                     || 7  3  1 || 6  5  2 || 4  8  9 ||                     "
		Sudoku[10]<-"                     || 8  4  5 || 9  3  1 || 7  6  2 ||                     "
		Sudoku[11]<-"                     || 6  9  2 || 8  7  4 || 5  3  1 ||                     "
		Sudoku[12]<-"                     ++=========++=========++=========++                     "
		Sudoku[0]<-Subcadena(Sudoku[0],i,75)
		Sudoku[1]<-Subcadena(Sudoku[1],i,75)
		Sudoku[2]<-Subcadena(Sudoku[2],i,75)
		Sudoku[3]<-Subcadena(Sudoku[3],i,75)
		Sudoku[4]<-Subcadena(Sudoku[4],i,75)
		Sudoku[5]<-Subcadena(Sudoku[5],i,75)
		Sudoku[6]<-Subcadena(Sudoku[6],i,75)
		Sudoku[7]<-Subcadena(Sudoku[7],i,75)
		Sudoku[8]<-Subcadena(Sudoku[8],i,75)
		Sudoku[9]<-Subcadena(Sudoku[9],i,75)
		Sudoku[10]<-Subcadena(Sudoku[10],i,75)
		Sudoku[11]<-Subcadena(Sudoku[11],i,75)
		Sudoku[12]<-Subcadena(Sudoku[12],i,75)
		Vacio<-Subcadena(Vacio,75-i,75)
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
		Escribir "*",Sudoku[0],Vacio,"*"
		Escribir "*",Sudoku[1],Vacio,"*"
		Escribir "*",Sudoku[2],Vacio,"*"
		Escribir "*",Sudoku[3],Vacio,"*"
		Escribir "*",Sudoku[4],Vacio,"*"
		Escribir "*",Sudoku[5],Vacio,"*"
		Escribir "*",Sudoku[6],Vacio,"*"
		Escribir "*",Sudoku[7],Vacio,"*"
		Escribir "*",Sudoku[8],Vacio,"*"
		Escribir "*",Sudoku[9],Vacio,"*"
		Escribir "*",Sudoku[10],Vacio,"*"
		Escribir "*",Sudoku[11],Vacio,"*"
		Escribir "*",Sudoku[12],Vacio,"*"
		Escribir "*                                                                             *"
		Escribir "*                                                                             *"
		Escribir "*                                                                             *"
		Escribir "*                                                                             *"
		Escribir "*                                                                             *"
		Escribir "*                                                                             *"
		Escribir "*                                                                             *"
		Escribir "*                                                                             *"
		Escribir "*******************************************************************************"
		Esperar 50 Milisegundos
	Fin Para
	
	Para i<-0 Hasta 6 Con Paso 1 Hacer
		Limpiar Pantalla
		si i mod 2=0 Entonces
			Escribir "*******************************************************************************"
			Escribir "*                       _ _    _ ______ _____  ____   _____                   *"
			Escribir "*                      | | |  | |  ____/ ____|/ __ \ / ____|                  *"
			Escribir "*                      | | |  | | |__ | |  __| |  | | (___                    *"
			Escribir "*                  _   | | |  | |  __|| | |_ | |  | |\___ \                   *"
			Escribir "*                 | |__| | |__| | |___| |__| | |__| |____) |                  *"
			Escribir "*                  \____/ \____/|______\_____|\____/|_____/                   *"
			Escribir "*                        _____   _____          _____  ______                 *"
			Escribir "*                  /\   |  __ \ / ____|   /\   |  __ \|  ____|                *"
			Escribir "*                 /  \  | |__) | |       /  \  | |  | | |__                   *"
			Escribir "*                / /\ \ |  _  /| |      / /\ \ | |  | |  __|                  *"
			Escribir "*               / ____ \| | \ \| |____ / ____ \| |__| | |____                 *"
			Escribir "*              /_/    \_\_|  \_\\_____/_/    \_\_____/|______|                *"
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
		SiNo
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
		FinSi
		Esperar 200 Milisegundos
	Fin Para
Fin Funcion

////////////////////////////////////////////////////////////////////// FUNCIONES JUEGO LABERINTO /////////////////////////////////////////////////////////////////////////////////////
Funcion JuegoLaberinto
	
	Limpiar Pantalla
	definir Op_Lab Como Caracter
	Animacion_Inicio_Lab
	
	Repetir
		Op_Lab<-Menu_Lab
		Segun Op_Lab Hacer
			"1":
				JugarLaberinto()
			"2":
				Instrucciones_Laberinto()
				Esperar Tecla
		Fin Segun 
	Hasta Que Op_Lab="3"
Fin Funcion

Funcion JugarLaberinto 
	Dimension VectMovPosibles[17,16]
	definir MovPersonaje,Ceros Como Caracter
	Definir PosX,PosY,VectMovPosibles,Contador,Llave,CantMov,z,Pausa,Carita Como Entero
	Definir MovSing Como cadena	
	Definir  ii,jj Como Entero
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
	VisualPorBloques(PosX,PosY,LLave,Contador,Ceros,Carita)
	Mientras (((PosY<>0 O PosX<>1) o Llave<>1) Y Pausa<>3) Hacer
		
		MovPersonaje<-CargaDeMovimiento(MovPersonaje)
		CantMov<-Longitud(MovPersonaje)
		
		Para z<-0 Hasta CantMov Con Paso 1 Hacer
			MovSing<-Subcadena(MovPersonaje,z,z)
			Si MovSing='P' Entonces
				Pausa<-PausaLaberinto()
			Fin Si
		Fin Para
		si Pausa<>3 Entonces
			Para z<-0 Hasta CantMov Con Paso 1 Hacer
				MovSing<-Subcadena(MovPersonaje,z,z)
				Si	PosY=12 Y PosX=5 Entonces 						//////////// ACA AGARRA LA LLAVE
					Llave<-1
					Carita<-1
					VectMovPosibles[1,1]<-14
				FinSi
				MovValidoLab(VectMovPosibles,PosX,PosY,MovSing,Contador)
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
					VisualPorBloques(PosX,PosY,LLave,Contador,Ceros,Carita)
				FinSi
			Fin Para	
		FinSi
		Si (((PosY=0 Y PosX=1) Y Llave=1)) Entonces
			Victoria_Laberinto()
			Esperar Tecla
		Fin Si
	Fin Mientras
FinFuncion

Funcion MovValidoLab(VectMovPosibles,PosX Por Referencia,PosY Por Referencia,MovSing,Contador Por Referencia)
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
	Escribir Sin Saltar  ("Ingresá tu movimiento: (P para pausa) ")
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
	Escribir "*******************************************************************************"
	Escribir "*                                                                             *"
	Escribir "*                                                                             *"
	Escribir "*                                                                             *"
	Escribir "*                                                                             *"
	Escribir "*                                                                             *"
	Escribir "*                                                                             *"
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
					Escribir "*                           Contador de pasos: ",Ceros,Contador,"                            *"
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
					Escribir "*                           Contador de pasos: ",Ceros,Contador,"                            *"
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
					Escribir "*                           Contador de pasos: ",Ceros,Contador,"                            *"
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
					Escribir "*                           Contador de pasos: ",Ceros,Contador,"                            *"
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
					Escribir "*                           Contador de pasos: ",Ceros,Contador,"                            *"
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
					Escribir "*                           Contador de pasos: ",Ceros,Contador,"                            *"
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
					Escribir "*                           Contador de pasos: ",Ceros,Contador,"                            *"
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
					Escribir "*                           Contador de pasos: ",Ceros,Contador,"                            *"
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
							Escribir "*                           Contador de pasos: ",Ceros,Contador,"                            *"
							Si i mod 2=0 Entonces
								Cab[PersX,PersY]<-"  (o _ o)  "
							Sino
								Cab[PersX,PersY]<-"  (^ u ^)  "
							FinSi						
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
						Escribir "*                           Contador de pasos: ",Ceros,Contador,"                            *"
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
					Escribir "*                           Contador de pasos: ",Ceros,Contador,"                            *"
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
					Escribir "*                           Contador de pasos: ",Ceros,Contador,"                            *"
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
					Escribir "*                           Contador de pasos: ",Ceros,Contador,"                            *"
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
					Escribir "*                           Contador de pasos: ",Ceros,Contador,"                            *"
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
					Escribir "*                           Contador de pasos: ",Ceros,Contador,"                            *"
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
					Escribir "*                           Contador de pasos: ",Ceros,Contador,"                            *"
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
					Escribir "*                           Contador de pasos: ",Ceros,Contador,"                            *"
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
					Escribir "*                           Contador de pasos: ",Ceros,Contador,"                            *"
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
					Escribir "*                           Contador de pasos: ",Ceros,Contador,"                            *"
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
					Escribir "*                           Contador de pasos: ",Ceros,Contador,"                            *"
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
					Escribir "*                           Contador de pasos: ",Ceros,Contador,"                            *"
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
					Escribir "*                           Contador de pasos: ",Ceros,Contador,"                            *"
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
					Escribir "*                           Contador de pasos: ",Ceros,Contador,"                            *"
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
					Escribir "*                           Contador de pasos: ",Ceros,Contador,"                            *"
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
					Escribir "*                           Contador de pasos: ",Ceros,Contador,"                            *"
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
					Escribir "*                           Contador de pasos: ",Ceros,Contador,"                            *"
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
	Escribir "*                                                                             *"
	Escribir "*                                                                             *"
	Escribir "*                                                                             *"
	Escribir "*                                                                             *"
	Escribir "*                                                                             *"
	Escribir "*                                                                             *"
	Escribir "*******************************************************************************"
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
			Instrucciones_Laberinto()
			Esperar Tecla
		Fin Si
	Hasta Que Pausa=3 o Pausa=1
	
Fin Funcion
////////////////////////////////////////////////////////////////////// FUNCIONES JUEGO PAC-MAN /////////////////////////////////////////////////////////////////////////////////////
Funcion JuegoPacman
	Definir OpcionPacman Como Caracter
	Repetir
		Limpiar Pantalla
		OpcionPacman <- MenuPacman	
		
		Segun OpcionPacman Hacer
			"1":
				InicioPacman()
			"2":
				Instrucciones()
		FinSegun
	Hasta Que OpcionPacman="3"
FinFuncion


Funcion InicioPacman 
	Definir i,j,pacmanx,pacmany, puntaje,max,VectMovPacmanPosibles,ContSecF3,PuntosTablero,Dist,Tiempo_PacManEnojado,DistF1,CoordsGuardF,MaxDist,posicion como entero
	Definir PosGuardadaF1,PosGuardadaF2,PosGuardadaF3,PosGuardadaF4,SiguenteMov,Pacman,SecuenciaF3,pausa Como  caracter
	Definir MovValidoPacman,Choque,InicioF2,PacmanEnojado,SalirPausa,Salir Como Logico
	Definir movimiento,AnimPac,MovF3,MovF4 como caracter
	Definir PosFant Como Entero
	Definir Vidas Como Entero
	
	Dimensión VectMovPacmanPosibles(19,22) 
	Dimensión Pacman(19,22) 	
	Dimension fantasma1(19,22)
	Dimension fantasma2(19,22)
	Dimension fantasma3(19,22)
	Dimension fantasma4(19,22)
	Dimension PosFant(4,2)
	Dimension DistF1(4)
	Dimension CoordsGuardF(2)
	//Se visualizan no se mueven
	vidas<-3
	Salir<-Falso
	MovimientosDisponiblesPacman(VectMovPacmanPosibles)
	
	Mientras Vidas<>0 Y Salir=Falso Hacer
		AnimacionPacman()
		Choque<-Falso
		Salir<-Falso
		PosFant[0,0]<-10 //POS X DEL FANT 1
		PosFant[0,1]<-13 //POS Y DEL FANT 1
		PosFant[1,0]<-2 //POS X DEL FANT 2
		PosFant[1,1]<-20 //POS Y DEL FANT 2
		PosFant[2,0]<-15 //POS X DEL FANT 3
		PosFant[2,1]<-19 //POS Y DEL FANT 3
		PosFant[3,0]<-13 //POS X DEL FANT 4
		PosFant[3,1]<-4 //POS Y DEL FANT 4
		pacmanx<-10
		pacmany<-5
		ContSecF3<-0
		Tiempo_PacManEnojado<-0
		PuntosTablero<-0
		AnimPac<-"(·<"
		
		Para i<-0 Hasta 18  Con Paso 1 Hacer
			Para j<-0 Hasta 21 Con Paso 1 Hacer
				pacman(i,j) <- " ° "
			Fin Para
		Fin Para
		
		PosGuardadaF1<-" ° "
		PosGuardadaF2<-" ° "
		PosGuardadaF3<-" ° "
		PosGuardadaF4<-" ° "
		pacman(1,1) <- " * "
		pacman(1,21) <- " * " 
		pacman(18,1) <- " * "
		pacman(18,21) <- " * "
		Limpiar Pantalla
		
		visual(pacman,pacmanx,pacmany,PosFant,puntaje,vidas,PacmanEnojado,movimiento)
		
		Mientras (Choque=Falso Y Salir=Falso) Hacer
			Si Tiempo_PacManEnojado<=0 Entonces
				PacmanEnojado<-Falso
			Fin Si			
			InicioF2<-Falso
			MovValidoPacman<-Falso
			SalirPausa<-Falso
			Escribir sin saltar "Ingrese un caracter. (P Para Pausa):"
			leer movimiento
			movimiento<- Mayusculas(movimiento)
			Si movimiento<>"P" Entonces
				
				pacman[pacmanx,pacmany]<-"   "
				pacman[PosFant[0,0],PosFant[0,1]]<-PosGuardadaF1
				pacman[PosFant[1,0],PosFant[1,1]]<-PosGuardadaF2
				pacman[PosFant[2,0],PosFant[2,1]]<-PosGuardadaF3
				pacman[PosFant[3,0],PosFant[3,1]]<-PosGuardadaF4
				Limpiar Pantalla
				
				
				MovValidoPacman<-SegunVecMov(VectMovPacmanPosibles,pacmanx,pacmany, movimiento)
				Si pacman(pacmanx,pacmany)=" * " Entonces
					PacmanEnojado<-Verdadero
					Tiempo_PacManEnojado<-15
				FinSi
				
				si MovValidoPacman Y pacman[pacmanx,pacmany]<> "   " Entonces
					puntaje<-puntaje+1
					PuntosTablero<-PuntosTablero+1
				FinSi
				
				//Movimiento fantasma 1
				Si PacmanEnojado<>Verdadero Entonces
					SiguenteMov<-BFS(VectMovPacmanPosibles, PosFant[0,0],PosFant[0,1],pacmanx,pacmany,Dist)
					MovValidoPacman<-SegunVecMov(VectMovPacmanPosibles,PosFant[0,0],PosFant[0,1], SiguenteMov)
					PosGuardadaF1<-pacman[PosFant[0,0],PosFant[0,1]]
				SiNo
					MaxDist<-0
					Posicion<-0
					Para i<-0 Hasta 3 Con Paso 1 Hacer
						DistF1[i]<-0
						CoordsGuardF(0)<-PosFant[0,0]
						CoordsGuardF(1)<-PosFant[0,1]
						Segun i Hacer
							0:
								SiguenteMov<-"W"
							1:
								SiguenteMov<-"A"
							2:
								SiguenteMov<-"S"
							3:
								SiguenteMov<-"D"
						Fin Segun
						MovValidoPacman<-SegunVecMov(VectMovPacmanPosibles,CoordsGuardF[0],CoordsGuardF[1],SiguenteMov)
						Si MovValidoPacman Entonces
							SiguenteMov<-BFS(VectMovPacmanPosibles, pacmanx,pacmany, CoordsGuardF[0],CoordsGuardF[1],DistF1[i]) 
							Si DistF1[i]>MaxDist Entonces
								MaxDist<- DistF1[i]
								Posicion<-i
							Fin Si
						FinSi
					Fin Para
					
					Segun Posicion Hacer
						0:
							SiguenteMov<-"W"
						1:
							SiguenteMov<-"A"
						2:
							SiguenteMov<-"S"
						3:
							SiguenteMov<-"D"
					Fin Segun
					
					MovValidoPacman<-SegunVecMov(VectMovPacmanPosibles,PosFant[0,0],PosFant[0,1], SiguenteMov)
					PosGuardadaF1<-pacman[PosFant[0,0],PosFant[0,1]]
				FinSi
				
				
				//Movimiento fantasma 2
				
				Si (PosFant[1,0]-pacmanx<6 Y PosFant[1,0]-pacmanx>-6) Y (PosFant[1,1]-pacmany<6 Y PosFant[1,1]-pacmany>-6) Entonces
					InicioF2<-Verdadero
				FinSi
				si InicioF2=Verdadero Entonces
					Si PacmanEnojado<>Verdadero Entonces
						SiguenteMov<-BFS(VectMovPacmanPosibles, PosFant[1,0],PosFant[1,1],pacmanx,pacmany,Dist)
						MovValidoPacman<-SegunVecMov(VectMovPacmanPosibles,PosFant[1,0],PosFant[1,1], SiguenteMov)
						PosGuardadaF2<-pacman[PosFant[1,0],PosFant[1,1]]
					SiNo
						MaxDist<-0
						Posicion<-0
						Para i<-0 Hasta 3 Con Paso 1 Hacer
							DistF1[i]<-0
							CoordsGuardF(0)<-PosFant[1,0]
							CoordsGuardF(1)<-PosFant[1,1]
							Segun i Hacer
								0:
									SiguenteMov<-"W"
								1:
									SiguenteMov<-"A"
								2:
									SiguenteMov<-"S"
								3:
									SiguenteMov<-"D"
							Fin Segun
							MovValidoPacman<-SegunVecMov(VectMovPacmanPosibles,CoordsGuardF[0],CoordsGuardF[1],SiguenteMov)
							Si MovValidoPacman Entonces
								SiguenteMov<-BFS(VectMovPacmanPosibles, pacmanx,pacmany, CoordsGuardF[0],CoordsGuardF[1],DistF1[i]) 
								Si DistF1[i]>MaxDist Entonces
									MaxDist<- DistF1[i]
									Posicion<-i
								Fin Si
							FinSi
						Fin Para
						
						Segun Posicion Hacer
							0:
								SiguenteMov<-"W"
							1:
								SiguenteMov<-"A"
							2:
								SiguenteMov<-"S"
							3:
								SiguenteMov<-"D"
						Fin Segun
						
						MovValidoPacman<-SegunVecMov(VectMovPacmanPosibles,PosFant[1,0],PosFant[1,1], SiguenteMov)
						PosGuardadaF2<-pacman[PosFant[1,0],PosFant[1,1]]
					FinSi
				FinSi
				
//					//Movimiento fantasma 3
				SecuenciaF3<-"AASSSSAASSAAAAASSSSSSSDDSDDDWDDWWWWWDDWWWWWWWW"
				MovF3<-Subcadena(SecuenciaF3,ContSecF3,ContSecF3)
				MovValidoPacman<-SegunVecMov(VectMovPacmanPosibles,PosFant[2,0],PosFant[2,1], MovF3)
				ContSecF3<-ContSecF3+1
				Si ContSecF3=Longitud(SecuenciaF3) Entonces
					ContSecF3<-0
				FinSi
				PosGuardadaF3<-pacman[PosFant[2,0],PosFant[2,1]]
				//Movimiento fantasma 4
				Repetir
					Segun Aleatorio(1,4) Hacer
						1:
							MovF4<-"A"
						2:
							MovF4<-"S"
						3:
							MovF4<-"D"
						4:
							MovF4<-"W"
					Fin Segun
					MovValidoPacman<-SegunVecMov(VectMovPacmanPosibles,PosFant[3,0],PosFant[3,1], MovF4)
				Hasta Que MovValidoPacman=Verdadero
				PosGuardadaF4<-pacman[PosFant[3,0],PosFant[3,1]]
//					
				//Colición entre fantasma y pacman
				Si PacmanEnojado<>Verdadero Entonces
					Si pacmanx=PosFant[0,0] Y pacmany=PosFant[0,1] Entonces
						Choque<-Verdadero
					FinSi
					
					Si pacmanx=PosFant[1,0] Y pacmany=PosFant[1,1] Entonces
						Choque<-Verdadero
					FinSi
					
					Si pacmanx=PosFant[2,0] Y pacmany=PosFant[2,1] Entonces
						Choque<-Verdadero
					FinSi
					
					Si pacmanx=PosFant[3,0] Y pacmany=PosFant[3,1] Entonces
						Choque<-Verdadero
					FinSi
				Sino	
					Si pacmanx=PosFant[0,0] Y pacmany=PosFant[0,1] Entonces
						PosFant[0,0]<-10
						PosFant[0,1]<-13
						puntaje<-puntaje+10
					FinSi
					
					Si pacmanx=PosFant[1,0] Y pacmany=PosFant[1,1] Entonces
						PosFant[1,0] <-10
						PosFant[1,1]<-13
						puntaje<-puntaje+10
					FinSi
					
					Si pacmanx=PosFant[2,0] Y pacmany=PosFant[2,1] Entonces
						PosFant[2,0] <-10
						PosFant[2,1]<-13
						puntaje<-puntaje+10
						ContSecF3<-10
					FinSi
					
					Si pacmanx=PosFant[3,0] Y pacmany=PosFant[3,1] Entonces
						PosFant[3,0] <-10
						PosFant[3,1]<-13
						puntaje<-puntaje+10
					FinSi
				FinSi
				visual(pacman,pacmanx,pacmany,PosFant,puntaje,Vidas,PacmanEnojado,movimiento)
				
				Si Pacmanenojado=Verdadero Entonces
					Tiempo_PacManEnojado<-Tiempo_PacManEnojado-1
				FinSi
				
				Si PuntosTablero=220 Entonces
					vidas<-vidas+1
					Choque<-Verdadero
				FinSi
				
			SiNo
				Repetir
					pausa<-pausaPacman()
					Segun pausa Hacer
						"1":
							SalirPausa<-Verdadero
							visual(pacman,pacmanx,pacmany,PosFant,puntaje,Vidas,PacmanEnojado,movimiento)
						"2":
							Instrucciones()
						"3":
							Salir<-Verdadero
					FinSegun
				Hasta Que SalirPausa=Verdadero o Salir=Verdadero
			FinSi
		Fin Mientras
		
		Si Salir=Falso Entonces
			vidas<-vidas-1
			CartelPuntaje(puntaje,Vidas)
		FinSi
	Fin Mientras
	
	
Fin Funcion


Funcion Instrucciones
	Limpiar Pantalla
	Escribir "*******************************************************************************"
	Escribir "*                                                                             *"
	Escribir "*                                                                             *"
	Escribir "*                                                                             *"
	Escribir "*                                                                             *"
	Escribir "*          ==========================================================         *"
	Escribir "*          ||______________________________________________________||         *"
	Escribir "*          ||------------------------------------------------------||         *"
	Escribir "*          || /ü\(*<_____(°<___(°-__(*-/ü\___(°<___(°-___/ü\___/ü\_||         *"
	Escribir "*          ||  _____   ___   ________    ____  ____  ___  ___   __ ||         *"
	Escribir "*          || ||   || || ||  ||    || __ ||\\  //|| || || ||\\  || ||         *"
	Escribir "*          || ||___|| ||-||  ||       __ || \\// || ||-|| || \\ || ||         *"
	Escribir "*          || ||      || ||  ||____||    ||  \/  || || || ||  \\|| ||         *"
	Escribir "*          ||------------------------------------------------------||         *"
	Escribir "*          || /ü\(*<_____(°<___(°-__(*-/ü\___(°<___(°-___/ü\___/ü\_||         *"
	Escribir "*          ||--------------I N S T R U C C I O N E S---------------||         *"
	Escribir "*          || MOVIMIENTO                                           ||         *"
	Escribir "*          ||    |W|              W: Movimiento hacia arriba       ||         *"
	Escribir "*          || |A||S||D|           S: Movimiento hacia abajo        ||         *"
	Escribir "*          ||                     A: Movimiento hacia la izquierda ||         *"
	Escribir "*          || |P|                 D: Movimiento hacia la derecha   ||         *"
	Escribir "*          ||                     P: PAUSA                         ||         *"
	Escribir "*          ||                                                      ||         *"
	Escribir "*          ||    PERSONAJE                      FANTASMAS          ||         *"
	Escribir "*          ||    (·<                       /ü\  /ü\  /ü\  /ü\      ||         *"
	Escribir "*          ||                                                      ||         *"
	Escribir "*          ||         INGRESE UNA TECLA PARA CONTINUAR...          ||         *"
	Escribir "*          ==========================================================         *"
	Escribir "*                                                                             *"
	Escribir "*                                                                             *"
	Escribir "*                                                                             *"
	Escribir "*******************************************************************************"
	Esperar Tecla
	
	Limpiar Pantalla
Fin Funcion

Funcion AnimacionPacman
	definir i Como Entero
	
	Para i<-0 Hasta 10 Con Paso 1 Hacer
		Limpiar Pantalla
		Si i mod 2 = 0 Entonces
			Escribir "*******************************************************************************"
			Escribir "*                                                                             *"
			Escribir "*                                                                             *"
			Escribir "*                                                                             *"
			Escribir "*                                                                             *"
			Escribir "*          ==========================================================         *"
			Escribir "*          || * ||==|| ° ||  || °  ° ||  || °  ° ||  || ° ||==|| * ||         *"
			Escribir "*          || °  °  °  ° ||==|| °  ° ||  || °  ° ||==|| °  °  °  ° ||         *"
			Escribir "*          || °  °  °  °  °  °  °  ° ||==|| °  °  °  °  °  °  °  ° ||         *"
			Escribir "*          || ° ====== ° |=| °  °  °  °  °  °  °  ° |=| ° ====== ° ||         *"
			Escribir "*          || °  °  °  ° ||| ° ||||==========|||| ° ||| °  °  °  ° ||         *"
			Escribir "*          ||=======|| ° ||| ° ||||==||  ||==|||| ° ||| ° ||=======||         *"
			Escribir "*          ||       || ° ||| °  °  ° ||  || °  °  ° ||| ° ||       ||         *"
			Escribir "*          ||       || ° |=======| ° ====== ° |=======| ° ||       ||         *"
			Escribir "*          ||=======|| ° ||| °  °  °  °  °  °  °  ° ||| ° ||=======||         *"
			Escribir "*          || °  °  °  ° |=| ° |======    ======| ° |=| °  °  °  ° ||         *"
			Escribir "*          || °  °  °  °  °  ° |                | °  °  °  °  °  ° ||         *"
			Escribir "*          || ° ||==|| ° ||| ° |================| ° ||| ° ||==|| ° ||         *"
			Escribir "*          || ° ||  || ° ||| °  °  °  °  °  °  °  ° ||| ° ||  || ° ||         *"
			Escribir "*          || ° ||==|| ° ||| ° ||==============|| ° ||| ° ||==|| ° ||         *"
			Escribir "*          || °  °  °  °  °  ° ||====||  ||====|| °  °  °  °  °  ° ||         *"
			Escribir "*          || ° ||=====|| °  °  °  ° |||||| °  °  °  ° ||=====|| ° ||         *"
			Escribir "*          || °  °  °  || °  °  °  °  °  °  °  °  °  ° ||  °  °  ° ||         *"
			Escribir "*          ||==| °  °  == °  °  ° ============ °  °  ° ==  °  ° |==||         *"
			Escribir "*          || °  °  °  °  °  °  °  ° |====| °  °  °  °  °  °  °  ° ||         *"
			Escribir "*          || ° ============ °  °  ° |====| °  °  ° ============ ° ||         *"
			Escribir "*          || *  °  °  °  °  °  °  °  °  °  °  °  °  °  °  °  °  * ||         *"
			Escribir "*          ==========================================================         *"
			Escribir "*                                                                             *"
			Escribir "*                                                                             *"
			Escribir "*                                                                             *"
			Escribir "*******************************************************************************"
		SiNo
			Escribir "*******************************************************************************"
			Escribir "*                                                                             *"
			Escribir "*                                                                             *"
			Escribir "*                                                                             *"
			Escribir "*                                                                             *"
			Escribir "*          ==========================================================         *"
			Escribir "*          ||   ||==||   ||  ||      ||  ||      ||  ||   ||==||   ||         *"
			Escribir "*          ||            ||==||      ||  ||      ||==||            ||         *"
			Escribir "*          ||                        ||==||                        ||         *"
			Escribir "*          ||   ======   |=|                        |=|   ======   ||         *"
			Escribir "*          ||            |||   ||||==========||||   |||            ||         *"
			Escribir "*          ||=======||   |||   ||||==||  ||==||||   |||   ||=======||         *"
			Escribir "*          ||       ||   |||         ||  ||         |||   ||       ||         *"
			Escribir "*          ||       ||   |=======|   ======   |=======|   ||       ||         *"
			Escribir "*          ||=======||   |||                        |||   ||=======||         *"
			Escribir "*          ||            |=|   |======    ======|   |=|            ||         *"
			Escribir "*          ||                  |                |                  ||         *"
			Escribir "*          ||   ||==||   |||   |================|   |||   ||==||   ||         *"
			Escribir "*          ||   ||  ||   |||                        |||   ||  ||   ||         *"
			Escribir "*          ||   ||==||   |||   ||==============||   |||   ||==||   ||         *"
			Escribir "*          ||                  ||====||  ||====||                  ||         *"
			Escribir "*          ||   ||=====||            ||||||            ||=====||   ||         *"
			Escribir "*          ||          ||                              ||          ||         *"
			Escribir "*          ||==|       ==         ============         ==       |==||         *"
			Escribir "*          ||                        |====|                        ||         *"
			Escribir "*          ||   ============         |====|         ============   ||         *"
			Escribir "*          ||                                                      ||         *"
			Escribir "*          ==========================================================         *"
			Escribir "*                                                                             *"
			Escribir "*                                                                             *"
			Escribir "*                                                                             *"
			Escribir "*******************************************************************************"
		FinSi
		Esperar 100 Milisegundos
	Fin Para
	
	
FinFuncion

Funcion OpcionPacman <- MenuPacman
	definir OpcionPacman Como Caracter
	Limpiar Pantalla
	Escribir "*******************************************************************************"
	Escribir "*                                                                             *"
	Escribir "*                                                                             *"
	Escribir "*                                                                             *"
	Escribir "*                                                                             *"
	Escribir "*          ==========================================================         *"
	Escribir "*          ||______________________________________________________||         *"
	Escribir "*          ||------------------------------------------------------||         *"
	Escribir "*          || /ü\(*<_____(°<___(°-__(*-/ü\___(°<___(°-___/ü\___/ü\_||         *"
	Escribir "*          ||  _____   ___   ________    ____  ____  ___  ___   __ ||         *"
	Escribir "*          || ||   || || ||  ||    || __ ||\\  //|| || || ||\\  || ||         *"
	Escribir "*          || ||___|| ||-||  ||       __ || \\// || ||-|| || \\ || ||         *"
	Escribir "*          || ||      || ||  ||____||    ||  \/  || || || ||  \\|| ||         *"
	Escribir "*          ||------------------------------------------------------||         *"
	Escribir "*          || /ü\(*<_____(°<___(°-__(*-/ü\___(°<___(°-___/ü\___/ü\_||         *"
	Escribir "*          ||------------------------------------------------------||         *"
	Escribir "*          ||======================================================||         *"
	Escribir "*          ||                                                      ||         *"
	Escribir "*          ||                  SELECCIONE UNA OPCIÓN:              ||         *"
	Escribir "*          ||                  1- JUGAR                            ||         *"
	Escribir "*          ||                  2- INSTRUCCIONES                    ||         *"
	Escribir "*          ||                  3- SALIR                            ||         *"
	Escribir "*          ||                                                      ||         *"
	Escribir "*          ||                                                      ||         *"
	Escribir "*          ||                                                      ||         *"
	Escribir "*          ||                                                      ||         *"
	Escribir "*          ||                                                      ||         *"
	Escribir "*          ==========================================================         *"
	Escribir "*                                                                             *"
	Escribir "*                                                                             *"
	Escribir "*                                                                             *"
	Escribir "*******************************************************************************"
	Leer OpcionPacman
Fin Funcion

Funcion Pausa <- PausaPacman
	definir Pausa Como Caracter
	Limpiar Pantalla
	Escribir "*******************************************************************************"
	Escribir "*                                                                             *"
	Escribir "*                                                                             *"
	Escribir "*                                                                             *"
	Escribir "*                                                                             *"
	Escribir "*          ==========================================================         *"
	Escribir "*          ||______________________________________________________||         *"
	Escribir "*          ||------------------------------------------------------||         *"
	Escribir "*          || /ü\(*<_____(°<___(°-__(*-/ü\___(°<___(°-___/ü\___/ü\_||         *"
	Escribir "*          ||  _____   ___   ________    ____  ____  ___  ___   __ ||         *"
	Escribir "*          || ||   || || ||  ||    || __ ||\\  //|| || || ||\\  || ||         *"
	Escribir "*          || ||___|| ||-||  ||       __ || \\// || ||-|| || \\ || ||         *"
	Escribir "*          || ||      || ||  ||____||    ||  \/  || || || ||  \\|| ||         *"
	Escribir "*          ||------------------------------------------------------||         *"
	Escribir "*          || /ü\(*<_____(°<___(°-__(*-/ü\___(°<___(°-___/ü\___/ü\_||         *"
	Escribir "*          ||------------------------PAUSA-------------------------||         *"
	Escribir "*          ||======================================================||         *"
	Escribir "*          ||                                                      ||         *"
	Escribir "*          ||                  SELECCIONE UNA OPCIÓN:              ||         *"
	Escribir "*          ||                  1- CONTINUAR                        ||         *"
	Escribir "*          ||                  2- INSTRUCCIONES                    ||         *"
	Escribir "*          ||                  3- SALIR                            ||         *"
	Escribir "*          ||                                                      ||         *"
	Escribir "*          ||                                                      ||         *"
	Escribir "*          ||                                                      ||         *"
	Escribir "*          ||                                                      ||         *"
	Escribir "*          ||                                                      ||         *"
	Escribir "*          ==========================================================         *"
	Escribir "*                                                                             *"
	Escribir "*                                                                             *"
	Escribir "*                                                                             *"
	Escribir "*******************************************************************************"
	Leer Pausa
Fin Funcion

Funcion CartelPuntaje(puntaje,Vidas)
	
	Definir Puntostexto Como Caracter
	Puntostexto<- ConvertirATexto(puntaje)
	Mientras Longitud((Puntostexto))<4 Hacer
		Puntostexto<-"0"+Puntostexto
	Fin Mientras
	Limpiar Pantalla
	Escribir "*******************************************************************************"
	Escribir "*                                                                             *"
	Escribir "*                                                                             *"
	Escribir "*                                                                             *"
	Escribir "*                                                                             *"
	Escribir "*          ==========================================================         *"
	Escribir "*          ||______________________________________________________||         *"
	Escribir "*          ||------------------------------------------------------||         *"
	Escribir "*          || /ü\(*<____(°<___(°-___(*-/ü\___(°<___(°-___/ü\___/ü\_||         *"
	Escribir "*          ||  _____   ___   ________    ____  ____  ___  ___   __ ||         *"
	Escribir "*          || ||   || || ||  ||    || __ ||\\  //|| || || ||\\  || ||         *"
	Escribir "*          || ||___|| ||-||  ||       __ || \\// || ||-|| || \\ || ||         *"
	Escribir "*          || ||      || ||  ||____||    ||  \/  || || || ||  \\|| ||         *"
	Escribir "*          ||------------------------------------------------------||         *"
	Escribir "*          || /ü\>*)____>°)___-°)___-*)/ü\___-°)____>°)___/ü\__/ü\_||         *"
	Escribir "*          ||------------------------------------------------------||         *"
	Escribir "*          ||                                                      ||         *"
	Escribir "*          ||                                                      ||         *"
	Escribir "*          ||                   PUNTAJE: ",Puntostexto,"                      ||         *"
	Escribir "*          ||                                                      ||         *"
	Escribir "*          ||                   VIDAS: ",Vidas,"                           ||         *"
	Escribir "*          ||                                                      ||         *"
	Escribir "*          ||                                                      ||         *"
	Escribir "*          ||                                                      ||         *"
	Escribir "*          ||         INGRESE UNA TECLA PARA CONTINUAR...          ||         *"
	Escribir "*          ||                                                      ||         *"
	Escribir "*          ||                                                      ||         *"
	Escribir "*          ==========================================================         *"
	Escribir "*                                                                             *"
	Escribir "*                                                                             *"
	Escribir "*                                                                             *"
	Escribir "*******************************************************************************"
	Esperar Tecla
	
FinFuncion

Funcion visual(pacman,pacmanx,pacmany,PosFant,puntaje,vidas,PacmanEnojado,movimiento)
	Definir Puntostexto,AnimPac Como Caracter
	Puntostexto<- ConvertirATexto(puntaje)
	Mientras Longitud((Puntostexto))<4 Hacer
		Puntostexto<-"0"+Puntostexto
	Fin Mientras
	Si PacmanEnojado=Verdadero Entonces
		
		si  movimiento="A" Entonces
			AnimPac<-">*)"
		SiNo
			AnimPac<-"(*<"
		FinSi
		
		pacman[PosFant[0,0],PosFant[0,1]]<-"\ü/"
		pacman[PosFant[1,0],PosFant[1,1]]<-"\ü/"
		pacman[PosFant[2,0],PosFant[2,1]]<-"\ü/"
		pacman[PosFant[3,0],PosFant[3,1]]<-"\ü/"
	Sino
		si  movimiento="A" Entonces
			AnimPac<-">·)"
		SiNo
			AnimPac<-"(·<"
		FinSi
		
		pacman[PosFant[0,0],PosFant[0,1]]<-"/ü\"
		pacman[PosFant[1,0],PosFant[1,1]]<-"/ü\"
		pacman[PosFant[2,0],PosFant[2,1]]<-"/ü\"
		pacman[PosFant[3,0],PosFant[3,1]]<-"/ü\"
		
	FinSi
	pacman[pacmanx,pacmany]<-AnimPac
	Escribir "*******************************************************************************"
	Escribir "*                                                                             *"
	Escribir "*                                                                             *"
	Escribir "*          -------------     P U N T A J E: ",Puntostexto,"     ----------------         *"
	Escribir "*          -------------        V I D A S : ",vidas,"        ----------------         *"
	Escribir "*          ==========================================================         *"
	Escribir "*          ||",pacman[1,21],"||==||",pacman[4,21],"||  ||",pacman[7,21],"",pacman[8,21],"||  ||",pacman[11,21],"",pacman[12,21],"||  ||",pacman[15,21],"||==||",pacman[18,21],"||         *"  
	Escribir "*          ||",pacman[1,20],"",pacman[2,20],"",pacman[3,20],"",pacman[4,20],"||==||",pacman[7,20],"",pacman[8,20],"||  ||",pacman[11,20],"",pacman[12,20],"||==||",pacman[15,20],"",pacman[16,20],"",pacman[17,20],"",pacman[18,20],"||         *"
	Escribir "*          ||",pacman[1,19],"",pacman[2,19],"",pacman[3,19],"",pacman[4,19],"",pacman[5,19],"",pacman[6,19],"",pacman[7,19],"",pacman[8,19],"||==||",pacman[11,19],"",pacman[12,19],"",pacman[13,19],"",pacman[14,19],"",pacman[15,19],"",pacman[16,19],"",pacman[17,19],"",pacman[18,19],"||         *"
	Escribir "*          ||",pacman[1,18],"======",pacman[4,18],"|=|",pacman[6,18],"",pacman[7,18],"",pacman[8,18],"",pacman[9,18],"",pacman[10,18],"",pacman[11,18],"",pacman[12,18],"",pacman[13,18],"|=|",pacman[15,18],"======",pacman[18,18],"||         *"
	Escribir "*          ||",pacman[1,17],"",pacman[2,17],"",pacman[3,17],"",pacman[4,17],"|||",pacman[6,17],"||||==========||||",pacman[13,17],"|||",pacman[15,17],"",pacman[16,17],"",pacman[17,17],"",pacman[18,17],"||         *"
	Escribir "*          ||=======||",pacman[4,16],"|||",pacman[6,16],"||||==||  ||==||||",pacman[13,16],"|||",pacman[15,16],"||=======||         *"
	Escribir "*          ||       ||",pacman[4,15],"|||",pacman[6,15],"",pacman[7,15],"",pacman[8,15],"||  ||",pacman[11,15],"",pacman[12,15],"",pacman[13,15],"|||",pacman[15,15],"||       ||         *"
	Escribir "*          ||       ||",pacman[4,14],"|=======|",pacman[8,14],"======",pacman[11,14],"|=======|",pacman[15,14],"||       ||         *"
	Escribir "*          ||=======||",pacman[4,13],"|||",pacman[6,13],"",pacman[7,13],"",pacman[8,13],"",pacman[9,13],"",pacman[10,13],"",pacman[11,13],"",pacman[12,13],"",pacman[13,13],"|||",pacman[15,13],"||=======||         *"
	Escribir "*          ||",pacman[1,12],"",pacman[2,12],"",pacman[3,12],"",pacman[4,12],"|=|",pacman[6,12],"|======    ======|",pacman[13,12],"|=|",pacman[15,12],"",pacman[16,12],"",pacman[17,12],"",pacman[18,12],"||         *"
	Escribir "*          ||",pacman[1,11],"",pacman[2,11],"",pacman[3,11],"",pacman[4,11],"",pacman[5,11],"",pacman[6,11],"|                |",pacman[13,11],"",pacman[14,11],"",pacman[15,11],"",pacman[16,11],"",pacman[17,11],"",pacman[18,11],"||         *"
	Escribir "*          ||",pacman[1,10],"||==||",pacman[4,10],"|||",pacman[6,10],"|================|",pacman[13,10],"|||",pacman[15,10],"||==||",pacman[18,10],"||         *"
	Escribir "*          ||",pacman[1,9],"||  ||",pacman[4,9],"|||",pacman[6,9],"",pacman[7,9],"",pacman[8,9],"",pacman[9,9],"",pacman[10,9],"",pacman[11,9],"",pacman[12,9],"",pacman[13,9],"|||",pacman[15,9],"||  ||",pacman[18,9],"||         *"
	Escribir "*          ||",pacman[1,8],"||==||",pacman[4,8],"|||",pacman[6,8],"||==============||",pacman[13,8],"|||",pacman[15,8],"||==||",pacman[18,8],"||         *"
	Escribir "*          ||",pacman[1,7],"",pacman[2,7],"",pacman[3,7],"",pacman[4,7],"",pacman[5,7],"",pacman[6,7],"||====||  ||====||",pacman[13,7],"",pacman[14,7],"",pacman[15,7],"",pacman[16,7],"",pacman[17,7],"",pacman[18,7],"||         *"
	Escribir "*          ||",pacman[1,6],"||=====||",pacman[5,6],"",pacman[6,6],"",pacman[7,6],"",pacman[8,6],"||||||",pacman[11,6],"",pacman[12,6],"",pacman[13,6],"",pacman[14,6],"||=====||",pacman[18,6],"||         *"
	Escribir "*          ||",pacman[1,5],"",pacman[2,5],"",pacman[3,5]," ||",pacman[5,5],"",pacman[6,5],"",pacman[7,5],"",pacman[8,5],"",pacman[9,5],"",pacman[10,5],"",pacman[11,5],"",pacman[12,5],"",pacman[13,5],"",pacman[14,5],"|| ",pacman[16,5],"",pacman[17,5],"",pacman[18,5],"||         *"
	Escribir "*          ||==|",pacman[2,4],"",pacman[3,4]," ==",pacman[5,4],"",pacman[6,4],"",pacman[7,4],"============",pacman[12,4],"",pacman[13,4],"",pacman[14,4],"== ",pacman[16,4],"",pacman[17,4],"|==||         *"
	Escribir "*          ||",pacman[1,3],"",pacman[2,3],"",pacman[3,3],"",pacman[4,3],"",pacman[5,3],"",pacman[6,3],"",pacman[7,3],"",pacman[8,3],"|====|",pacman[11,3],"",pacman[12,3],"",pacman[13,3],"",pacman[14,3],"",pacman[15,3],"",pacman[16,3],"",pacman[17,3],"",pacman[18,3],"||         *"
	Escribir "*          ||",pacman[1,2],"============",pacman[6,2],"",pacman[7,2],"",pacman[8,2],"|====|",pacman[11,2],"",pacman[12,2],"",pacman[13,2],"============",pacman[18,2],"||         *"
	Escribir "*          ||",pacman[1,1],"",pacman[2,1],"",pacman[3,1],"",pacman[4,1],"",pacman[5,1],"",pacman[6,1],"",pacman[7,1],"",pacman[8,1],"",pacman[9,1],"",pacman[10,1],"",pacman[11,1],"",pacman[12,1],"",pacman[13,1],"",pacman[14,1],"",pacman[15,1],"",pacman[16,1],"",pacman[17,1],"",pacman[18,1],"||         *"
	Escribir "*          ==========================================================         *"
	Escribir "*                                                                             *"
	Escribir "*                                                                             *"
	Escribir "*                                                                             *"
	Escribir "*******************************************************************************"
Fin Funcion


Funcion MovimientosDisponiblesPacman(MovimientosPacman)
	Definir a,b,c,d,e,f,g,h,i,j,k,l,m,n,v,p,q,r,s,t,u,Z Como Entero
	Dimension a(19)
	Dimension b(19)
	Dimension c(19)
	Dimension d(19)
	Dimension e(19)
	Dimension f(19)
	Dimension g(19)
	Dimension h(19)
	Dimension i(19)
	Dimension j(19)
	Dimension k(19)
	Dimension l(19)
	Dimension m(19)
	Dimension n(19)
	Dimension v(19)
	Dimension p(19)
	Dimension q(19)
	Dimension r(19)
	Dimension s(19)
	Dimension t(19)
	Dimension u(19)
	
	a(1)<-2;a(2)<-16;a(3)<-16;a(4)<-2;a(5)<-16;a(6)<-16;a(7)<-10;a(8)<-9;a(9)<-16;a(10)<-16;a(11)<-10;a(12)<-9;a(13)<-16;a(14)<-16;a(15)<-2;a(16)<-16;a(17)<-16;a(18)<-2;
	b(1)<-14;b(2)<-11;b(3)<-11;b(4)<-13;b(5)<-16;b(6)<-16;b(7)<-14;b(8)<-13;b(9)<-16;b(10)<-16;b(11)<-14;b(12)<-13;b(13)<-16;b(14)<-16;b(15)<-14;b(16)<-11;b(17)<-11;b(18)<-13;
	c(1)<-14;c(2)<-12;c(3)<-12;c(4)<-15;c(5)<-6;c(6)<-11;c(7)<-15;c(8)<-13;c(9)<-16;c(10)<-16;c(11)<-14;c(12)<-15;c(13)<-11;c(14)<-6;c(15)<-15;c(16)<-12;c(17)<-12;c(18)<-13;
	d(1)<-5;d(2)<-16;d(3)<-16;d(4)<-5;d(5)<-16;d(6)<-14;d(7)<-12;d(8)<-12;d(9)<-6;d(10)<-6;d(11)<-12;d(12)<-12;d(13)<-13;d(14)<-16;d(15)<-5;d(16)<-16;d(17)<-16;d(18)<-5;
	e(1)<-8;e(2)<-6;e(3)<-6;e(4)<-13;e(5)<-16;e(6)<-5;e(7)<-16;e(8)<-16;e(9)<-16;e(10)<-16;e(11)<-16;e(12)<-16;e(13)<-5;e(14)<-16;e(15)<-14;e(16)<-6;e(17)<-6;e(18)<-7;
	f(1)<-16;f(2)<-16;f(3)<-16;f(4)<-5;f(5)<-16;f(6)<-5;f(7)<-16;f(8)<-16;f(9)<-16;f(10)<-16;f(11)<-16;f(12)<-16;f(13)<-5;f(14)<-16;f(15)<-5;f(16)<-16;f(17)<-16;f(18)<-16;
	g(1)<-16;g(2)<-16;g(3)<-16;g(4)<-5;g(5)<-16;g(6)<-8;g(7)<-6;g(8)<-9;g(9)<-16;g(10)<-16;g(11)<-10;g(12)<-6;g(13)<-7;g(14)<-16;g(15)<-5;g(16)<-16;g(17)<-16;g(18)<-16;
	h(1)<-16;h(2)<-16;h(3)<-16;h(4)<-5;h(5)<-16;h(6)<-16;h(7)<-16;h(8)<-5;h(9)<-16;h(10)<-16;h(11)<-5;h(12)<-16;h(13)<-16;h(14)<-16;h(15)<-5;h(16)<-16;h(17)<-16;h(18)<-16;
	i(1)<-16;i(2)<-16;i(3)<-16;i(4)<-5;i(5)<-16;i(6)<-10;i(7)<-6;i(8)<-12;i(9)<-6;i(10)<-6;i(11)<-12;i(12)<-6;i(13)<-9;i(14)<-16;i(15)<-5;i(16)<-16;i(17)<-16;i(18)<-16;
	j(1)<-10;j(2)<-11;j(3)<-11;j(4)<-13;j(5)<-16;j(6)<-5;j(7)<-16;j(8)<-16;j(9)<-16;j(10)<-16;j(11)<-16;j(12)<-16;j(13)<-5;j(14)<-16;j(15)<-14;j(16)<-11;j(17)<-11;j(18)<-9;
	k(1)<-14;k(2)<-12;k(3)<-12;k(4)<-15;k(5)<-6;k(6)<-13;k(7)<-16;k(8)<-16;k(9)<-16;k(10)<-16;k(11)<-16;k(12)<-16;k(13)<-14;k(14)<-6;k(15)<-15;k(16)<-12;k(17)<-12;k(18)<-13;
	l(1)<-5;l(2)<-16;l(3)<-16;l(4)<-5;l(5)<-16;l(6)<-5;l(7)<-16;l(8)<-16;l(9)<-16;l(10)<-16;l(11)<-16;l(12)<-16;l(13)<-5;l(14)<-16;l(15)<-5;l(16)<-16;l(17)<-16;l(18)<-5;
	m(1)<-5;m(2)<-16;m(3)<-16;m(4)<-5;m(5)<-16;m(6)<-14;m(7)<-6;m(8)<-6;m(9)<-6;m(10)<-6;m(11)<-6;m(12)<-6;m(13)<-13;m(14)<-16;m(15)<-5;m(16)<-16;m(17)<-16;m(18)<-5;
	n(1)<-5;n(2)<-16;n(3)<-16;n(4)<-5;n(5)<-16;n(6)<-5;n(7)<-16;n(8)<-16;n(9)<-16;n(10)<-16;n(11)<-16;n(12)<-16;n(13)<-5;n(14)<-16;n(15)<-5;n(16)<-16;n(17)<-16;n(18)<-5;
	v(1)<-14;v(2)<-6;v(3)<-6;v(4)<-12;v(5)<-11;v(6)<-13;v(7)<-16;v(8)<-16;v(9)<-16;v(10)<-16;v(11)<-16;v(12)<-16;v(13)<-14;v(14)<-11;v(15)<-12;v(16)<-6;v(17)<-6;v(18)<-13;
	p(1)<-5;p(2)<-16;p(3)<-16;p(4)<-16;p(5)<-14;p(6)<-15;p(7)<-11;p(8)<-9;p(9)<-16;p(10)<-16;p(11)<-10;p(12)<-11;p(13)<-15;p(14)<-13;p(15)<-16;p(16)<-16;p(17)<-16;p(18)<-5;
	q(1)<-8;q(2)<-11;q(3)<-9;q(4)<-16;q(5)<-14;q(6)<-15;q(7)<-15;q(8)<-12;q(9)<-6;q(10)<-6;q(11)<-12;q(12)<-15;q(13)<-15;q(14)<-13;q(15)<-16;q(16)<-10;q(17)<-11;q(18)<-7;
	r(1)<-16;r(2)<-14;r(3)<-13;r(4)<-16;r(5)<-14;r(6)<-15;r(7)<-13;r(8)<-16;r(9)<-16;r(10)<-16;r(11)<-16;r(12)<-14;r(13)<-15;r(14)<-13;r(15)<-16;r(16)<-14;r(17)<-13;r(18)<-16;
	s(1)<-10;s(2)<-12;s(3)<-12;s(4)<-6;s(5)<-12;s(6)<-15;s(7)<-15;s(8)<-9;s(9)<-16;s(10)<-16;s(11)<-10;s(12)<-15;s(13)<-15;s(14)<-12;s(15)<-6;s(16)<-12;s(17)<-12;s(18)<-9;
	t(1)<-5;t(2)<-16;t(3)<-16;t(4)<-16;t(5)<-16;t(6)<-14;t(7)<-15;t(8)<-13;t(9)<-16;t(10)<-16;t(11)<-14;t(12)<-15;t(13)<-13;t(14)<-16;t(15)<-16;t(16)<-16;t(17)<-16;t(18)<-5;
	u(1)<-8;u(2)<-6;u(3)<-6;u(4)<-6;u(5)<-6;u(6)<-12;u(7)<-12;u(8)<-12;u(9)<-6;u(10)<-6;u(11)<-12;u(12)<-12;u(13)<-12;u(14)<-6;u(15)<-6;u(16)<-6;u(17)<-6;u(18)<-7;
	
	
	Para Z<-0 Hasta 18 Con Paso 1 Hacer
		MovimientosPacman[Z,21]<-a[Z]
		MovimientosPacman[Z,20]<-b[Z]
		MovimientosPacman[Z,19]<-c[Z]
		MovimientosPacman[Z,18]<-d[Z]
		MovimientosPacman[Z,17]<-e[Z]
		MovimientosPacman[Z,16]<-f[Z]
		MovimientosPacman[Z,15]<-g[Z]
		MovimientosPacman[Z,14]<-h[Z]
		MovimientosPacman[Z,13]<-i[Z]
		MovimientosPacman[Z,12]<-j[Z]
		MovimientosPacman[Z,11]<-k[Z]
		MovimientosPacman[Z,10]<-l[Z]
		MovimientosPacman[Z,9]<-m[Z]
		MovimientosPacman[Z,8]<-n[Z]
		MovimientosPacman[Z,7]<-v[Z]
		MovimientosPacman[Z,6]<-p[Z]
		MovimientosPacman[Z,5]<-q[Z]
		MovimientosPacman[Z,4]<-r[Z]
		MovimientosPacman[Z,3]<-s[Z]
		MovimientosPacman[Z,2]<-t[Z]
		MovimientosPacman[Z,1]<-u[Z]
	Fin Para	
	
Fin Funcion

Funcion MovValido<-SegunVecMov( VectMovPacmanPosibles,pacmanx Por Referencia, pacmany Por Referencia, movimiento Por Referencia )
	Definir MovValido Como Logico
	MovValido<-Verdadero
	Segun VectMovPacmanPosibles[pacmanx,pacmany] Hacer
		1:
			Si movimiento='W' Entonces
				pacmany<- pacmany+1
			SiNo
				MovValido<-Falso
			FinSi
		2:
			Si movimiento='S' Entonces
				pacmany<- pacmany-1
			SiNo
				MovValido<-Falso
			FinSi
		3:
			Si movimiento='A' Entonces
				pacmanx<- pacmanx-1
			SiNo
				MovValido<-Falso
			FinSi
		4:
			Si movimiento='D' Entonces
				pacmanx<- pacmanx+1
			SiNo
				MovValido<-Falso
			FinSi
		5:
			Si movimiento='W'O movimiento='S' Entonces
				Segun movimiento Hacer
					'S':
						pacmany<- pacmany-1
					'W':
						pacmany<- pacmany+1
				Fin Segun
			SiNo
				MovValido<-Falso
			FinSi
			
		6:
			Si movimiento='A'O movimiento='D' Entonces
				Segun movimiento Hacer
					'D':
						pacmanx<- pacmanx+1
					'A':
						pacmanx<- pacmanx-1
				Fin Segun
			SiNo
				MovValido<-Falso
			FinSi
		7:
			Si movimiento='W'O movimiento='A' Entonces
				Segun movimiento Hacer
					'W':
						pacmany<- pacmany+1
					'A':
						pacmanx<- pacmanx-1
				Fin Segun
			SiNo
				MovValido<-Falso
			FinSi
		8:
			Si movimiento='W'O movimiento='D' Entonces
				Segun movimiento Hacer
					'W':
						pacmany<- pacmany+1
					'D':
						pacmanx<- pacmanx+1
				Fin Segun
			SiNo
				MovValido<-Falso
			FinSi
		9:
			Si movimiento='S'O movimiento='A' Entonces
				Segun movimiento Hacer
					'S':
						pacmany<- pacmany-1
					'A':
						pacmanx<- pacmanx-1
				Fin Segun
			SiNo
				MovValido<-Falso
			FinSi
		10:
			Si movimiento='S'O movimiento='D' Entonces
				Segun movimiento Hacer
					'S':
						pacmany<- pacmany-1
					'D':
						pacmanx<- pacmanx+1
				Fin Segun
			SiNo
				MovValido<-Falso
			FinSi
		11:
			Si movimiento='S'O movimiento='A'O movimiento='D' Entonces
				Segun movimiento Hacer
					'S':
						pacmany<- pacmany-1
					'A':
						pacmanx<- pacmanx-1
					'D':
						pacmanx<- pacmanx+1
				Fin Segun
			SiNo
				MovValido<-Falso
			FinSi
		12:
			Si movimiento='W'O movimiento='A'O movimiento='D' Entonces
				Segun movimiento Hacer
					'W':
						pacmany<- pacmany+1
					'A':
						pacmanx<- pacmanx-1
					'D':
						pacmanx<- pacmanx+1
				Fin Segun
			SiNo
				MovValido<-Falso
			FinSi
		13:
			Si movimiento='S'O movimiento='A'O movimiento='W' Entonces
				Segun movimiento Hacer
					'S':
						pacmany<- pacmany-1
					'A':
						pacmanx<- pacmanx-1
					'W':
						pacmany<- pacmany+1
				Fin Segun
			SiNo
				MovValido<-Falso
			FinSi
		14:
			Si movimiento='S'O movimiento='W'O movimiento='D' Entonces
				Segun movimiento Hacer
					'W':
						pacmany<- pacmany+1
					'S':
						pacmany<- pacmany-1
					'D':
						pacmanx<- pacmanx+1
				Fin Segun
			SiNo
				MovValido<-Falso
			FinSi
		15:
			Si movimiento='S'O movimiento='W' O movimiento='D' O movimiento='A' Entonces
				Segun movimiento Hacer
					'W':
						pacmany<- pacmany+1
					'S':
						pacmany<- pacmany-1
					'D':
						pacmanx<- pacmanx+1
					'A':
						pacmanx<- pacmanx-1
				Fin Segun
			SiNo
				MovValido<-Falso
			FinSi
		16:
			Si movimiento='S'O movimiento='W' O movimiento='D' O movimiento='A' Entonces
				Escribir "El movimiento que intenta realizar no es posible, porfavor ingrese un valor correcto"
				ESPERAR Tecla
			FinSi
	Fin Segun
Fin Funcion

Funcion MovInicial<-BFS ( VectMovPacmanPosibles, OrigenX,OrigenY,DestinoX,DestinoY,Distancia Por Referencia)
	Definir Visitados como Logico
	Definir i,j,Ramal,PosActX, PosActY,NuevoX,NuevoY como entero
	Definir  MovValido,EncontroMov Como Logico
	Definir movimiento,ColaRuta,MovInicial Como Caracter
	Definir Cola Como entero	
	Definir InicioCola,FinCola,Contador Como Entero
	Dimension Cola[418,3]
	Dimension ColaRuta[418]
	Dimension Visitados[19,22]
	Contador<-0
	InicioCola<-0
	FinCola<-0
	EncontroMov<-Falso
	Cola[FinCola, 0] <- OrigenX
    Cola[FinCola, 1] <- OrigenY
    Cola[FinCola, 2] <- 0
	ColaRuta[FinCola]<-""
	FinCola <- FinCola + 1
	
	Para i <- 0 Hasta 18 Hacer
        Para j <- 0 Hasta 21 Hacer
            Visitados[i, j] <- Falso
        Fin Para
    Fin Para
	Visitados[OrigenX, OrigenY] <- Verdadero
	
	Mientras InicioCola<FinCola Y EncontroMov = Falso Hacer
		PosActX <- Cola[InicioCola, 0]
        PosActY <- Cola[InicioCola, 1]
		Contador<- Cola[InicioCola, 2]
		
		Si PosActX=DestinoX Y PosActY=DestinoY Entonces
			MovInicial<-Subcadena(ColaRuta[InicioCola], 0, 0)
			EncontroMov<-Verdadero
		Fin Si
		
		Si EncontroMov=Falso Entonces
			Para Ramal<-0 Hasta 3 Con Paso 1 Hacer
				Segun Ramal Hacer
					0:
						movimiento<-"S"
					1:
						movimiento<-"W"
					2:
						movimiento<-"A"
					3:
						movimiento<-"D"
				Fin Segun
				
				NuevoX<-PosActX
				NuevoY<-PosActY
				MovValido<-SegunVecMov(VectMovPacmanPosibles,NuevoX, NuevoY, movimiento)
				
				si	MovValido Y (Visitados[NuevoX,NuevoY]=Falso) Entonces
					
					Cola[FinCola, 0] <- NuevoX
					Cola[FinCola, 1] <- NuevoY
					Cola[FinCola, 2] <- Contador + 1
					ColaRuta[FinCola]<-ColaRuta[InicioCola]+movimiento
					FinCola <- FinCola + 1
					Visitados[NuevoX, NuevoY] <- Verdadero
				FinSi
			Fin Para
		FinSi
		InicioCola <- InicioCola + 1 
	Fin Mientras
	Contador<-Contador-1
	Distancia<-Contador
Fin Funcion


////////////////////////////////////////////////////////////////////// FUNCIONES JUEGO SUDOKU /////////////////////////////////////////////////////////////////////////////////////

Funcion JuegoSudoku
	Definir MatrizResuelta,i,j,VectorCoordenadas,puntos_sud,vidas_sud Como Entero
	Definir MatrizVacia, Op_sud Como Caracter
	Definir pausa,PausaValida como logico
	Dimension MatrizResuelta[9,9]
	Dimension MatrizVacia[9,9]
	Dimension VectorCoordenadas[2]
	puntos_sud<-500
	inicio_sud()
	Repetir
		
		Op_sud<-Menu_sud
		Segun Op_sud Hacer
			"1":
				ResolverMatriz(MatrizResuelta)
				CompletarMatriz(MatrizVacia,MatrizResuelta,puntos_sud)
				JugarSudoku(MatrizVacia,MatrizResuelta,Vectorcoordenadas,puntos_sud,vidas_sud)
				inicio_sud()
			"2":
				Inst_sud()
				Esperar Tecla
		Fin Segun 
	Hasta Que Op_sud="3"
Fin Funcion
Funcion JugarSudoku(MatrizVacia,MatrizResuelta,Vectorcoordenadas,puntos_sud, vidas_sud Por Referencia)
	Definir CoordenadaValida,pausa,salir,NoGanaste Como Logico
	Definir i,j,NumIngresado Como Entero
	Definir OpPausa Como Caracter
	puntos_sud<-500   //inicialización de puntos
	vidas_sud<-3      //inicialización de vidas
	Repetir
		pausa<-Falso
		NoGanaste<-Falso
		MostrarMatriz(MatrizVacia,puntos_sud,vidas_sud)
		CoordenadaValida<-IngresoDeCoordenadas_SUDOKU(VectorCoordenadas,pausa)		// ACA PIDE EL INGRESO DE LAS COORDENADAS
		si pausa=falso Entonces	
			Si MatrizVacia[VectorCoordenadas[0],VectorCoordenadas[1]]="_"   Entonces
				Limpiar Pantalla
				
				Si CoordenadaValida Entonces
					NumIngresado<-IngresoDeNumero_SUDOKU(MatrizVacia,puntos_sud,vidas_sud) 				// ACA PIDE EL INGRESO DE UN NUMERO
					
					Si (NumIngresado=MatrizResuelta[VectorCoordenadas[0],VectorCoordenadas[1]]) Entonces
						MatrizVacia[VectorCoordenadas[0],VectorCoordenadas[1]]<-ConvertirATexto(MatrizResuelta[VectorCoordenadas[0],VectorCoordenadas[1]])
						puntos_sud<-puntos_sud+Aleatorio(50,350)  //si coincide suma puntos Aleatorios del 50 al 350.
					SiNo
						ErrorSud(vidas_sud)
						puntos_sud<-puntos_sud-100               //si no coincide resta 100 puntos
						vidas_sud<-vidas_sud-1                   //si no coincide resta 1 vida
						ErrorSud(vidas_sud)
					FinSi
				FinSi
				
			SiNo
				Escribir "Esa Coordenada ya está Ocupada. Ingrese otra"
				Esperar 500 Milisegundos
			Fin Si
		SiNo
			Repetir
				OpPausa<-Menu_Pausa_sud()
				Segun OpPausa Hacer
					"1":
						pausa<-falso
					"2":
						Inst_sud()
						Esperar Tecla
					"3":
						salir<-Verdadero
						pausa<-falso
				Fin Segun
			Hasta Que pausa=falso
		FinSi
		
		Para i<-(0) Hasta 8  Con Paso 1 Hacer
			Para j<-(0) Hasta 8  Con Paso 1 Hacer
				Si MatrizVacia[i,j]="_" Entonces
					NoGanaste<-Verdadero
					j<-8
					i<-8
					
				FinSi
			Fin Para
		Fin Para
		
		Si Noganaste=Falso Entonces
			Salir<- Verdadero
			ganaste_sud(puntos_sud)
		FinSi
		
	Hasta Que vidas_sud=0 O Salir=Verdadero                          //termina si la vida llega a 0 o si completa bien el tablero.
	si vidas_sud=0 Entonces
		perdiste_sud(puntos_sud)
		//ganaste_sud()
	FinSi
Fin Funcion

Funcion ResolverMatriz( Sud )
	Dimension NumDisponible[9]
	Definir i,j,k,m,n,contador,NumDisponible,contadorAzar,NumAzar,NumRetrocesoX, NumRetrocesoY,CuadranteX, CuadranteY,Acumulador Como Entero
	Definir Error Como Caracter
	Definir SolucionInvalida, NumRepetido,VerificadorNumerico Como Logico
	Limpiar Pantalla
	Carga_sud()
	Repetir
		Para i<-0 Hasta 8 Con Paso 1 Hacer
			Para j<-0 Hasta 8 Con Paso 1 Hacer
				contador<-0
				//rellena todos los numeros disponibles en 1 NOTA: NumDisponible[0] es el num 1, NumDisponible[1]es 2
				Para n<-0 Hasta 8 Con Paso 1 Hacer
					NumDisponible[n]<-1
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
								NumDisponible[NumAzar]<-0
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
								NumDisponible[NumAzar]<-0
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
										NumDisponible[NumAzar]<-0
									Fin Si
								Fin Para
							2:
								Para m<-0 Hasta 2 Con Paso 1 Hacer
									Si Sud[i,j]=Sud[i-1,j-CuadranteX+m] Entonces
										NumRepetido<-Verdadero
										Error<-'R'
										NumRetrocesoX<-j-CuadranteX+m
										NumRetrocesoY<-i-1
										NumDisponible[NumAzar]<-0
									Fin Si
									Si Sud[i,j]=Sud[i-2,j-CuadranteX+m] Entonces
										NumRepetido<-Verdadero
										Error<-'R'
										NumRetrocesoX<-j-CuadranteX+m
										NumRetrocesoY<-i-2
										NumDisponible[NumAzar]<-0
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

Funcion CoordenadaValida<-IngresoDeCoordenadas_SUDOKU(VectorCoordenadas Por Referencia,pausa Por Referencia)
	Definir Coordenadas,Fila,Columna Como Caracter
	Definir Cantidad, i Como Entero
	Definir CoordenadaValida Como Logico
	Escribir sin saltar "Ingrese Coordenadas (LetraNumero: Ej: A1). P Para pausa:" 
	CoordenadaValida<-Verdadero
	leer Coordenadas
	Cantidad<-Longitud(Coordenadas)
	Columna<-Mayusculas(Subcadena(Coordenadas,0,0))
	Si Cantidad=2 O Columna="P" Entonces
		
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
			"P":
				pausa<-verdadero
			De Otro Modo:
				CoordenadaValida<-Falso
		Fin Segun
		
		si pausa<>Verdadero Entonces
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
				De Otro Modo:
					CoordenadaValida<-Falso
			Fin Segun
		FinSi
		
	SiNo
		CoordenadaValida<-Falso
	Fin Si
	
Fin Funcion


Funcion Num<-IngresoDeNumero_SUDOKU(MatrizVacia,puntos_sud Por Referencia,vidas_sud)
	Definir NumC como caracter
	Definir Num como entero
	Repetir
		MostrarMatriz(MatrizVacia,puntos_sud, vidas_sud)
		Escribir sin saltar "Ingrese el numero que desea colocar:" 
		leer NumC
		Segun NumC Hacer
			"1":
				Num<-1
			"2":
				Num<-2
			"3":
				Num<-3
			"4":
				Num<-4
			"5":
				Num<-5
			"6":
				Num<-6
			"7":
				Num<-7
			"8":
				Num<-8
			"9":
				Num<-9
			De Otro Modo:
				Num<-0
				Escribir "Ingreso un valor invalido. Debe ser un numero entre el 1 y el 9."
				Escribir "Presione una tecla para continuar"
				Esperar tecla
		Fin Segun
	Hasta Que Num>0 Y Num<10
	
Fin Funcion


Funcion CompletarMatriz(MatrizVacia,MatrizResuelta,puntos_sud Por Referencia)
	definir Dificultad,j,i,cont,fila,columna Como Entero
	Definir niv Como Caracter
	Definir nivValido Como Logico
	Limpiar Pantalla
	
	Repetir
		niv<-sel_niv()
		NivValido<-Verdadero
		Segun niv Hacer
			"1":
				Dificultad<-50
			"2":
				Dificultad<-40
			"3":
				Dificultad<-35
			De Otro Modo:
				Escribir sin saltar "Ingrese nivel del 1 al 3!"
				NivValido<-Falso
		Fin Segun
	Hasta Que NivValido=Verdadero
	
	
	Para i<-(0) Hasta 8 Con Paso 1 Hacer
		Para j<-(0) Hasta (8) Con Paso 1 Hacer
			MatrizVacia[i,j]<-"_"
		Fin Para
	Fin Para
	
	cont<-0
	Mientras cont<Dificultad Hacer
		fila<-Aleatorio(0,8)
		columna<-Aleatorio(0,8)
		si MatrizVacia[fila,columna]="_" Entonces
			MatrizVacia[fila,columna]<-ConvertirATexto(MatrizResuelta[fila,columna])
			cont<-cont+1
		FinSi
	Fin Mientras
	
Fin Funcion



Funcion inicio_sud
	Definir i Como Entero
	Para i<-1 Hasta 10 Con Paso 1 Hacer
		Limpiar Pantalla
		Escribir "*******************************************************************************"
		Escribir "*                                                                             *"
		Escribir "*                                                                             *"
		Escribir "*                                                                             *"
		Escribir "*                                                                             *"
		Escribir "*                                                                             *"
		
		Segun i Hacer
			1:
				Escribir "*           +=====+                                                           *"
				Escribir "*           ||                                                                *"
				Escribir "*              \\                                                             *"
				Escribir "*               ||                                                            *"
				Escribir "*           +=====+                                                           *" 
				
			2:
				Escribir "*           +=====+ ||   ||                                                   *" 
				Escribir "*           ||      ||   ||                                                   *" 
				Escribir "*              \\   ||   ||                                                   *" 
				Escribir "*               ||  ||   ||                                                   *" 
				Escribir "*           +=====+ +=====+                                                   *" 
				
			3:
				Escribir "*           +=====+ ||   || +===                                              *" 
				Escribir "*           ||      ||   || ||   \\                                           *" 
				Escribir "*              \\   ||   || ||   ||                                           *" 
				Escribir "*               ||  ||   || ||   //                                           *" 
				Escribir "*           +=====+ +=====+ +====                                             *" 
				
			4:
				Escribir "*           +=====+ ||   || +===    +=====+                                   *" 
				Escribir "*           ||      ||   || ||   \\ ||   ||                                   *" 
				Escribir "*              \\   ||   || ||   || ||   ||                                   *" 
				Escribir "*               ||  ||   || ||   // ||   ||                                   *" 
				Escribir "*           +=====+ +=====+ +====   +=====+                                   *"
				
			5:
				Escribir "*           +=====+ ||   || +===    +=====+ ||     //                         *" 
				Escribir "*           ||      ||   || ||   \\ ||   || ||   //                           *" 
				Escribir "*              \\   ||   || ||   || ||   || || //                             *" 
				Escribir "*               ||  ||   || ||   // ||   || ||    \\                          *" 
				Escribir "*           +=====+ +=====+ +====   +=====+ ||      \\                        *"
				
			6:
				Escribir "*           +=====+ ||   || +===    +=====+ ||     //  ||   ||                *" 
				Escribir "*           ||      ||   || ||   \\ ||   || ||   //    ||   ||                *" 
				Escribir "*              \\   ||   || ||   || ||   || || //      ||   ||                *" 
				Escribir "*               ||  ||   || ||   // ||   || ||    \\   ||   ||                *" 
				Escribir "*           +=====+ +=====+ +====   +=====+ ||      \\ +=====+                *"
			7:
				Escribir "*                                                                             *" 
				Escribir "*                                                                             *" 
				Escribir "*                                                                             *" 
				Escribir "*                                                                             *" 
				Escribir "*                                                                             *" 
			8:
				Escribir "*           +=====+ ||   || +===    +=====+ ||     //  ||   ||                *" 
				Escribir "*           ||      ||   || ||   \\ ||   || ||   //    ||   ||                *" 
				Escribir "*              \\   ||   || ||   || ||   || || //      ||   ||                *" 
				Escribir "*               ||  ||   || ||   // ||   || ||    \\   ||   ||                *" 
				Escribir "*           +=====+ +=====+ +====   +=====+ ||      \\ +=====+                *"
			9:
				Escribir "*                                                                             *" 
				Escribir "*                                                                             *" 
				Escribir "*                                                                             *" 
				Escribir "*                                                                             *" 
				Escribir "*                                                                             *" 
			10:
				Escribir "*           +=====+ ||   || +===    +=====+ ||     //  ||   ||                *" 
				Escribir "*           ||      ||   || ||   \\ ||   || ||   //    ||   ||                *" 
				Escribir "*              \\   ||   || ||   || ||   || || //      ||   ||                *" 
				Escribir "*               ||  ||   || ||   // ||   || ||    \\   ||   ||                *" 
				Escribir "*           +=====+ +=====+ +====   +=====+ ||      \\ +=====+                *"
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
		Esperar 300 Milisegundos
	Fin Para
FinFuncion
Funcion Op_sud <- Menu_sud
	definir Op_sud Como Caracter
	Limpiar Pantalla
	Escribir "*******************************************************************************"
	Escribir "*                                                                             *"
	Escribir "*                                                                             *"
	Escribir "*                                                                             *"
	Escribir "*                                                                             *"
	Escribir "*                                                                             *"
	Escribir "*           +=====+ ||   || +===    +=====+ ||     //  ||   ||                *" 
	Escribir "*           ||      ||   || ||   \\ ||   || ||   //    ||   ||                *" 
	Escribir "*              \\   ||   || ||   || ||   || || //      ||   ||                *" 
	Escribir "*               ||  ||   || ||   // ||   || ||    \\   ||   ||                *" 
	Escribir "*           +=====+ +=====+ +====   +=====+ ||      \\ +=====+                *"
	Escribir "*                                                                             *"
	Escribir "*                                                                             *"
	Escribir "*                                                                             *"
	Escribir "*                                                                             *"
	Escribir "*                                                                             *"
	Escribir "*                    BIENVENIDO..!       SELECCIONE UNA OPCIÓN:               *"
	Escribir "*                                        1- JUGAR                             *"
	Escribir "*                                        2- INSTRUCCIONES                     *"
	Escribir "*                                        3- SALIR                             *"
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
	Leer Op_sud
Fin Funcion

Funcion Op_sud <- Menu_Pausa_sud
	definir Op_sud Como Caracter
	Limpiar Pantalla
	Escribir "*******************************************************************************"
	Escribir "*                                                                             *"
	Escribir "*                                                                             *"
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
	Escribir "*                                                                             *"
	Escribir "*                    BIENVENIDO..!       SELECCIONE UNA OPCIÓN:               *"
	Escribir "*                                        1- CONTINUAR                         *"
	Escribir "*                                        2- INSTRUCCIONES                     *"
	Escribir "*                                        3- SALIR                             *"
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
	Leer Op_sud
Fin Funcion

Funcion Inst_sud
	Limpiar Pantalla
	Escribir "*******************************************************************************"
	Escribir "*                                                                             *"
	Escribir "*                                                                             *"
	Escribir "*    COMO SE JUEGA:                                                           *"
	Escribir "*             ~La cuadrícula del Sudoku tiene 9x9 espacios.                   *"
	Escribir "*             ~Solo puedes usar los números del 1 al 9.                       *"
	Escribir "*             ~Cada bloque de 3x3 solo puede contener números del 1 al 9.     *"
	Escribir "*             ~Cada columna vertical solo puede contener números del 1 al 9.  *"
	Escribir "*             ~Cada fila horizontal solo puede contener números del 1 al 9.   *"
	Escribir "*             ~Cada número de un bloque de 3x3, de una columna vertical o     *"
	Escribir "*                        de una fila horizontal solo puede usarse una vez.    *"
	Escribir "*             ~La partida acaba cuando se completa toda la cuadrícula del     *"
	Escribir "*                                        Sudoku con los números correctos.    *"
	Escribir "*                                                                             *"
	Escribir "*                                                                             *"
	Escribir "*   INDICACIONES:                        NIVELES:                             *"
	Escribir "*    ~Mediante coordenadas:                ~Facil: Se mostrarán 50 al azar.   *"
	Escribir "*       Columnas: A;B;C;D;E;F;G;H;i        ~Medio: Se mostrarán 40 al azar.   *"
	Escribir "*       Filas: 1;2;3;4;5;6;7;8;9           ~Dificil: Se mostrarán 35 al azar. *"
	Escribir "*                                                                             *"
	Escribir "*            A  B  C                                                          *"
	Escribir "*            __ __ __                                                         *"
	Escribir "*        1. |__|__| 3|    Coordenada: C1; Numero:3                            *"
	Escribir "*        2. |__|__|__|                                                        *"
	Escribir "*        3. |__| 9|__|    Coordenada: B3; Numero:9                            *"
	Escribir "*                                                                             *"
	Escribir "*                                                                             *"
	Escribir "*                     TOCA UNA TECLA PARA CONTINUAR...                        *"
	Escribir "*                                                                             *"
	Escribir "*                                                                             *"
	Escribir "*******************************************************************************"
	
Fin Funcion
Funcion MostrarMatriz(MatrizResuelta,puntos_sud,vidas_sud Por Referencia)
	definir i,j Como Entero
	definir Puntos_sud_texto, vidas_sud_textos Como Caracter
	
	Puntos_sud_texto<- ConvertirATexto(puntos_sud)
	vidas_sud_textos<- ConvertirATexto(vidas_sud)
	Mientras Longitud((Puntos_sud_texto))<5 Hacer
		Puntos_sud_texto<-"0"+Puntos_sud_texto
	Fin Mientras
	
	Limpiar Pantalla
	Escribir "*******************************************************************************"
	Escribir "*                                                                             *"
	Escribir "*                                                                             *"
	Escribir "*                                                                             *"
	Escribir "*                      VIDAS: ",vidas_sud_textos,"               PUNTOS: ",Puntos_sud_texto,"                   *"
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

Funcion niv<-sel_niv
	Definir niv Como Caracter
	Limpiar Pantalla
	Escribir "*******************************************************************************"
	Escribir "*                                                                             *"
	Escribir "*             ||\\   ||   ||   \\        //   +======   ||                    *"
	Escribir "*             || \\  ||   ||    \\      //    ||        ||                    *"
	Escribir "*             ||  \\ ||   ||     \\    //     +====     ||                    *"
	Escribir "*             ||   \\||   ||      \\  //      ||        ||                    *"
	Escribir "*             ||     ||   ||       \\//       +======   +======               *"
	Escribir "*                                                                             *"
	Escribir "*                                                                             *"
	Escribir "*                                                                             *"
	Escribir "*                                                                             *"
	Escribir "*              ELIJA EL NIVEL QUE DESEA JUGAR:                                *"
	Escribir "*                                                                             *"
	Escribir "*                           1.FÁCIL.                                          *"
	Escribir "*                                                                             *"
	Escribir "*                           2.MEDIO.                                          *"
	Escribir "*                                                                             *"
	Escribir "*                           3.DIFÍCIL.                                        *"
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
	Escribir "*                 SELECCIONE NIVEL PARA CONTINUAR...                          *"
	Escribir "*                                                                             *"
	Escribir "*                                                                             *"
	Escribir "*******************************************************************************"
	Leer niv
FinFuncion

Funcion Carga_sud
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

Funcion perdiste_sud(puntos_sud)
	definir Puntos_sud_texto Como Caracter
	Puntos_sud_texto<- ConvertirATexto(puntos_sud)
	Mientras Longitud((Puntos_sud_texto))<5 Hacer
		Puntos_sud_texto<-"0"+Puntos_sud_texto
	Fin Mientras
	Definir j Como Entero
	Para j<-1 Hasta 3 Con Paso 1 Hacer
		Limpiar Pantalla
		Escribir "*******************************************************************************"
		Escribir "*                                                                             *"
		Escribir "*                                                                             *"
		Escribir "*                                                                             *"
		Escribir "*                                                                             *"
		Escribir "*         ||  \\  +====== +=====+ +===    || +=====+ ======== +======         *"
		Escribir "*         ||   || ||      ||   || ||   \\ || ||         ||    ||              *"
		Escribir "*         ||  //  +====   |=====+ ||   || ||    \\      ||    +====           *"
		Escribir "*         ||      ||      ||  \\  ||   // ||      ||    ||    ||              *"
		Escribir "*         ||      +====== ||   \\ +===    || +=====+    ||    +======         *"
		Escribir "*                                                                             *"
		Escribir "*                                                                             *"
		Segun j hacer
			
			1:
				Escribir "*                      ________                                               *"
				Escribir "*                     | \\  // |                                              *"
				Escribir "*                        \\//                                                 *"
				Escribir "*                        //\\                                                 *"
				Escribir "*                     | //  \\ |                                              *"
				Escribir "*                      ________                                               *"
				Escribir "*                                                                             *"
			2:
				Escribir "*                      ________     ________                                  *"
				Escribir "*                     | \\  // |   | \\  // |                                 *"
				Escribir "*                        \\//         \\//                                    *"
				Escribir "*                        //\\         //\\                                    *"
				Escribir "*                     | //  \\ |   | //  \\ |                                 *"
				Escribir "*                      ________     ________                                  *"
				Escribir "*                                                                             *"
			3:	
				Escribir "*                      ________     ________    ________                      *"
				Escribir "*                     | \\  // |   | \\  // |  | \\  // |                     *"
				Escribir "*                        \\//         \\//        \\//                        *"
				Escribir "*                        //\\         //\\        //\\                        *"
				Escribir "*                     | //  \\ |   | //  \\ |  | //  \\ |                     *"
				Escribir "*                      ________     ________    ________                      *"
				Escribir "*                                                                             *"
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
		Escribir "*******************************************************************************"
		Esperar 600 Milisegundos
	FinPara
	
	Limpiar Pantalla
	Escribir "*******************************************************************************"
	Escribir "*                                                                             *"
	Escribir "*                                                                             *"
	Escribir "*                                                                             *"
	Escribir "*                                                                             *"
	Escribir "*         ||  \\  +====== +=====+ +===    || +=====+ ======== +======         *"
	Escribir "*         ||   || ||      ||   || ||   \\ || ||         ||    ||              *"
	Escribir "*         ||  //  +====   |=====+ ||   || ||    \\      ||    +====           *"
	Escribir "*         ||      ||      ||  \\  ||   // ||      ||    ||    ||              *"
	Escribir "*         ||      +====== ||   \\ +===    || +=====+    ||    +======         *"
	Escribir "*                                                                             *"
	Escribir "*                                                                             *"
	Escribir "*                      ________     ________    ________                      *"
	Escribir "*                     | \\  // |   | \\  // |  | \\  // |                     *"
	Escribir "*                        \\//         \\//        \\//                        *"
	Escribir "*                        //\\         //\\        //\\                        *"
	Escribir "*                     | //  \\ |   | //  \\ |  | //  \\ |                     *"
	Escribir "*                      ________     ________    ________                      *"
	Escribir "*                                                                             *"
	Escribir "*                                                                             *"
	Escribir "*                                                                             *"
	Escribir "*                                                                             *"
	Escribir "*                                                                             *"
	Escribir "*                                                                             *"
	Escribir "*                                                                             *"
	Escribir "*                            PUNTUACION:",Puntos_sud_texto,"                                 *"
	Escribir "*                                                                             *"
	Escribir "*                                                                             *"
	Escribir "*                  PULSE UNA TECLA PARA CONTINUAR...                          *"
	Escribir "*                                                                             *"
	Escribir "*                                                                             *"
	Escribir "*******************************************************************************"
	Esperar Tecla
Fin Funcion

Funcion ganaste_sud(puntos_sud)
	Definir k Como Entero
	definir Puntos_sud_texto Como Caracter
	Puntos_sud_texto<- ConvertirATexto(puntos_sud)
	Mientras Longitud((Puntos_sud_texto))<5 Hacer
		Puntos_sud_texto<-"0"+Puntos_sud_texto
	Fin Mientras
	Para k<-1 Hasta 6 Con Paso 1 Hacer
		Limpiar Pantalla
		Escribir "*******************************************************************************"
		Escribir "*                                                                             *"
		Escribir "*                                                                             *"
		Escribir "*                                                                             *"
		Escribir "*                                                                             *"
		Escribir "*       +======  +=====+  ||\\   ||  +=====+  +=====+ ======== +======        *"
		Escribir "*       ||       ||   ||  || \\  ||  ||   ||  ||         ||    ||             *"
		Escribir "*       ||====+  ||===||  ||  \\ ||  ||===||     \\      ||    +====          *"
		Escribir "*       ||   ||  ||   ||  ||   \\||  ||   ||       ||    ||    ||             *"
		Escribir "*       +=====+  ||   ||  ||     ||  ||   ||  +=====+    ||    +======        *"
		Escribir "*                                                                             *"
		Escribir "*                                                                             *"
		Escribir "*                                                                             *"
		Escribir "*                   --------------------------------------                    *"
		Escribir "*                  |            |            |            |                   *"
		segun k Hacer
			1:
				Escribir "*                  |            |   ______   |            |                   *"
				Escribir "*                  |____________|__|  #1  |__|____________|                   *"
			2:
				Escribir "*                  |            |   ______   |            |                   *"
				Escribir "*                  |____________|__| #YOU |__|____________|                   *"
			3:
				Escribir "*                  |            |   ______   |            |                   *"
				Escribir "*                  |____________|__|  #1  |__|____________|                   *"
			4:
				Escribir "*                  |            |   ______   |            |                   *"
				Escribir "*                  |____________|__| #YOU |__|____________|                   *"
			5:
				Escribir "*                  |            |   ______   |            |                   *"
				Escribir "*                  |____________|__|  #1  |__|____________|                   *"
			6:
				Escribir "*                  |            |   ______   |            |                   *"
				Escribir "*                  |____________|__| #YOU |__|____________|                   *"			
		FinSegun
		Escribir "*                  |            |   \    /   |            |                   *"
		Escribir "*                  |            |   _|__|_   |            |                   *"
		Escribir "*                  |____________|__|______|__|____________|                   *"
		Escribir "*                  |            |            |            |                   *"
		Escribir "*                  |            |            |            |                   *"
		Escribir "*                  |____________|____________|____________|                   *"
		Escribir "*                                                                             *"
		Escribir "*                                                                             *"
		Escribir "*                            PUNTUACION:",Puntos_sud_texto,"                                 *"
		Escribir "*                                                                             *"
		Escribir "*                                                                             *"
		Escribir "*                                                                             *"
		Escribir "*                                                                             *"
		Escribir "*                                                                             *"
		Escribir "*******************************************************************************"
		Esperar 600 Milisegundos
		
	FinPara
	Limpiar Pantalla
	Escribir "*******************************************************************************"
	Escribir "*                                                                             *"
	Escribir "*                                                                             *"
	Escribir "*                                                                             *"
	Escribir "*                                                                             *"
	Escribir "*       +======  +=====+  ||\\   ||  +=====+  +=====+ ======== +======        *"
	Escribir "*       ||       ||   ||  || \\  ||  ||   ||  ||         ||    ||             *"
	Escribir "*       ||====+  ||===||  ||  \\ ||  ||===||     \\      ||    +====          *"
	Escribir "*       ||   ||  ||   ||  ||   \\||  ||   ||       ||    ||    ||             *"
	Escribir "*       +=====+  ||   ||  ||     ||  ||   ||  +=====+    ||    +======        *"
	Escribir "*                                                                             *"
	Escribir "*                                                                             *"
	Escribir "*                                                                             *"
	Escribir "*                   --------------------------------------                    *"
	Escribir "*                  |            |            |            |                   *"
	Escribir "*                  |            |   ______   |            |                   *"
	Escribir "*                  |____________|__| #YOU |__|____________|                   *"			
	Escribir "*                  |            |   \    /   |            |                   *"
	Escribir "*                  |            |   _|__|_   |            |                   *"
	Escribir "*                  |____________|__|______|__|____________|                   *"
	Escribir "*                  |            |            |            |                   *"
	Escribir "*                  |            |            |            |                   *"
	Escribir "*                  |____________|____________|____________|                   *"
	Escribir "*                                                                             *"
	Escribir "*                                                                             *"
	Escribir "*                            PUNTUACION:",Puntos_sud_texto,"                                 *"
	Escribir "*                                                                             *"
	Escribir "*                                                                             *"
	Escribir "*                  PULSE UNA TECLA PARA CONTINUAR...                          *"
	Escribir "*                                                                             *"
	Escribir "*                                                                             *"
	Escribir "*******************************************************************************"
	Esperar Tecla
Fin Funcion

Funcion ErrorSud(vidas Por Referencia)
	Definir niv Como Caracter
	Limpiar Pantalla
	Escribir "*******************************************************************************"
	Escribir "*                                                                             *"
	Escribir "*                                                                             *"
	Escribir "*                                                                             *"
	Escribir "*                                                                             *"
	Escribir "*             +======   +=====+   +=====+   +=====+   +=====+                 *"
	Escribir "*             ||        ||   ||   ||   ||   ||   ||   ||   ||                 *"
	Escribir "*             +====     +=====+   +=====+   ||   ||   +=====+                 *"
	Escribir "*             ||        ||\\      ||\\      ||   ||   ||\\                    *"
	Escribir "*             +======   ++  \\    ++  \\    +=====+   ++  \\                  *"
	Escribir "*                                                                             *"
	Escribir "*                                                                             *"
	Segun vidas hacer
		0:	
			Escribir "*                                                                             *"
			Escribir "*                                                                             *"
			Escribir "*                                                                             *"
			Escribir "*                                                                             *"
			Escribir "*                                                                             *"
			Escribir "*                                                                             *"
			Escribir "*                                                                             *"
		1:
			Escribir "*                      ___  ___                                               *"
			Escribir "*                     |  \\//  |                                              *"
			Escribir "*                      \  \/  /                                               *"
			Escribir "*                       \    /                                                *"
			Escribir "*                        \  /                                                 *"
			Escribir "*                         \/                                                  *"
			Escribir "*                                                                             *"
		2:
			Escribir "*                      ___  ___     ___  ___                                  *"
			Escribir "*                     |  \\//  |   |  \\//  |                                 *"
			Escribir "*                      \  \/  /     \  \/  /                                  *"
			Escribir "*                       \    /       \    /                                   *"
			Escribir "*                        \  /         \  /                                    *"
			Escribir "*                         \/           \/                                     *"
			Escribir "*                                                                             *"
		3:	
			Escribir "*                      ___  ___     ___  ___     ___  ___                     *"
			Escribir "*                     |  \\//  |   |  \\//  |   |  \\//  |                    *"
			Escribir "*                      \  \/  /     \  \/  /     \  \/  /                     *"
			Escribir "*                       \    /       \    /       \    /                      *"
			Escribir "*                        \  /         \  /         \  /                       *"
			Escribir "*                         \/           \/           \/                        *"
			Escribir "*                                                                             *"
			
	FinSegun
	
	Escribir "*                                                                             *"
	Escribir "*                                                                             *"
	Escribir "*                                                                             *"
	Escribir "*                                                                             *"
	Escribir "*                                                                             *"
	Escribir "*                                                                             *"
	Escribir "*                                                                             *"
	Escribir "*                                                                             *"
	Escribir "*                                                                             *"
	Escribir "*                  PULSE UNA TECLA PARA CONTINUAR...                          *"
	Escribir "*                                                                             *"
	Escribir "*                                                                             *"
	Escribir "*******************************************************************************"
	Esperar 500 Milisegundos
FinFuncion
////////////////////////////////////////////////////////////////////// FUNCIONES JUEGO BAT NAVAL /////////////////////////////////////////////////////////////////////////////////////


Funcion JuegoBatallaNaval
	
	Definir i,j,k,VectorCoordenadas,Jugador,CantidadJugadores,BarcosExplotados,GuardadoCoordenada,SiguienteDisparo,PosicionBarco,BarcoDisp Como Entero
	Definir TableroCargaJ1,TableroCargaJ2,TableroBatalla,UltCoord,op,opPausa Como Caracter
	Definir ValidezBarco,CoordenadaValida,TiroAlAzar,DisparoValido,salir, pausa,PausaValida Como Logico
	
	Dimension TableroCargaJ1[10,10]
	Dimension TableroCargaJ2[10,10]
	Dimension TableroBatalla[10,10,2]
	Dimension PosicionBarco[10,10,4,3]
	Dimension VectorCoordenadas[2]
	Dimension BarcosExplotados[2]
	Dimension GuardadoCoordenada[2]
	Dimension GuardadoCoordenadaAzar[2]
	Dimension BarcoDisp[4,2]
	Dimension UltCoord[2]
	Limpiar Pantalla
	
	Repetir
		Para i<-0 Hasta 9 Con Paso 1 Hacer
			Para j<-0 Hasta 9 Con Paso 1 Hacer
				TableroCargaJ1[i,j]<-" "
				TableroCargaJ2[i,j]<-" "
				Para k<-0 Hasta 3 Con Paso 1 Hacer
					PosicionBarco[i,j,k,0]<-0
					PosicionBarco[i,j,k,1]<-0
					PosicionBarco[i,j,k,2]<-0
				Fin Para
			Fin Para
		Fin Para
		UltCoord[0]<-"  "
		UltCoord[1]<-"  "
		salir<-falso
		
		Repetir
			Repetir
				op<-SeleccionJugadores
				Segun op Hacer
					"1":
						CantidadJugadores<-1
					"2":
						CantidadJugadores<-2
					"3":
						MenuInstrucciones()
					"4":
						salir<-Verdadero
				Fin Segun
				Limpiar Pantalla
			Hasta Que op<>"3"
			
		Hasta Que (CantidadJugadores>0 y CantidadJugadores<3)O salir=Verdadero 
		
		Si salir=Falso Entonces
			//																		JUGADOR 1													//
			Jugador<-1
			CargaDeTablero(TableroCargaJ1,VectorCoordenadas,Jugador,PosicionBarco,salir)
			
			//																		JUGADOR 2													//
			Jugador<-2
			si salir=falso Entonces
				Si CantidadJugadores=2 Entonces
					CargaDeTablero(TableroCargaJ2,VectorCoordenadas,Jugador,PosicionBarco,salir)
				SiNo
					CargaDeTableroAzar(TableroCargaJ2,VectorCoordenadas,Jugador,PosicionBarco)
				Fin Si
			FinSi
			
			
			Si salir=Falso	 Entonces
				//																	Empieza la batalla												//
				BarcosExplotados[0]<-0
				BarcosExplotados[1]<-0
				TiroAlAzar<-Verdadero
				Para i<-0 Hasta 9 Con Paso 1 Hacer
					Para j<-0 Hasta 9 Con Paso 1 Hacer
						TableroBatalla[i,j,0]<-" "  //esto despues tiene que ser " " - TableroCargaJ1[i,j] Para los barcos visibles
						TableroBatalla[i,j,1]<-" " //esto despues tiene que ser " " - TableroCargaJ2[i,j] Para los barcos visibles
					Fin Para
				Fin Para	
				
				Repetir
					//VERIFICACION DE BARCOS DISPONIBLES
					BARCOSDISP(BarcoDisp,PosicionBarco)
					
					//A quien le toca jugar
					Si Jugador=2 Entonces
						Jugador<-1
					SiNo
						Jugador<-2
					Fin Si
					TurnoDelJugador(Jugador)
					
					//Seleccion de Coordenadas
					Si Jugador=1 Entonces
						pausa<-falso
						Repetir
							Si pausa=Verdadero Entonces
								Repetir
									PausaValida<-Verdadero
									opPausa<-MenuPausa
									Segun opPausa Hacer
										"1":
											CoordenadaValida<-Falso
										"2":
											MenuInstrucciones()
											PausaValida<-Falso
										"3":
											salir<-Verdadero
											CoordenadaValida<-Verdadero
										De Otro Modo:
											PausaValida<-Falso
									Fin Segun
								Hasta Que PausaValida=Verdadero
							Fin Si
							pausa<-falso
							si salir=Falso Entonces
								TableroDeJuego(TableroBatalla,Jugador,BarcoDisp,UltCoord)
								CoordenadaValida<-IngresoDeCoordenadas(VectorCoordenadas,pausa)
							FinSi
							Limpiar Pantalla
						Hasta Que CoordenadaValida=Verdadero
						
						GuardadoCoord(VectorCoordenadas,UltCoord,Jugador)
					SiNo
						Si CantidadJugadores=2 Entonces
							pausa<-falso
							Repetir
								Si pausa=Verdadero Entonces
									Repetir
										PausaValida<-Verdadero
										opPausa<-MenuPausa
										Segun opPausa Hacer
											"1":
												CoordenadaValida<-Falso
											"2":
												MenuInstrucciones()
												PausaValida<-Falso
											"3":
												salir<-Verdadero
												CoordenadaValida<-Verdadero
											De Otro Modo:
												PausaValida<-Falso
										Fin Segun
									Hasta Que PausaValida=Verdadero
								Fin Si
								pausa<-falso
								si salir=Falso Entonces
									TableroDeJuego(TableroBatalla,Jugador,BarcoDisp,UltCoord)
									CoordenadaValida<-IngresoDeCoordenadas(VectorCoordenadas,pausa)
								FinSi
								Limpiar Pantalla
							Hasta Que CoordenadaValida=Verdadero
							GuardadoCoord(VectorCoordenadas,UltCoord,Jugador)
						SiNo
							//Seleccion de Coords Para CPU
							Si TiroAlAzar=Verdadero Entonces
								VectorCoordenadas[0]<-Azar(10)
								VectorCoordenadas[1]<-Azar(10)
							SiNo
								Repetir
									DisparoValido<-Verdadero
									SiguienteDisparo<-SiguienteDisparo-1
									Si (GuardadoCoordenada[0]=0 Y SiguienteDisparo=1)O (GuardadoCoordenada[0]=9 Y SiguienteDisparo=0) Entonces
										DisparoValido<-Falso
									Fin Si
									Si (GuardadoCoordenada[1]=0 Y SiguienteDisparo=3)O (GuardadoCoordenada[1]=9 Y SiguienteDisparo=2) Entonces
										DisparoValido<-Falso
									Fin Si
								Hasta Que DisparoValido=Verdadero
								Segun SiguienteDisparo Hacer
									0:
										VectorCoordenadas[0]<-GuardadoCoordenada[0]+1
										VectorCoordenadas[1]<-GuardadoCoordenada[1]
									1:
										VectorCoordenadas[0]<-GuardadoCoordenada[0]-1
										VectorCoordenadas[1]<-GuardadoCoordenada[1]
									2:
										VectorCoordenadas[0]<-GuardadoCoordenada[0]
										VectorCoordenadas[1]<-GuardadoCoordenada[1]+1
									3:
										VectorCoordenadas[0]<-GuardadoCoordenada[0]
										VectorCoordenadas[1]<-GuardadoCoordenada[1]-1
									De Otro Modo:
										VectorCoordenadas[0]<-Azar(10)
										VectorCoordenadas[1]<-Azar(10)
								Fin Segun
							Fin Si
						Fin Si
					Fin Si
					GuardadoCoord(VectorCoordenadas,UltCoord,Jugador)
					
					//VERIFICACION SI FUE ACIERTO O FALLO
					si salir=falso Entonces
						Si Jugador=1 Entonces
							Si TableroBatalla[VectorCoordenadas[0],VectorCoordenadas[1],1]=" " o TableroBatalla[VectorCoordenadas[0],VectorCoordenadas[1],1]="*" Entonces
								Si TableroCargaJ2[VectorCoordenadas[0],VectorCoordenadas[1]]="*" Entonces
									//ACA LE PEGÓ AL BARCO
									TableroBatalla[VectorCoordenadas[0],VectorCoordenadas[1],1]<-"X"
									Jugador<-2
									BarcosExplotados[0]<-BarcosExplotados[0]+1
									BarcoDañado
									Para i<-0 Hasta 3 Con Paso 1 Hacer
										PosicionBarco[VectorCoordenadas[0],VectorCoordenadas[1],i,2]<-0
									Fin Para
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
									Para i<-0 Hasta 3 Con Paso 1 Hacer
										PosicionBarco[VectorCoordenadas[0],VectorCoordenadas[1],i,1]<-0
									Fin Para
									
									//Guardado de Coords Para la CPU cuando hace un acierto 
									Si CantidadJugadores=1  Entonces
										GuardadoCoordenada[0]<-VectorCoordenadas[0]
										GuardadoCoordenada[1]<-VectorCoordenadas[1]
										TiroAlAzar<-Falso
										SiguienteDisparo<-4
									Fin Si
								SiNo
									//ACA LE ERRÓ AL BARCO
									Si TableroCargaJ1[VectorCoordenadas[0],VectorCoordenadas[1]]=" " Entonces
										TableroBatalla[VectorCoordenadas[0],VectorCoordenadas[1],0]<-"O"
										BarcoErrado
										
										Si SiguienteDisparo=0 Entonces
											TiroAlAzar<-Verdadero
										Fin Si
										
									Fin Si
								Fin Si
							SiNo
								Si CantidadJugadores=2 Entonces
									CoordenadaRepetida
								FinSi
								Jugador<-1
							FinSi
						FinSi
						
						
						Para k<-0 Hasta 3 Con Paso 1 Hacer
							BarcoDisp[k,0]<-0
							BarcoDisp[k,1]<-0
						FinPara
					FinSi
					
				Hasta Que BarcosExplotados[0]=13 O BarcosExplotados[1]=13 O salir=Verdadero
				
				Si salir=Falso Entonces
					Si BarcosExplotados[0]=13 Entonces
						GanadorJ1()
					SiNo
						GanadorJ2()
					Fin Si
				Fin Si
				
			Fin Si
			
			salir<-falso
		Fin Si
		
	Hasta Que Salir=Verdadero
FinFuncion

	
Funcion  CargaDeTableroAzar ( TableroCarga,VectorCoordenadas,Jugador,PosicionBarco )
	
	Definir i,j,BarcosDisponibles,LargoBarco,BarcosColocados,OrientacionAzar Como Entero
	Definir LargoBarcoTexto,OrientacionBarco Como Caracter
	Definir CoordenadaValida,ValidezBarco Como Logico
	Dimension BarcosDisponibles[4]
	
	BarcosDisponibles[0]<-1
	BarcosDisponibles[1]<-1
	BarcosDisponibles[2]<-2
	BarcosDisponibles[3]<-1
	BarcosColocados<-0
	
	Repetir
		//Seleccion de barco
		Repetir
			ValidezBarco<-Verdadero
			
			//Seleccion de Barco para CPU
			Si BarcosColocados=4 Entonces
				LargoBarco<-3
			SiNo
				LargoBarco<-BarcosColocados+1
			Fin Si
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
			OrientacionAzar<-Azar(2)+1
			Segun OrientacionAzar Hacer
				1:
					OrientacionBarco<-"H"
				2:
					OrientacionBarco<-"V"
			Fin Segun
		Hasta Que OrientacionBarco="H" o OrientacionBarco="V"
		
		//Seleccion de Coordenadas
		Repetir
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
					Si (TableroCarga[VectorCoordenadas[0]+i,VectorCoordenadas[1]]="*") Entonces
						ValidezBarco<-Falso
					Fin Si
				Fin Si
				Si OrientacionBarco="H" Entonces
					Si (TableroCarga[VectorCoordenadas[0],VectorCoordenadas[1]+i]="*") Entonces
						ValidezBarco<-Falso
					Fin Si
				Fin Si
			Fin Para
		Fin Si
		
		//Colocacion  de barcos
		Si ValidezBarco=Verdadero Entonces
			Para i<-0 Hasta LargoBarco-1 Con Paso 1 Hacer
				Si OrientacionBarco="H" Entonces
					TableroCarga[VectorCoordenadas[0],VectorCoordenadas[1]+i]<-"*"
					
					PosicionBarco[VectorCoordenadas[0],VectorCoordenadas[1]+i,LargoBarco-1,Jugador]<-1
				SiNo
					Si OrientacionBarco="V" Entonces
						TableroCarga[VectorCoordenadas[0]+i,VectorCoordenadas[1]]<-"*"
						PosicionBarco[VectorCoordenadas[0]+i,VectorCoordenadas[1],LargoBarco-1,Jugador]<-1
					Fin Si
				Fin Si
				Limpiar Pantalla
			Fin Para
			BarcosDisponibles[LargoBarco-1]<-BarcosDisponibles[LargoBarco-1]-1
			BarcosColocados<-BarcosColocados+1
		Fin Si
	Hasta Que BarcosColocados=5
Fin Funcion



Funcion  CargaDeTablero ( TableroCarga,VectorCoordenadas,Jugador,PosicionBarco,salir Por Referencia )
	
	Definir i,j,k,BarcosDisponibles,LargoBarco,BarcosColocados Como Entero
	Definir LargoBarcoTexto,OrientacionBarco,opPausa,OpConforme Como Caracter
	Definir CoordenadaValida,ValidezBarco,pausa,PausaValida,JugadorConforme Como Logico
	Dimension BarcosDisponibles[4]
	
	Repetir
		JugadorConforme<-Falso
		BarcosDisponibles[0]<-1
		BarcosDisponibles[1]<-1
		BarcosDisponibles[2]<-2
		BarcosDisponibles[3]<-1
		BarcosColocados<-0
		
		Para i<-0 Hasta 9 Con Paso 1 Hacer
			Para j<-0 Hasta 9 Con Paso 1 Hacer
				TableroCarga[i,j]<-" "
				Para k<-0 Hasta 3 Con Paso 1 Hacer
					PosicionBarco[i,j,k,0]<-0
					PosicionBarco[i,j,k,1]<-0
					PosicionBarco[i,j,k,2]<-0
				Fin Para
			Fin Para
		Fin Para
		
		Repetir
			//Seleccion de barco
			Repetir
				ValidezBarco<-Verdadero
				VisualBN(TableroCarga,BarcosDisponibles,Jugador)
				Escribir sin saltar 'Ingrese la longitud del barco a colocar (1-2-3-4):"
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
				VisualBN(TableroCarga,BarcosDisponibles,Jugador)
				Escribir sin saltar 'Ingrese La orientación del barco (H:Horizontal, V:vertical):"
				Leer OrientacionBarco
				OrientacionBarco<-Mayusculas(OrientacionBarco)
				Limpiar Pantalla
			Hasta Que OrientacionBarco="H" o OrientacionBarco="V"
			
			////Seleccion de Coordenadas	
			pausa<-Falso
			salir<-falso
			Repetir
				Si pausa=Verdadero Entonces
					Repetir
						PausaValida<-Verdadero
						opPausa<-MenuPausa
						Segun opPausa Hacer
							"1":
								CoordenadaValida<-Falso
							"2":
								MenuInstrucciones()
								PausaValida<-Falso
							"3":
								salir<-Verdadero
								CoordenadaValida<-Verdadero
							De Otro Modo:
								PausaValida<-Falso
						Fin Segun
					Hasta Que PausaValida=Verdadero
				Fin Si
				pausa<-falso
				si salir=Falso Entonces
					VisualBN(TableroCarga,BarcosDisponibles,Jugador)
					CoordenadaValida<-IngresoDeCoordenadas(VectorCoordenadas,pausa)
				FinSi
				Limpiar Pantalla
			Hasta Que CoordenadaValida=Verdadero
			
			Si salir=Falso Entonces
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
							Si (TableroCarga[VectorCoordenadas[0]+i,VectorCoordenadas[1]]="*") Entonces
								ValidezBarco<-Falso
							Fin Si
						Fin Si
						Si OrientacionBarco="H" Entonces
							Si (TableroCarga[VectorCoordenadas[0],VectorCoordenadas[1]+i]="*") Entonces
								ValidezBarco<-Falso
							Fin Si
						Fin Si
					Fin Para
				Fin Si
				
				//Colocacion  de barcos
				Si ValidezBarco=Verdadero Entonces
					Para i<-0 Hasta LargoBarco-1 Con Paso 1 Hacer
						Si OrientacionBarco="H" Entonces
							TableroCarga[VectorCoordenadas[0],VectorCoordenadas[1]+i]<-"*"
							
							PosicionBarco[VectorCoordenadas[0],VectorCoordenadas[1]+i,LargoBarco-1,Jugador] <-1
						SiNo
							Si OrientacionBarco="V" Entonces
								TableroCarga[VectorCoordenadas[0]+i,VectorCoordenadas[1]]<-"*"
								
								PosicionBarco[VectorCoordenadas[0]+i,VectorCoordenadas[1],LargoBarco-1,Jugador]<-1
							Fin Si
						Fin Si
						VisualBN(TableroCarga,BarcosDisponibles,Jugador)
						esperar 200 Milisegundos
						Limpiar Pantalla
					Fin Para
					BarcosDisponibles[LargoBarco-1]<-BarcosDisponibles[LargoBarco-1]-1
					BarcosColocados<-BarcosColocados+1
				SiNo
					ErrorDeBarco
				Fin Si
			Fin Si
			
		Hasta Que BarcosColocados=5 o salir=Verdadero
		
		si salir=falso Entonces
			Repetir
				Limpiar Pantalla
				Reubicar()
				Leer OpConforme
				Segun OpConforme Hacer
					"1":
						JugadorConforme<-Verdadero
					"2":
						JugadorConforme<-Falso
				Fin Segun
			Hasta Que OpConforme="1" O OpConforme="2"
		FinSi
		Limpiar Pantalla
	Hasta Que JugadorConforme=Verdadero o salir=Verdadero
	Limpiar Pantalla
Fin Funcion

//////////

Funcion CoordenadaValida<-IngresoDeCoordenadas(VectorCoordenadas,pausa Por Referencia)
	Definir Coordenadas,Fila,Columna Como Caracter
	Definir Cantidad, i Como Entero
	Definir CoordenadaValida Como Logico
	Escribir sin saltar "Ingrese Coordenadas (LetraNumero: Ej: A1) // P: PAUSA"
	CoordenadaValida<-Verdadero
	leer Coordenadas
	Cantidad<-Longitud(Coordenadas)
	Columna<-Mayusculas(Subcadena(Coordenadas,0,0))
	Si Cantidad=2 Entonces
		
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
	
	Si Columna="P" Entonces
		pausa<-Verdadero
	SiNo
		pausa<-Falso
	Fin Si
	
Fin Funcion




Funcion GuardadoCoord (VectorCoordenadas,UltCoord,Jugador)
	Definir columna,fila Como Caracter
	Definir filanum Como Entero
	Segun VectorCoordenadas[1] Hacer
		0:
			columna<-"A"
		1:
			columna<-"B"
		2:
			columna<-"C"
		3:
			columna<-"D"
		4:
			columna<-"E"
		5:
			columna<-"F"
		6:
			columna<-"G"
		7:
			columna<-"H"
		8:
			columna<-"I"
		9:
			columna<-"J"
	Fin Segun
	filanum<-VectorCoordenadas[0]+1
	fila<-ConvertirATexto(filanum)
	UltCoord[Jugador-1]<-Concatenar(columna,fila)
Fin Funcion
//////////


Funcion  BARCOSDISP ( BarcoDisp,PosicionBarco )
	definir i,j,k Como Entero
	Para k<-0 Hasta 3 Con Paso 1 Hacer
		Para j<-0 Hasta 9 Con Paso 1 Hacer
			Para i<-0 Hasta 9 Con Paso 1 Hacer
				BarcoDisp[k,0]<-BarcoDisp[k,0]+PosicionBarco[i,j,k,1]
				BarcoDisp[k,1]<-BarcoDisp[k,1]+PosicionBarco[i,j,k,2]
			Fin Para
		Fin Para
		Si k<>2 Entonces
			Si BarcoDisp[k,0]>0 Entonces
				BarcoDisp[k,0]<-1
			Fin Si
			Si BarcoDisp[k,1]>0 Entonces
				BarcoDisp[k,1]<-1
			Fin Si
		Fin Si
	Fin Para
	
	Si BarcoDisp[2,0]>3 Entonces
		BarcoDisp[2,0]<-2
	SiNo
		Si BarcoDisp[2,0]>0 Entonces
			BarcoDisp[2,0]<-1
		FinSi
	Fin Si
	Si BarcoDisp[2,1]>3 Entonces
		BarcoDisp[2,1]<-2
	SiNo
		Si BarcoDisp[2,1]>0 Entonces
			BarcoDisp[2,1]<-1
		FinSi
	Fin Si
	
Fin Funcion

//////////

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

//////////

Funcion TableroDeJuego(TableroBatalla,Jugador,BarcoDisp,UltCoord)
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
	Escribir "*              ULTIMA COORDENADA               BARCOS DEL RIVAL DISPONIBLES   *"
	Escribir "*                   ",UltCoord[abs(1-Jugador)],"                            1:[",BarcoDisp[0,2-Jugador],"]  2:[",BarcoDisp[1,2-Jugador],"]  3:[",BarcoDisp[2,2-Jugador],"]  4:[",BarcoDisp[3,2-Jugador],"]  *"
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
	Escribir "*              ULTIMA COORDENADA                  TUS BARCOS DISPONIBLES      *"
	Escribir "*                   ",UltCoord[2-Jugador],"                            1:[",BarcoDisp[0,abs(1-Jugador)],"]  2:[",BarcoDisp[1,abs(1-Jugador)],"]  3:[",BarcoDisp[2,abs(1-Jugador)],"]  4:[",BarcoDisp[3,abs(1-Jugador)],"]  *"
	Escribir "*******************************************************************************"
Fin Funcion

//////////

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

//////////

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

//////////

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

//////////

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

//////////

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
	Escribir "*___________          ______                                    ______________*"
	Escribir "*           |        |      |______                            |              *"
	Escribir "*           |        |      |      |                           |              *"
	Escribir "*           |________|______|______|___________________________|              *"
	Escribir "*           |                                                  |              *"
	Escribir "*           |~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~|              *"
	Escribir "*           |__________________________________________________|              *"
	Escribir "*           |                                                  |              *"
	Escribir "*           |                                                  |              *"
	Escribir "*           |                                                  |              *"
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

Funcion op<-SeleccionJugadores
	definir op Como Caracter
	Limpiar Pantalla
	Escribir "*******************************************************************************"
	Escribir "*                                                                             *"
	Escribir "*           +====  +=====+  ======  +=====+  ||     ||     +=====+            *"
	Escribir "*           ||  || ||   ||    ||    ||   ||  ||     ||     ||   ||            *"
	Escribir "*           ||==|| ||===||    ||    ||===||  ||     ||     ||===||            *"
	Escribir "*           ||  || ||   ||    ||    ||   ||  ||     ||     ||   ||            *"
	Escribir "*           +====  ||   ||    ||    ||   ||  +====  +====  ||   ||            *"
	Escribir "*                                                                             *"
	Escribir "*               ||\\   || +=====+  \\        //  +=====+  ||                  *"
	Escribir "*               || \\  || ||   ||   \\      //   ||   ||  ||                  *"
	Escribir "*               ||  \\ || ||===||    \\    //    ||===||  ||                  *"
	Escribir "*               ||   \\|| ||   ||     \\  //     ||   ||  ||                  *"
	Escribir "*               ||     || ||   ||      \\//      ||   ||  +====               *"
	Escribir "*                                                                             *"
	Escribir "*                          1- JUGADOR VS CPU                                  *"
	Escribir "*                                                                             *"
	Escribir "*                          2- JUGADOR VS JUGADOR                              *"
	Escribir "*                                                                             *"
	Escribir "*                          3- INSTRUCCIONES                                   *"
	Escribir "*                                                                             *"
	Escribir "*                          4- SALIR                                           *"
	Escribir "*        ______                                                 ______        *"
	Escribir "* ______|      |                                               |      |______ *"
	Escribir "*|      |      |                                               |      |      |*"
	Escribir "*|______|______|_____________                     _____________|______|______|*"
	Escribir "*                           /                     \                           *"
	Escribir "*~~~~~~~~~~~~~~~~~~~~~~~~~~/~~~~~~~~~~~~~~~~~~~~~~~\~~~~~~~~~~~~~~~~~~~~~~~~~~*"
	Escribir "*_________________________/                         \_________________________*"
	Escribir "*                                                                             *"
	Escribir "*                                                                             *"
	Escribir "*                                                                             *"
	Escribir "*******************************************************************************"
	Leer op
Fin Funcion

Funcion MenuInstrucciones
	Limpiar Pantalla
	Escribir "*******************************************************************************"
	Escribir "*                                                                             *"
	Escribir "*                                                                             *"
	Escribir "*                     REGLAS GENERALES A TENER EN CUENTA                      *"
	Escribir "*                                                                             *"
	Escribir "*     Para poder jugar, primero se tendrá que colocar los barcos              *"
	Escribir "*     correspondientes a tu tablero. Para ello se deberá seguir               *"
	Escribir "*     siguiente secuencia de parametros:                                      *"
	Escribir "*                                                                             *"
	Escribir "*     1-Se pedirá ingresar la longitud del barco que desea colocar.           *"
	Escribir "*                                                                             *"
	Escribir "*     2-Se pedirá ingresar en que sentido de orientacion desea colocar        *"
	Escribir "*       el barco seleccionado anteriormente (H:horizontal, V:vertical)        *"
	Escribir "*                                                                             *"
	Escribir "*     3-Se pedirá ubicar en que coordenada ubicar el barco seleccionado.      *"
	Escribir "*       Para ello tener en cuenta que esta ubicación será la del extremo      *"
	Escribir "*       superior derecha del barco, es decir si selecciona un barco de        *"
	Escribir "*       longitud 3, de manera horizontal y en las coordenadas C2, el barco    *"
	Escribir "*       estara ocupando las casillas C2,C3 y C4.                              *"
	Escribir "*                                                                             *"
	Escribir "*                                                                             *"
	Escribir "*        ______                                                 ______        *"
	Escribir "* ______|      |                                               |      |______ *"
	Escribir "*|      |      |                                               |      |      |*"
	Escribir "*|______|______|_____________                     _____________|______|______|*"
	Escribir "*                           /                     \                           *"
	Escribir "*~~~~~~~~~~~~~~~~~~~~~~~~~~/~~~~~~~~~~~~~~~~~~~~~~~\~~~~~~~~~~~~~~~~~~~~~~~~~~*"
	Escribir "*_________________________/                         \_________________________*"
	Escribir "*                                                                             *"
	Escribir "*                              PAGINA 1 DE 3                                  *"
	Escribir "*                                                                             *"
	Escribir "*******************************************************************************"
	Esperar Tecla
	Limpiar Pantalla
	Escribir "*******************************************************************************"
	Escribir "*                                                                             *"
	Escribir "*                              TABLERO DEL JUGADOR                            *"
	Escribir "*                                                                             *"
	Escribir "*                 Barcos Disponibles: [1] [2] [3] [4]                         *"
	Escribir "*                                                                             *"
	Escribir "*                      A   B   C   D   E   F   G   H   I   J                  *"
	Escribir "*                  1- [ ] [ ] [ ] [ ] [ ] [ ] [ ] [ ] [ ] [ ]                 *"
	Escribir "*                  2- [ ] [ ] [ ] [ ] [ ] [ ] [ ] [ ] [ ] [ ]                 *"
	Escribir "*                  3- [ ] [ ] [ ] [ ] [ ] [ ] [ ] [ ] [ ] [ ]                 *"
	Escribir "*                  4- [ ] [ ] [ ] [ ] [ ] [ ] [ ] [ ] [ ] [ ]                 *"
	Escribir "*                  5- [ ] [ ] [ ] [ ] [ ] [ ] [ ] [ ] [ ] [ ]                 *"
	Escribir "*                  6- [ ] [ ] [ ] [ ] [ ] [ ] [ ] [ ] [ ] [ ]                 *"
	Escribir "*                  7- [ ] [ ] [ ] [ ] [ ] [ ] [ ] [ ] [ ] [ ]                 *"
	Escribir "*                  8- [ ] [ ] [ ] [ ] [ ] [ ] [ ] [ ] [ ] [ ]                 *"
	Escribir "*                  9- [ ] [ ] [ ] [ ] [ ] [ ] [ ] [ ] [ ] [ ]                 *"
	Escribir "*                 10- [ ] [ ] [ ] [ ] [ ] [ ] [ ] [ ] [ ] [ ]                 *"
	Escribir "*                                                                             *"
	Escribir "*     -La interfaz de carga de barcos se verá así. Donde se indicará al       *"
	Escribir "*      jugador los espacios que estan disponibles  para la colocacion         *"
	Escribir "*      de los barcos                                                          *"
	Escribir "*        ______                                                 ______        *"
	Escribir "* ______|      |                                               |      |______ *"
	Escribir "*|      |      |                                               |      |      |*"
	Escribir "*|______|______|_____________                     _____________|______|______|*"
	Escribir "*                           /                     \                           *"
	Escribir "*~~~~~~~~~~~~~~~~~~~~~~~~~~/~~~~~~~~~~~~~~~~~~~~~~~\~~~~~~~~~~~~~~~~~~~~~~~~~~*"
	Escribir "*_________________________/                         \_________________________*"
	Escribir "*                                                                             *"
	Escribir "*                              PAGINA 2 DE 3                                  *"
	Escribir "*                                                                             *"
	Escribir "*******************************************************************************"
	Esperar Tecla
	
	Limpiar Pantalla
	Escribir "*******************************************************************************"
	Escribir "*              ---------------TABLERO DE BATALLA------------                  *"
	Escribir "*  INDICA DE QUIEN ES EL TURNO-->  JUGADOR 1                                  *"
	Escribir "*                              TABLERO DEL RIVAL                              *"
	Escribir "*                      A   B   C   D   E   F   G   H   I   J                  *"
	Escribir "*                  1- [ ] [ ] [ ] [ ] [ ] [ ] [ ] [ ] [ ] [ ]                 *"
	Escribir "*                  2- [ ] [ ] [ ] [ ] [ ] [ ] [ ] [ ] [ ] [ ]                 *"
	Escribir "*                  3- [ ] [ ] [ ] [ ] [ ] [ ] [ ] [ ] [ ] [ ]                 *"
	Escribir "*                  4- [ ] [ ] [ ] [ ] [ ] [ ] [ ] [ ] [ ] [ ]                 *"
	Escribir "*                  5- [ ] [ ] [ ] [ ] [ ] [ ] [ ] [ ] [ ] [ ]                 *"
	Escribir "*                  6- [ ] [ ] [ ] [ ] [ ] [ ] [ ] [ ] [ ] [ ]                 *"
	Escribir "*                  7- [ ] [ ] [ ] [ ] [ ] [ ] [ ] [ ] [ ] [ ]                 *"
	Escribir "*                  8- [ ] [ ] [ ] [ ] [ ] [ ] [ ] [ ] [ ] [ ]                 *"
	Escribir "*                  9- [ ] [ ] [ ] [ ] [ ] [ ] [ ] [ ] [ ] [ ]                 *"
	Escribir "*                 10- [ ] [ ] [ ] [ ] [ ] [ ] [ ] [ ] [ ] [ ]                 *"
	Escribir "*              ULTIMA COORDENADA               BARCOS DEL RIVAL DISPONIBLES   *"
	Escribir "*                   A1                            1:[1]  2:[1]  3:[2]  4:[1]  *"
	Escribir "*                                  TU TABLERO                                 *"
	Escribir "*                      A   B   C   D   E   F   G   H   I   J                  *"
	Escribir "*                  1- [ ] [ ] [ ] [ ] [ ] [ ] [ ] [ ] [ ] [ ]                 *"
	Escribir "*                  2- [ ] [ ] [ ] [ ] [ ] [ ] [ ] [ ] [ ] [ ]                 *"
	Escribir "*                  3- [ ] [ ] [ ] [ ] [ ] [ ] [ ] [ ] [ ] [ ]                 *"
	Escribir "*                  4- [ ] [ ] [ ] [ ] [ ] [ ] [ ] [ ] [ ] [ ]                 *"
	Escribir "*                  5- [ ] [ ] [ ] [ ] [ ] [ ] [ ] [ ] [ ] [ ]                 *"
	Escribir "*                  6- [ ] [ ] [ ] [ ] [ ] [ ] [ ] [ ] [ ] [ ]                 *"
	Escribir "*                  7- [ ] [ ] [ ] [ ] [ ] [ ] [ ] [ ] [ ] [ ]                 *"
	Escribir "*                  8- [ ] [ ] [ ] [ ] [ ] [ ] [ ] [ ] [ ] [ ]                 *"
	Escribir "*                  9- [ ] [ ] [ ] [ ] [ ] [ ] [ ] [ ] [ ] [ ]                 *"
	Escribir "*                 10- [ ] [ ] [ ] [ ] [ ] [ ] [ ] [ ] [ ] [ ]                 *"
	Escribir "*                 ULTIMA COORDENADA               TUS BARCOS DISPONIBLES      *"
	Escribir "*                     A1        PAGINA 3 DE 3     1:[1]  2:[1]  3:[2]  4:[1]  *"
	Escribir "*******************************************************************************"
	Esperar Tecla
	
Fin Funcion

Funcion op<-MenuPausa
	definir op Como Caracter
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
	Escribir "*                          SELECCIONE UNA OPCION                              *"
	Escribir "*                                                                             *"
	Escribir "*                          1- Continuar                                       *"
	Escribir "*                                                                             *"
	Escribir "*                          2- Instrucciones                                   *"
	Escribir "*                                                                             *"
	Escribir "*                          3- Salir                                           *"
	Escribir "*                                                                             *"
	Escribir "*                                                                             *"
	Escribir "*        ______                                                 ______        *"
	Escribir "* ______|      |                                               |      |______ *"
	Escribir "*|      |      |                                               |      |      |*"
	Escribir "*|______|______|_____________                     _____________|______|______|*"
	Escribir "*                           /                     \                           *"
	Escribir "*~~~~~~~~~~~~~~~~~~~~~~~~~~/~~~~~~~~~~~~~~~~~~~~~~~\~~~~~~~~~~~~~~~~~~~~~~~~~~*"
	Escribir "*_________________________/                         \_________________________*"
	Escribir "*                                                                             *"
	Escribir "*                                                                             *"
	Escribir "*                                                                             *"
	Escribir "*******************************************************************************"
	Leer op
	Limpiar Pantalla
Fin Funcion

Funcion Reubicar 
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
	Escribir "*                Estás conforme con los barcos colocados?                     *"
	Escribir "*                                                                             *"
	Escribir "*                1-Si, estoy conforme                                         *"
	Escribir "*                                                                             *"
	Escribir "*                2-No, quiero reubicar                                        *"
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

Funcion GanadorJ1
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
	Escribir "*                           GANADOR JUGADOR 1                                 *"
	Escribir "*                                                                             *"
	Escribir "*                                  ______                                     *"
	Escribir "*                                 |  #1  |                                    *"
	Escribir "*                                  \    /                                     *"
	Escribir "*                                  _|__|_                                     *"
	Escribir "*                                 |______|                                    *"
	Escribir "*                                                                             *"
	Escribir "*                                                                             *"
	Escribir "*                                                                             *"
	Escribir "*                                                                             *"
	Escribir "*                                                                             *"
	Escribir "*        ______                                                               *"
	Escribir "* ______|      |                                                              *"
	Escribir "*|      |      |                                                              *"
	Escribir "*|______|______|_____________                                                 *"
	Escribir "*                           /                                                 *"
	Escribir "*~~~~~~~~~~~~~~~~~~~~~~~~~~/~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~*"
	Escribir "*_________________________/                                                   *"
	Escribir "*                                                                             *"
	Escribir "*                                                                             *"
	Escribir "*                                                                             *"
	Escribir "*******************************************************************************"
	Esperar Tecla
Fin Funcion

Funcion GanadorJ2
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
	Escribir "*                           GANADOR JUGADOR 2                                 *"
	Escribir "*                                                                             *"
	Escribir "*                                  ______                                     *"
	Escribir "*                                 |  #1  |                                    *"
	Escribir "*                                  \    /                                     *"
	Escribir "*                                  _|__|_                                     *"
	Escribir "*                                 |______|                                    *"
	Escribir "*                                                                             *"
	Escribir "*                                                                             *"
	Escribir "*                                                                             *"
	Escribir "*                                                                             *"
	Escribir "*                                                                             *"
	Escribir "*                                                               ______        *"
	Escribir "*                                                              |      |______ *"
	Escribir "*                                                              |      |      |*"
	Escribir "*                                                 _____________|______|______|*"
	Escribir "*                                                 \                           *"
	Escribir "*~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\~~~~~~~~~~~~~~~~~~~~~~~~~~*"
	Escribir "*                                                   \_________________________*"
	Escribir "*                                                                             *"
	Escribir "*                                                                             *"
	Escribir "*                                                                             *"
	Escribir "*******************************************************************************"
	Esperar Tecla
Fin Funcion

