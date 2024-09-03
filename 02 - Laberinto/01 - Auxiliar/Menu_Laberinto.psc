Algoritmo Menu_Laberinto
	Para i<-1 Hasta 9 Con Paso 1 Hacer
		Limpiar Pantalla
		Segun i Hacer
			1:
				Escribir "+      "
				Escribir "||     "
				Escribir "||     "
				Escribir "||     "
				Escribir "+====  "

			2:
				Escribir "+      +=====+  "
				Escribir "||     ||   ||  "
				Escribir "||     ||===||  "
				Escribir "||     ||   ||  "
				Escribir "+====  ||   ||  "

			3:
				Escribir "+      +=====+  =====    "
				Escribir "||     ||   ||  ||  ||   "
				Escribir "||     ||===||  ||==||   "
				Escribir "||     ||   ||  ||  ||   "
				Escribir "+====  ||   ||  +====+   "

			4:
				Escribir "+      +=====+  =====    +====   "
				Escribir "||     ||   ||  ||  ||   ||      "
				Escribir "||     ||===||  ||==||   +===    "
				Escribir "||     ||   ||  ||  ||   ||      "
				Escribir "+====  ||   ||  +====+   +====   "

			5:
				Escribir "+      +=====+  =====    +====   +====+  "
				Escribir "||     ||   ||  ||  ||   ||      ||  ||  "
				Escribir "||     ||===||  ||==||   +===    |====+  "
				Escribir "||     ||   ||  ||  ||   ||      ||\\    "
				Escribir "+====  ||   ||  +====+   +====   || \\   "

			6:
				Escribir "+      +=====+  =====    +====   +====+  ||   "
				Escribir "||     ||   ||  ||  ||   ||      ||  ||  ||   "
				Escribir "||     ||===||  ||==||   +===    |====+  ||   "
				Escribir "||     ||   ||  ||  ||   ||      ||\\    ||   "
				Escribir "+====  ||   ||  +====+   +====   || \\   ||   "

			7:
				Escribir "+      +=====+  =====    +====   +====+  ||   ||\\   ||  "
				Escribir "||     ||   ||  ||  ||   ||      ||  ||  ||   || \\  ||  "
				Escribir "||     ||===||  ||==||   +===    |====+  ||   ||  \\ ||  "
				Escribir "||     ||   ||  ||  ||   ||      ||\\    ||   ||   \\||  "
				Escribir "+====  ||   ||  +====+   +====   || \\   ||   ||     ||  "

			8:
				Escribir "+      +=====+  =====    +====   +====+  ||   ||\\   ||  ====== "
				Escribir "||     ||   ||  ||  ||   ||      ||  ||  ||   || \\  ||    ||   "
				Escribir "||     ||===||  ||==||   +===    |====+  ||   ||  \\ ||    ||   "
				Escribir "||     ||   ||  ||  ||   ||      ||\\    ||   ||   \\||    ||   "
				Escribir "+====  ||   ||  +====+   +====   || \\   ||   ||     ||    ||   "

			9:
				Escribir "+      +=====+  =====    +====   +====+  ||   ||\\   ||  ======    +=====+"
				Escribir "||     ||   ||  ||  ||   ||      ||  ||  ||   || \\  ||    ||      ||   ||"
				Escribir "||     ||===||  ||==||   +===    |====+  ||   ||  \\ ||    ||      ||   ||"
				Escribir "||     ||   ||  ||  ||   ||      ||\\    ||   ||   \\||    ||      ||   ||"
				Escribir "+====  ||   ||  +====+   +====   || \\   ||   ||     ||    ||      +=====+"

		Fin Segun
		Esperar 200 Milisegundos
	Fin Para

	Para i<-1 Hasta 7 Con Paso 1 Hacer
	Limpiar Pantalla
	Escribir "+      +=====+  =====    +====   +====+  ||   ||\\   ||  ======    +=====+"
	Escribir "||     ||   ||  ||  ||   ||      ||  ||  ||   || \\  ||    ||      ||   ||"
	Escribir "||     ||===||  ||==||   +===    |====+  ||   ||  \\ ||    ||      ||   ||"
	Escribir "||     ||   ||  ||  ||   ||      ||\\    ||   ||   \\||    ||      ||   ||"
	Escribir "+====  ||   ||  +====+   +====   || \\   ||   ||     ||    ||      +=====+"
	Escribir ""
	Si i mod 2=0 Entonces
		
			Escribir "   n___n   "
			Escribir "  (o _ o)  "
			Escribir " /|    |\  "
			Escribir "   ~~~~    "

		SiNo
			Escribir "   n___n   "
			Escribir "  (^ u ^)  "
			Escribir " /|    |\  "
			Escribir "   ~~~~    "

		Fin Si
		Esperar 200 Milisegundos
	Fin Para
	Limpiar Pantalla
	
	Escribir "+      +=====+  =====    +====   +====+  ||   ||\\   ||  ======    +=====+"
	Escribir "||     ||   ||  ||  ||   ||      ||  ||  ||   || \\  ||    ||      ||   ||"
	Escribir "||     ||===||  ||==||   +===    |====+  ||   ||  \\ ||    ||      ||   ||"
	Escribir "||     ||   ||  ||  ||   ||      ||\\    ||   ||   \\||    ||      ||   ||"
	Escribir "+====  ||   ||  +====+   +====   || \\   ||   ||     ||    ||      +=====+"
	Escribir ""
	Escribir "   n___n   SELECCIONE UNA OPCIÓN:"
	Escribir "  (^ u ^)  1- JUGAR"
	Escribir " /|    |\  2- INSTRUCCIONES"
	Escribir "   ~~~~    3- SALIR"


	
FinAlgoritmo
