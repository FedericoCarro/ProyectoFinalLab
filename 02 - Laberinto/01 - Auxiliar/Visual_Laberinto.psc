Funcion  VisualPorBloques (PosX,PosY,Llave)
	Dimension Pelo[3,3]
	Dimension Cab[3,3]
	Dimension Cuerpo[3,3]
	Dimension Pies[3,3]
	
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
	
	Si PosX>3 Y PosX<7 Y PosY>9 y PosY<13 Entonces
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
	Cab[PersX,PersY]<-"  (^ u ^)  "
	Cuerpo[PersX,PersY]<-" /|    |\  "
	Pies[PersX,PersY]<-"   ~~~~    "
	
	Segun PosX Hacer
		1 o 2 o 3:
			Segun posY Hacer
				1 o 2 o 3:
					Escribir "BLOQUE 21"
					
					Escribir "||           ============================"
					Escribir "||",Pelo[1,3],"||",Pelo[2,3],"  ",Pelo[3,3],"  "
					Escribir "||",Cab[1,3],"||",Cab[2,3],"  ",Cab[3,3],"  "
					Escribir "||",Cuerpo[1,3],"||",Cuerpo[2,3],"  ",Cuerpo[3,3],"  "
					Escribir "||",Pies[1,3],"||",Pies[2,3],"  ",Pies[3,3],"  "
					Escribir "||           ||           ||============="
					Escribir "||",Pelo[1,2],"||",Pelo[2,2],"||",Pelo[3,2],"||"
					Escribir "||",Cab[1,2],"||",Cab[2,2],"||",Cab[3,2],"||"
					Escribir "||",Cuerpo[1,2],"||",Cuerpo[2,2],"||",Cuerpo[3,2],"||"
					Escribir "||",Pies[1,2],"||",Pies[2,2],"||",Pies[3,2],"||"
					Escribir "||           ||===========||           ||"
					Escribir "||",Pelo[1,1],"  ",Pelo[2,1],"  ",Pelo[3,1],"||"
					Escribir "||",Cab[1,1],"  ",Cab[2,1],"  ",Cab[3,1],"||"
					Escribir "||",Cuerpo[1,1],"  ",Cuerpo[2,1],"  ",Cuerpo[3,1],"||"
					Escribir "||",Pies[1,1],"  ",Pies[2,1],"  ",Pies[3,1],"||"
					Si llave=0 Entonces
						Escribir "||======================================="
					Sino
						Escribir "||           ============================"
					FinSi
					Escribir "   SALIDA                                "
				4 o 5 o 6:
					Escribir "BLOQUE 16"
					
					Escribir "||           ================          ||"
					Escribir "||",Pelo[1,3],"||",Pelo[2,3],"  ",Pelo[3,3],"||"
					Escribir "||",Cab[1,3],"||",Cab[2,3],"  ",Cab[3,3],"||"
					Escribir "||",Cuerpo[1,3],"||",Cuerpo[2,3],"  ",Cuerpo[3,3],"||"
					Escribir "||",Pies[1,3],"||",Pies[2,3],"  ",Pies[3,3],"||"
					Escribir "||           ||           ||           ||"
					Escribir "||",Pelo[1,2],"||",Pelo[2,2],"||",Pelo[3,2],"  "
					Escribir "||",Cab[1,2],"||",Cab[2,2],"||",Cab[3,2],"  "
					Escribir "||",Cuerpo[1,2],"||",Cuerpo[2,2],"||",Cuerpo[3,2],"  "
					Escribir "||",Pies[1,2],"||",Pies[2,2],"||",Pies[3,2],"  "
					Escribir "||======================================="
					Escribir "||",Pelo[1,1],"  ",Pelo[2,1],"  ",Pelo[3,1],"  "
					Escribir "||",Cab[1,1],"  ",Cab[2,1],"  ",Cab[3,1],"  "
					Escribir "||",Cuerpo[1,1],"  ",Cuerpo[2,1],"  ",Cuerpo[3,1],"  "
					Escribir "||",Pies[1,1],"  ",Pies[2,1],"  ",Pies[3,1],"  "
					Escribir "||           ============================"
				7 o 8 o 9:
					Escribir "BLOQUE 11"
					
					Escribir "||=============           ||           ||"
					Escribir "||",Pelo[1,3],"  ",Pelo[2,3],"||",Pelo[3,3],"  "
					Escribir "||",Cab[1,3],"  ",Cab[2,3],"||",Cab[3,3],"  "
					Escribir "||",Cuerpo[1,3],"  ",Cuerpo[2,3],"||",Cuerpo[3,3],"  "
					Escribir "||",Pies[1,3],"  ",Pies[2,3],"||",Pies[3,3],"  "
					Escribir "||           ||===========||============="
					Escribir "||",Pelo[1,2],"||",Pelo[2,2],"||",Pelo[3,2],"  "
					Escribir "||",Cab[1,2],"||",Cab[2,2],"||",Cab[3,2],"  "
					Escribir "||",Cuerpo[1,2],"||",Cuerpo[2,2],"||",Cuerpo[3,2],"  "
					Escribir "||",Pies[1,2],"||",Pies[2,2],"||",Pies[3,2],"  "
					Escribir "||           ||           ||           ||"
					Escribir "||",Pelo[1,1],"||",Pelo[2,1],"  ",Pelo[3,1],"||"
					Escribir "||",Cab[1,1],"||",Cab[2,1],"  ",Cab[3,1],"||"
					Escribir "||",Cuerpo[1,1],"||",Cuerpo[2,1],"  ",Cuerpo[3,1],"||"
					Escribir "||",Pies[1,1],"||",Pies[2,1],"  ",Pies[3,1],"||"
					Escribir "||           ||=============           ||"
				10 o 11 o 12:
					Escribir "BLOQUE 6"
					
					Escribir "||           ||           ||           ||"
					Escribir "||",Pelo[1,3],"||",Pelo[2,3],"||",Pelo[3,3],"  "
					Escribir "||",Cab[1,3],"||",Cab[2,3],"||",Cab[3,3],"  "
					Escribir "||",Cuerpo[1,3],"||",Cuerpo[2,3],"||",Cuerpo[3,3],"  "
					Escribir "||",Pies[1,3],"||",Pies[2,3],"||",Pies[3,3],"  "
					Escribir "||           ||===========||           ||"
					Escribir "||",Pelo[1,2],"||",Pelo[2,2],"  ",Pelo[3,2],"||"
					Escribir "||",Cab[1,2],"||",Cab[2,2],"  ",Cab[3,2],"||"
					Escribir "||",Cuerpo[1,2],"||",Cuerpo[2,2],"  ",Cuerpo[3,2],"||"
					Escribir "||",Pies[1,2],"||",Pies[2,2],"  ",Pies[3,2],"||"
					Escribir "||           ||===========||           ||"
					Escribir "||",Pelo[1,1],"  ",Pelo[2,1],"||",Pelo[3,1],"||"
					Escribir "||",Cab[1,1],"  ",Cab[2,1],"||",Cab[3,1],"||"
					Escribir "||",Cuerpo[1,1],"  ",Cuerpo[2,1],"||",Cuerpo[3,1],"||"
					Escribir "||",Pies[1,1],"  ",Pies[2,1],"||",Pies[3,1],"||"
					Escribir "||=============           ||           ||"
				13 o 14 o 15:
					Escribir "BLOQUE 1"
					
					Escribir "||======================================="
					Escribir "||",Pelo[1,3],"  ",Pelo[2,3],"  ",Pelo[3,3],"  "
					Escribir "||",Cab[1,3],"  ",Cab[2,3],"  ",Cab[3,3],"  "
					Escribir "||",Cuerpo[1,3],"  ",Cuerpo[2,3],"  ",Cuerpo[3,3],"  "
					Escribir "||",Pies[1,3],"  ",Pies[2,3],"  ",Pies[3,3],"  "
					Escribir "||             ===========||             "
					Escribir "||",Pelo[1,2],"  ",Pelo[2,2],"||",Pelo[3,2],"  "
					Escribir "||",Cab[1,2],"  ",Cab[2,2],"||",Cab[3,2],"  "
					Escribir "||",Cuerpo[1,2],"  ",Cuerpo[2,2],"||",Cuerpo[3,2],"  "
					Escribir "||",Pies[1,2],"  ",Pies[2,2],"||",Pies[3,2],"  "
					Escribir "||===========             ||===========||"
					Escribir "||",Pelo[1,1],"  ",Pelo[2,1],"||",Pelo[3,1],"||"
					Escribir "||",Cab[1,1],"  ",Cab[2,1],"||",Cab[3,1],"||"
					Escribir "||",Cuerpo[1,1],"  ",Cuerpo[2,1],"||",Cuerpo[3,1],"||"
					Escribir "||",Pies[1,1],"  ",Pies[2,1],"||",Pies[3,1],"||"
					Escribir "||           ||           ||           ||"
			Fin Segun
		4 o 5 o 6:
			Segun posY Hacer
				1 o 2 o 3:
					Escribir "BLOQUE 22"
					
					Escribir "==           ||           ||           ||"
					Escribir "  ",Pelo[1,3],"||",Pelo[2,3],"||",Pelo[3,3],"||"
					Escribir "  ",Cab[1,3],"||",Cab[2,3],"||",Cab[3,3],"||"
					Escribir "  ",Cuerpo[1,3],"||",Cuerpo[2,3],"||",Cuerpo[3,3],"||"
					Escribir "  ",Pies[1,3],"||",Pies[2,3],"||",Pies[3,3],"||"
					Escribir "||           ||           ||           ||"
					Escribir "||",Pelo[1,2],"||",Pelo[2,2],"  ",Pelo[3,2],"||"
					Escribir "||",Cab[1,2],"||",Cab[2,2],"  ",Cab[3,2],"||"
					Escribir "||",Cuerpo[1,2],"||",Cuerpo[2,2],"  ",Cuerpo[3,2],"||"
					Escribir "||",Pies[1,2],"||",Pies[2,2],"  ",Pies[3,2],"||"
					Escribir "||           ============================"
					Escribir "||",Pelo[1,1],"  ",Pelo[2,1],"  ",Pelo[3,1],"  "
					Escribir "||",Cab[1,1],"  ",Cab[2,1],"  ",Cab[3,1],"  "
					Escribir "||",Cuerpo[1,1],"  ",Cuerpo[2,1],"  ",Cuerpo[3,1],"  "
					Escribir "||",Pies[1,1],"  ",Pies[2,1],"  ",Pies[3,1],"  "
					Escribir "========================================="	
				4 o 5 o 6:
					Escribir "BLOQUE 17"
					
					Escribir "===============           ==============="
					Escribir "||",Pelo[1,3],"  ",Pelo[2,3],"  ",Pelo[3,3],"||"
					Escribir "||",Cab[1,3],"  ",Cab[2,3],"  ",Cab[3,3],"||"
					Escribir "||",Cuerpo[1,3],"  ",Cuerpo[2,3],"  ",Cuerpo[3,3],"||"
					Escribir "||",Pies[1,3],"  ",Pies[2,3],"  ",Pies[3,3],"||"
					Escribir "========================================="
					Escribir "  ",Pelo[1,2],"  ",Pelo[2,2],"  ",Pelo[3,2],"  "
					Escribir "  ",Cab[1,2],"  ",Cab[2,2],"  ",Cab[3,2],"  "
					Escribir "  ",Cuerpo[1,2],"  ",Cuerpo[2,2],"  ",Cuerpo[3,2],"  "
					Escribir "  ",Pies[1,2],"  ",Pies[2,2],"  ",Pies[3,2],"  "
					Escribir "===============           ==============="
					Escribir "  ",Pelo[1,1],"||",Pelo[2,1],"||",Pelo[3,1],"  "
					Escribir "  ",Cab[1,1],"||",Cab[2,1],"||",Cab[3,1],"  "
					Escribir "  ",Cuerpo[1,1],"||",Cuerpo[2,1],"||",Cuerpo[3,1],"  "
					Escribir "  ",Pies[1,1],"||",Pies[2,1],"||",Pies[3,1],"  "
					Escribir "==           ||           ||           ||"
				7 o 8 o 9:
					Escribir "BLOQUE 12"
					
					Escribir "||           ===============           ||"
					Escribir "  ",Pelo[1,3],"  ",Pelo[2,3],"  ",Pelo[3,3],"||"
					Escribir "  ",Cab[1,3],"  ",Cab[2,3],"  ",Cab[3,3],"||"
					Escribir "  ",Cuerpo[1,3],"  ",Cuerpo[2,3],"  ",Cuerpo[3,3],"||"
					Escribir "  ",Pies[1,3],"  ",Pies[2,3],"  ",Pies[3,3],"||"
					Escribir "========================================="
					Escribir "  ",Pelo[1,2],"  ",Pelo[2,2],"  ",Pelo[3,2],"  "
					Escribir "  ",Cab[1,2],"  ",Cab[2,2],"  ",Cab[3,2],"  "
					Escribir "  ",Cuerpo[1,2],"  ",Cuerpo[2,2],"  ",Cuerpo[3,2],"  "
					Escribir "  ",Pies[1,2],"  ",Pies[2,2],"  ",Pies[3,2],"  "
					Escribir "=======================================||"
					Escribir "||",Pelo[1,1],"  ",Pelo[2,1],"  ",Pelo[3,1],"||"
					Escribir "||",Cab[1,1],"  ",Cab[2,1],"  ",Cab[3,1],"||"
					Escribir "||",Cuerpo[1,1],"  ",Cuerpo[2,1],"  ",Cuerpo[3,1],"||"
					Escribir "||",Pies[1,1],"  ",Pies[2,1],"  ",Pies[3,1],"||"
					Escribir "===============           =============||"
					
				10 o 11 o 12:
					Escribir "BLOQUE 7"
					Escribir "==========================||           ||"
					Escribir "  ",Pelo[1,3],"  ",Pelo[2,3],"||",Pelo[3,3],"||"
					Escribir "  ",Cab[1,3],"  ",Cab[2,3],"||",Cab[3,3],"||"
					Escribir "  ",Cuerpo[1,3],"  ",Cuerpo[2,3],"||",Cuerpo[3,3],"||"
					Escribir "  ",Pies[1,3],"  ",Pies[2,3],"||",Pies[3,3],"||"
					Escribir "==========================||           ||"
					Escribir "||",Pelo[1,2],"  ",Pelo[2,2],"||",Pelo[3,2],"||"
					Escribir "||",Cab[1,2],"  ",Cab[2,2],"||",Cab[3,2],"||"
					Escribir "||",Cuerpo[1,2],"  ",Cuerpo[2,2],"||",Cuerpo[3,2],"||"
					Escribir "||",Pies[1,2],"  ",Pies[2,2],"||",Pies[3,2],"||"
					Escribir "||===========||           ||           ||"
					Escribir "||",Pelo[1,1],"||",Pelo[2,1],"  ",Pelo[3,1],"||"
					Escribir "||",Cab[1,1],"||",Cab[2,1],"  ",Cab[3,1],"||"
					Escribir "||",Cuerpo[1,1],"||",Cuerpo[2,1],"  ",Cuerpo[3,1],"||"
					Escribir "||",Pies[1,1],"||",Pies[2,1],"  ",Pies[3,1],"||"
					Escribir "||           ||=============           ||"
				13 o 14 o 15:
					Escribir "BLOQUE 2"
					
					Escribir "========================================="
					Escribir "  ",Pelo[1,3],"  ",Pelo[2,3],"  ",Pelo[3,3],"  "
					Escribir "  ",Cab[1,3],"  ",Cab[2,3],"  ",Cab[3,3],"  "
					Escribir "  ",Cuerpo[1,3],"  ",Cuerpo[2,3],"  ",Cuerpo[3,3],"  "
					Escribir "  ",Pies[1,3],"  ",Pies[2,3],"  ",Pies[3,3],"  "
					Escribir "             ||========================||"
					Escribir "  ",Pelo[1,2],"||",Pelo[2,2],"  ",Pelo[3,2],"||"
					Escribir "  ",Cab[1,2],"||",Cab[2,2],"  ",Cab[3,2],"||"
					Escribir "  ",Cuerpo[1,2],"||",Cuerpo[2,2],"  ",Cuerpo[3,2],"||"
					Escribir "  ",Pies[1,2],"||",Pies[2,2],"  ",Pies[3,2],"||"
					Escribir "||           ||             ===========||"
					Escribir "||",Pelo[1,1],"||",Pelo[2,1],"  ",Pelo[3,1],"  "
					Escribir "||",Cab[1,1],"||",Cab[2,1],"  ",Cab[3,1],"  "
					Escribir "||",Cuerpo[1,1],"||",Cuerpo[2,1],"  ",Cuerpo[3,1],"  "
					Escribir "||",Pies[1,1],"||",Pies[2,1],"  ",Pies[3,1],"  "
					Escribir "||===========||===========             ||"
			Fin Segun
		7 o 8 o 9:
			Segun posY Hacer
				1 o 2 o 3:
					Escribir "BLOQUE 23"
					
					Escribir "||           ||           ||           ||"
					Escribir "||",Pelo[1,3],"||",Pelo[2,3],"||",Pelo[3,3],"  "
					Escribir "||",Cab[1,3],"||",Cab[2,3],"||",Cab[3,3],"  "
					Escribir "||",Cuerpo[1,3],"||",Cuerpo[2,3],"||",Cuerpo[3,3],"  "
					Escribir "||",Pies[1,3],"||",Pies[2,3],"||",Pies[3,3],"  "
					Escribir "||           ============================"
					Escribir "||",Pelo[1,2],"  ",Pelo[2,2],"  ",Pelo[3,2],"||"
					Escribir "||",Cab[1,2],"  ",Cab[2,2],"  ",Cab[3,2],"||"
					Escribir "||",Cuerpo[1,2],"  ",Cuerpo[2,2],"  ",Cuerpo[3,2],"||"
					Escribir "||",Pies[1,2],"  ",Pies[2,2],"  ",Pies[3,2],"||"
					Escribir "||==========================           =="
					Escribir "  ",Pelo[1,1],"  ",Pelo[2,1],"  ",Pelo[3,1],"  "
					Escribir "  ",Cab[1,1],"  ",Cab[2,1],"  ",Cab[3,1],"  "
					Escribir "  ",Cuerpo[1,1],"  ",Cuerpo[2,1],"  ",Cuerpo[3,1],"  "
					Escribir "  ",Pies[1,1],"  ",Pies[2,1],"  ",Pies[3,1],"  "
					Escribir "========================================="
				4 o 5 o 6:
					Escribir "BLOQUE 18"
					
					Escribir "==========================||           ||"
					Escribir "  ",Pelo[1,3],"  ",Pelo[2,3],"||",Pelo[3,3],"||"
					Escribir "  ",Cab[1,3],"  ",Cab[2,3],"||",Cab[3,3],"||"
					Escribir "  ",Cuerpo[1,3],"  ",Cuerpo[2,3],"||",Cuerpo[3,3],"||"
					Escribir "  ",Pies[1,3],"  ",Pies[2,3],"||",Pies[3,3],"||"
					Escribir "=============||           ||           ||"
					Escribir "  ",Pelo[1,2],"||",Pelo[2,2],"||",Pelo[3,2],"||"
					Escribir "  ",Cab[1,2],"||",Cab[2,2],"||",Cab[3,2],"||"
					Escribir "  ",Cuerpo[1,2],"||",Cuerpo[2,2],"||",Cuerpo[3,2],"||"
					Escribir "  ",Pies[1,2],"||",Pies[2,2],"||",Pies[3,2],"||"
					Escribir "==           ||           ||           ||"
					Escribir "  ",Pelo[1,1],"||",Pelo[2,1],"  ",Pelo[3,1],"||"
					Escribir "  ",Cab[1,1],"||",Cab[2,1],"  ",Cab[3,1],"||"
					Escribir "  ",Cuerpo[1,1],"||",Cuerpo[2,1],"  ",Cuerpo[3,1],"||"
					Escribir "  ",Pies[1,1],"||",Pies[2,1],"  ",Pies[3,1],"||"
					Escribir "||           ||                        ||"
				7 o 8 o 9:
					Escribir "BLOQUE 13"
					
					Escribir "||           ||           ||            ||"
					Escribir "||",Pelo[1,3],"  ",Pelo[2,3],"||",Pelo[3,3],"  "
					Escribir "||",Cab[1,3],"  ",Cab[2,3],"||",Cab[3,3],"  "
					Escribir "||",Cuerpo[1,3],"  ",Cuerpo[2,3],"||",Cuerpo[3,3],"  "
					Escribir "||",Pies[1,3],"  ",Pies[2,3],"||",Pies[3,3],"  "
					Escribir "========================================="
					Escribir "  ",Pelo[1,2],"  ",Pelo[2,2],"  ",Pelo[3,2],"||"
					Escribir "  ",Cab[1,2],"  ",Cab[2,2],"  ",Cab[3,2],"||"
					Escribir "  ",Cuerpo[1,2],"  ",Cuerpo[2,2],"  ",Cuerpo[3,2],"||"
					Escribir "  ",Pies[1,2],"  ",Pies[2,2],"  ",Pies[3,2],"||"
					Escribir "||           ===============           ||"
					Escribir "||",Pelo[1,1],"  ",Pelo[2,1],"||",Pelo[3,1],"||"
					Escribir "||",Cab[1,1],"  ",Cab[2,1],"||",Cab[3,1],"||"
					Escribir "||",Cuerpo[1,1],"  ",Cuerpo[2,1],"||",Cuerpo[3,1],"||"
					Escribir "||",Pies[1,1],"  ",Pies[2,1],"||",Pies[3,1],"||"
					Escribir "============================           ||"
				10 o 11 o 12:
					Escribir "BLOQUE 8"
					
					Escribir "||===========||=============           ||"
					Escribir "||",Pelo[1,3],"||",Pelo[2,3],"  ",Pelo[3,3],"||"
					Escribir "||",Cab[1,3],"||",Cab[2,3],"  ",Cab[3,3],"||"
					Escribir "||",Cuerpo[1,3],"||",Cuerpo[2,3],"  ",Cuerpo[3,3],"||"
					Escribir "||",Pies[1,3],"||",Pies[2,3],"  ",Pies[3,3],"||"
					Escribir "||           ||           ||           ||"
					Escribir "||",Pelo[1,2],"||",Pelo[2,2],"||",Pelo[3,2],"||"
					Escribir "||",Cab[1,2],"||",Cab[2,2],"||",Cab[3,2],"||"
					Escribir "||",Cuerpo[1,2],"||",Cuerpo[2,2],"||",Cuerpo[3,2],"||"
					Escribir "||",Pies[1,2],"||",Pies[2,2],"||",Pies[3,2],"||"
					Escribir "||           ||           ||           ||"
					Escribir "||",Pelo[1,1],"||",Pelo[2,1],"||",Pelo[3,1],"||"
					Escribir "||",Cab[1,1],"||",Cab[2,1],"||",Cab[3,1],"||"
					Escribir "||",Cuerpo[1,1],"||",Cuerpo[2,1],"||",Cuerpo[3,1],"||"
					Escribir "||",Pies[1,1],"||",Pies[2,1],"||",Pies[3,1],"||"
					Escribir "||           ||           ||           ||"
				13 o 14 o 15:
					Escribir "BLOQUE 3"
					
					Escribir "========================================="
					Escribir "  ",Pelo[1,3],"  ",Pelo[2,3],"  ",Pelo[3,3],"  "
					Escribir "  ",Cab[1,3],"  ",Cab[2,3],"  ",Cab[3,3],"  "
					Escribir "  ",Cuerpo[1,3],"  ",Cuerpo[2,3],"  ",Cuerpo[3,3],"  "
					Escribir "  ",Pies[1,3],"  ",Pies[2,3],"  ",Pies[3,3],"  "
					Escribir "===============           ==============="
					Escribir "||",Pelo[1,2],"  ",Pelo[2,2],"||",Pelo[3,2],"  "
					Escribir "||",Cab[1,2],"  ",Cab[2,2],"||",Cab[3,2],"  "
					Escribir "||",Cuerpo[1,2],"  ",Cuerpo[2,2],"||",Cuerpo[3,2],"  "
					Escribir "||",Pies[1,2],"  ",Pies[2,2],"||",Pies[3,2],"  "
					Escribir "========================================="
					Escribir "  ",Pelo[1,1],"  ",Pelo[2,1],"  ",Pelo[3,1],"||"
					Escribir "  ",Cab[1,1],"  ",Cab[2,1],"  ",Cab[3,1],"||"
					Escribir "  ",Cuerpo[1,1],"  ",Cuerpo[2,1],"  ",Cuerpo[3,1],"||"
					Escribir "  ",Pies[1,1],"  ",Pies[2,1],"  ",Pies[3,1],"||"
					Escribir "==========================             ||"
			Fin Segun
		10 o 11 o 12:
			Segun posY Hacer
				1 o 2 o 3:
					Escribir "BLOQUE 24"
					
					Escribir "========================================="
					Escribir "  ",Pelo[1,3],"||",Pelo[2,3],"  ",Pelo[3,3],"  "
					Escribir "  ",Cab[1,3],"||",Cab[2,3],"  ",Cab[3,3],"  "
					Escribir "  ",Cuerpo[1,3],"||",Cuerpo[2,3],"  ",Cuerpo[3,3],"  "
					Escribir "  ",Pies[1,3],"||",Pies[2,3],"  ",Pies[3,3],"  "
					Escribir "||           ||           ||============="
					Escribir "||",Pelo[1,2],"  ",Pelo[2,2],"||",Pelo[3,2],"  "
					Escribir "||",Cab[1,2],"  ",Cab[2,2],"||",Cab[3,2],"  "
					Escribir "||",Cuerpo[1,2],"  ",Cuerpo[2,2],"||",Cuerpo[3,2],"  "
					Escribir "||",Pies[1,2],"  ",Pies[2,2],"||",Pies[3,2],"  "
					Escribir "==========================||           =="
					Escribir "  ",Pelo[1,1],"  ",Pelo[2,1],"||",Pelo[3,1],"  "
					Escribir "  ",Cab[1,1],"  ",Cab[2,1],"||",Cab[3,1],"  "
					Escribir "  ",Cuerpo[1,1],"  ",Cuerpo[2,1],"||",Cuerpo[3,1],"  "
					Escribir "  ",Pies[1,1],"  ",Pies[2,1],"||",Pies[3,1],"  "
					Escribir "========================================="
				4 o 5 o 6:
					Escribir "BLOQUE 19"
					
					Escribir "||           ||           ||           ||"
					Escribir "||",Pelo[1,3],"  ",Pelo[2,3],"||",Pelo[3,3],"||"
					Escribir "||",Cab[1,3],"  ",Cab[2,3],"||",Cab[3,3],"||"
					Escribir "||",Cuerpo[1,3],"  ",Cuerpo[2,3],"||",Cuerpo[3,3],"||"
					Escribir "||",Pies[1,3],"  ",Pies[2,3],"||",Pies[3,3],"||"
					Escribir "||========================||           ||"
					Escribir "||",Pelo[1,2],"  ",Pelo[2,2],"  ",Pelo[3,2],"||"
					Escribir "||",Cab[1,2],"  ",Cab[2,2],"  ",Cab[3,2],"||"
					Escribir "||",Cuerpo[1,2],"  ",Cuerpo[2,2],"  ",Cuerpo[3,2],"||"
					Escribir "||",Pies[1,2],"  ",Pies[2,2],"  ",Pies[3,2],"||"
					Escribir "||           ============================"
					Escribir "||",Pelo[1,1],"  ",Pelo[2,1],"  ",Pelo[3,1],"  "
					Escribir "||",Cab[1,1],"  ",Cab[2,1],"  ",Cab[3,1],"  "
					Escribir "||",Cuerpo[1,1],"  ",Cuerpo[2,1],"  ",Cuerpo[3,1],"  "
					Escribir "||",Pies[1,1],"  ",Pies[2,1],"  ",Pies[3,1],"  "
					Escribir "||======================================="
				7 o 8 o 9:
					Escribir "BLOQUE 14"
					
					Escribir "========================================="
					Escribir "  ",Pelo[1,3],"  ",Pelo[2,3],"  ",Pelo[3,3],"  "
					Escribir "  ",Cab[1,3],"  ",Cab[2,3],"  ",Cab[3,3],"  "
					Escribir "  ",Cuerpo[1,3],"  ",Cuerpo[2,3],"  ",Cuerpo[3,3],"  "
					Escribir "  ",Pies[1,3],"  ",Pies[2,3],"  ",Pies[3,3],"  "
					Escribir "===============           ||           ||"
					Escribir "||",Pelo[1,2],"  ",Pelo[2,2],"||",Pelo[3,2],"||"
					Escribir "||",Cab[1,2],"  ",Cab[2,2],"||",Cab[3,2],"||"
					Escribir "||",Cuerpo[1,2],"  ",Cuerpo[2,2],"||",Cuerpo[3,2],"||"
					Escribir "||",Pies[1,2],"  ",Pies[2,2],"||",Pies[3,2],"||"
					Escribir "||           =============||           ||"
					Escribir "||",Pelo[1,1],"||",Pelo[2,1],"||",Pelo[3,1],"||"
					Escribir "||",Cab[1,1],"||",Cab[2,1],"||",Cab[3,1],"||"
					Escribir "||",Cuerpo[1,1],"||",Cuerpo[2,1],"||",Cuerpo[3,1],"||"
					Escribir "||",Pies[1,1],"||",Pies[2,1],"||",Pies[3,1],"||"
					Escribir "||           ||           ||           ||"
				10 o 11 o 12:
					Escribir "BLOQUE 9"
					
					Escribir "||           ||           ||           ||"
					Escribir "||",Pelo[1,3],"||",Pelo[2,3],"||",Pelo[3,3],"||"
					Escribir "||",Cab[1,3],"||",Cab[2,3],"||",Cab[3,3],"||"
					Escribir "||",Cuerpo[1,3],"||",Cuerpo[2,3],"||",Cuerpo[3,3],"||"
					Escribir "||",Pies[1,3],"||",Pies[2,3],"||",Pies[3,3],"||"
					Escribir "||           ||           ||===========||"
					Escribir "||",Pelo[1,2],"||",Pelo[2,2],"  ",Pelo[3,2],"  "
					Escribir "||",Cab[1,2],"||",Cab[2,2],"  ",Cab[3,2],"  "
					Escribir "||",Cuerpo[1,2],"||",Cuerpo[2,2],"  ",Cuerpo[3,2],"  "
					Escribir "||",Pies[1,2],"||",Pies[2,2],"  ",Pies[3,2],"  "
					Escribir "||           ============================"
					Escribir "||",Pelo[1,1],"  ",Pelo[2,1],"  ",Pelo[3,1],"  "
					Escribir "||",Cab[1,1],"  ",Cab[2,1],"  ",Cab[3,1],"  "
					Escribir "||",Cuerpo[1,1],"  ",Cuerpo[2,1],"  ",Cuerpo[3,1],"  "
					Escribir "||",Pies[1,1],"  ",Pies[2,1],"  ",Pies[3,1],"  "
					Escribir "||=====================================||"
				13 o 14 o 15:
					Escribir "BLOQUE 4"
					
					Escribir "========================================="
					Escribir "  ",Pelo[1,3],"  ",Pelo[2,3],"  ",Pelo[3,3],"  "
					Escribir "  ",Cab[1,3],"  ",Cab[2,3],"  ",Cab[3,3],"  "
					Escribir "  ",Cuerpo[1,3],"  ",Cuerpo[2,3],"  ",Cuerpo[3,3],"  "
					Escribir "  ",Pies[1,3],"  ",Pies[2,3],"  ",Pies[3,3],"  "
					Escribir "===============           ==============="
					Escribir "  ",Pelo[1,2],"||",Pelo[2,2],"||",Pelo[3,2],"  "
					Escribir "  ",Cab[1,2],"||",Cab[2,2],"||",Cab[3,2],"  "
					Escribir "  ",Cuerpo[1,2],"||",Cuerpo[2,2],"||",Cuerpo[3,2],"  "
					Escribir "  ",Pies[1,2],"||",Pies[2,2],"||",Pies[3,2],"  "
					Escribir "             ||           ||             "
					Escribir "||",Pelo[1,1],"||",Pelo[2,1],"||",Pelo[3,1],"||"
					Escribir "||",Cab[1,1],"||",Cab[2,1],"||",Cab[3,1],"||"
					Escribir "||",Cuerpo[1,1],"||",Cuerpo[2,1],"||",Cuerpo[3,1],"||"
					Escribir "||",Pies[1,1],"||",Pies[2,1],"||",Pies[3,1],"||"
					Escribir "||           ||           ||           ||"
			Fin Segun
		13 o 14 o 15: 
			Segun posY Hacer
				1 o 2 o 3:
					Escribir "BLOQUE 25"
					
					Escribir "============================           ||"
					Escribir "  ",Pelo[1,3],"  ",Pelo[2,3],"||",Pelo[3,3],"||"
					Escribir "  ",Cab[1,3],"  ",Cab[2,3],"||",Cab[3,3],"||"
					Escribir "  ",Cuerpo[1,3],"  ",Cuerpo[2,3],"||",Cuerpo[3,3],"||"
					Escribir "  ",Pies[1,3],"  ",Pies[2,3],"||",Pies[3,3],"||"
					Escribir "===============           ||           ||"
					Escribir "  ",Pelo[1,2],"  ",Pelo[2,2],"||",Pelo[3,2],"||"
					Escribir "  ",Cab[1,2],"  ",Cab[2,2],"||",Cab[3,2],"||"
					Escribir "  ",Cuerpo[1,2],"  ",Cuerpo[2,2],"||",Cuerpo[3,2],"||"
					Escribir "  ",Pies[1,2],"  ",Pies[2,2],"||",Pies[3,2],"||"
					Escribir "============================           ||"
					Escribir "  ",Pelo[1,1],"  ",Pelo[2,1],"  ",Pelo[3,1],"||"
					Escribir "  ",Cab[1,1],"  ",Cab[2,1],"  ",Cab[3,1],"||"
					Escribir "  ",Cuerpo[1,1],"  ",Cuerpo[2,1],"  ",Cuerpo[3,1],"||"
					Escribir "  ",Pies[1,1],"  ",Pies[2,1],"  ",Pies[3,1],"||"
					Escribir "========================================="
				4 o 5 o 6:
					Escribir "BLOQUE 20"
					
					Escribir "||           ||           ||           ||"
					Escribir "||",Pelo[1,3],"||",Pelo[2,3],"||",Pelo[3,3],"||"
					Escribir "||",Cab[1,3],"||",Cab[2,3],"||",Cab[3,3],"||"
					Escribir "||",Cuerpo[1,3],"||",Cuerpo[2,3],"||",Cuerpo[3,3],"||"
					Escribir "||",Pies[1,3],"||",Pies[2,3],"||",Pies[3,3],"||"
					Escribir "||===========||           ||           ||"
					Escribir "||",Pelo[1,2],"  ",Pelo[2,2],"||",Pelo[3,2],"||"
					Escribir "||",Cab[1,2],"  ",Cab[2,2],"||",Cab[3,2],"||"
					Escribir "||",Cuerpo[1,2],"  ",Cuerpo[2,2],"||",Cuerpo[3,2],"||"
					Escribir "||",Pies[1,2],"  ",Pies[2,2],"||",Pies[3,2],"||"
					Escribir "||==========================           ||"
					Escribir "  ",Pelo[1,1],"  ",Pelo[2,1],"  ",Pelo[3,1],"||"
					Escribir "  ",Cab[1,1],"  ",Cab[2,1],"  ",Cab[3,1],"||"
					Escribir "  ",Cuerpo[1,1],"  ",Cuerpo[2,1],"  ",Cuerpo[3,1],"||"
					Escribir "  ",Pies[1,1],"  ",Pies[2,1],"  ",Pies[3,1],"||"
					Escribir "============================           ||"
				7 o 8 o 9:
					Escribir "BLOQUE 15"
					
					Escribir "===============           ||           ||"
					Escribir "  ",Pelo[1,3],"  ",Pelo[2,3],"||",Pelo[3,3],"||"
					Escribir "  ",Cab[1,3],"  ",Cab[2,3],"||",Cab[3,3],"||"
					Escribir "  ",Cuerpo[1,3],"  ",Cuerpo[2,3],"||",Cuerpo[3,3],"||"
					Escribir "  ",Pies[1,3],"  ",Pies[2,3],"||",Pies[3,3],"||"
					Escribir "============================           ||"
					Escribir "||",Pelo[1,2],"  ",Pelo[2,2],"  ",Pelo[3,2],"||"
					Escribir "||",Cab[1,2],"  ",Cab[2,2],"  ",Cab[3,2],"||"
					Escribir "||",Cuerpo[1,2],"  ",Cuerpo[2,2],"  ",Cuerpo[3,2],"||"
					Escribir "||",Pies[1,2],"  ",Pies[2,2],"  ",Pies[3,2],"||"
					Escribir "||           ==========================||"
					Escribir "||",Pelo[1,1],"||",Pelo[2,1],"  ",Pelo[3,1],"||"
					Escribir "||",Cab[1,1],"||",Cab[2,1],"  ",Cab[3,1],"||"
					Escribir "||",Cuerpo[1,1],"||",Cuerpo[2,1],"  ",Cuerpo[3,1],"||"
					Escribir "||",Pies[1,1],"||",Pies[2,1],"  ",Pies[3,1],"||"
					Escribir "||           ||                        ||"
				10 o 11 o 12:
					Escribir "BLOQUE 10"
					
					Escribir "||           ||           ||           ||"
					Escribir "||",Pelo[1,3],"||",Pelo[2,3],"||",Pelo[3,3],"||"
					Escribir "||",Cab[1,3],"||",Cab[2,3],"||",Cab[3,3],"||"
					Escribir "||",Cuerpo[1,3],"||",Cuerpo[2,3],"||",Cuerpo[3,3],"||"
					Escribir "||",Pies[1,3],"||",Pies[2,3],"||",Pies[3,3],"||"
					Escribir "||           ||===========||           ||"
					Escribir "  ",Pelo[1,2],"  ",Pelo[2,2],"||",Pelo[3,2],"||"
					Escribir "  ",Cab[1,2],"  ",Cab[2,2],"||",Cab[3,2],"||"
					Escribir "  ",Cuerpo[1,2],"  ",Cuerpo[2,2],"||",Cuerpo[3,2],"||"
					Escribir "  ",Pies[1,2],"  ",Pies[2,2],"||",Pies[3,2],"||"
					Escribir "=============||           ||===========||"
					Escribir "  ",Pelo[1,1],"||",Pelo[2,1],"  ",Pelo[3,1],"||"
					Escribir "  ",Cab[1,1],"||",Cab[2,1],"  ",Cab[3,1],"||"
					Escribir "  ",Cuerpo[1,1],"||",Cuerpo[2,1],"  ",Cuerpo[3,1],"||"
					Escribir "  ",Pies[1,1],"||",Pies[2,1],"  ",Pies[3,1],"||"
					Escribir "===============           ||           ||"
					
				13 o 14 o 15:
					Escribir "BLOQUE 5"
					
					Escribir "========================================="
					Escribir "  ",Pelo[1,3],"  ",Pelo[2,3],"  ",Pelo[3,3],"||"
					Escribir "  ",Cab[1,3],"  ",Cab[2,3],"  ",Cab[3,3],"||"
					Escribir "  ",Cuerpo[1,3],"  ",Cuerpo[2,3],"  ",Cuerpo[3,3],"||"
					Escribir "  ",Pies[1,3],"  ",Pies[2,3],"  ",Pies[3,3],"||"
					Escribir "==           ===============           ||"
					Escribir "  ",Pelo[1,2],"  ",Pelo[2,2],"||",Pelo[3,2],"||"
					Escribir "  ",Cab[1,2],"  ",Cab[2,2],"||",Cab[3,2],"||"
					Escribir "  ",Cuerpo[1,2],"  ",Cuerpo[2,2],"||",Cuerpo[3,2],"||"
					Escribir "  ",Pies[1,2],"  ",Pies[2,2],"||",Pies[3,2],"||"
					Escribir "||===========||           ||           ||"
					Escribir "||",Pelo[1,1],"||",Pelo[2,1],"||",Pelo[3,1],"||"
					Escribir "||",Cab[1,1],"||",Cab[2,1],"||",Cab[3,1],"||"
					Escribir "||",Cuerpo[1,1],"||",Cuerpo[2,1],"||",Cuerpo[3,1],"||"
					Escribir "||",Pies[1,1],"||",Pies[2,1],"||",Pies[3,1],"||"
					Escribir "||           ||           ||           ||"
			Fin Segun
	Fin Segun
Fin Funcion

Algoritmo sin_titulo
	Llave<-1
	Mientras PosX<>1 Hacer
		Escribir "Ingresá Valor de X"
		Leer PosX
		Escribir "Ingresá Valor de Y"
		Leer PosY
		Escribir "Ingresá Llave"
		Leer Llave
		VisualPorBloques(PosX,PosY,Llave)
		
	Fin Mientras

	
FinAlgoritmo


