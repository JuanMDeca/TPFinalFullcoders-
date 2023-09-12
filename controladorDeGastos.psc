Algoritmo controladorDeGastos
	
	Definir compra, montoMaximo, sumaCompras, comprasTotales Como Entero
	Definir mensaje Como Caracter
	
	salir<-1
	
	Escribir "Ingrese el monto máximo disponible"
	Leer montoMaximo
	
	Repetir
		
		Escribir "Ingrese el valor de la compra"
		Escribir "para salir ingrese 0"
		
		Escribir ""
		
		Leer compra
		
		sumaCompras<-sumaCompras+compra
		
		si compra<>0 Entonces
			
			Si sumaCompras > montoMaximo Entonces
				mensaje<- "La compra excede el monto máximo asignado"
				sumaCompras<-sumaCompras-compra
			SiNo
				comprasTotales<-comprasTotales+compra
				mensaje<- "Se ha sumado una nueva compra"
			Fin Si
			
			Escribir mensaje
			Escribir "El total parcial gastado es: ", comprasTotales
			Escribir "El presupuesto disponible es de: ", montoMaximo-sumaCompras
			
			Escribir ""
			

		FinSi
		
	Hasta Que comprasTotales>=montoMaximo o compra==0
	
	Escribir "Usted gasto ", comprasTotales, " en total"
 	Escribir "y le quedó disponible: ", montoMaximo-comprasTotales
	
FinAlgoritmo
