Algoritmo VisualPantalla
	
	Dimension Visual[15,15]
	Para i<-1 Hasta 15 Con Paso 1 Hacer
		Para j<-1 Hasta 15 Con Paso 1 Hacer
			Visual[i,j]<-0
		Fin Para
	Fin Para
	
	Para i<-1 Hasta 15 Con Paso 1 Hacer
		Escribir "[",Visual[16-i,1],"] ", "[",Visual[16-i,2],"] ", "[",Visual[16-i,3],"] ", "[",Visual[16-i,4],"] ", "[",Visual[16-i,5],"] ", "[",Visual[16-i,6],"] ", "[",Visual[16-i,7],"] ", "[",Visual[16-i,8],"] ", "[",Visual[16-i,9],"] ", "[",Visual[16-i,10],"] ", "[",Visual[16-i,11],"] ", "[",Visual[16-i,12],"] ", "[",Visual[16-i,13],"] ", "[",Visual[16-i,14],"] ",  "[",Visual[16-i,15],"] "
	Fin Para
	
FinAlgoritmo
