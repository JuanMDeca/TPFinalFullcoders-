Algoritmo controladorDeGastos
	
	Definir compra, montoMaximo, sumaCompras, comprasTotales, lista, contador Como Entero
	Definir ingresoCompra, mensaje Como Caracter
	
	Dimension lista[10000]
	
	contador<-0
	
	Escribir "Ingrese el monto máximo disponible"
	Leer montoMaximo
	
	Repetir
		
		Escribir "Si desea salir presione `s`"
		Escribir "Para ver la lista de compras presione `l`"
		Escribir "O ingrese el valor de una nueva compra"
		
		Leer ingresoCompra
		
		si Minusculas(ingresoCompra)="l" o Minusculas(ingresoCompra)="s" Entonces
			ingresoCompra<-ingresoCompra
			SiNo
			compra<-ConvertirANumero(ingresoCompra)
		FinSi
		
		
		si Minusculas(ingresoCompra) = "l" Entonces
			Escribir ""
			Escribir "Su lista de gastos es: "
			
			Para i<-1 Hasta contador Con Paso 1 Hacer
				Escribir lista[i]
			Fin Para
			
			Escribir ""
			
		SiNo
			

			si compra>0 Entonces
				
				sumaCompras<-sumaCompras+compra
				
				Si sumaCompras > montoMaximo Entonces
					mensaje<- "La compra excede el monto máximo asignado"
					sumaCompras<-sumaCompras-compra
					
				SiNo
					
					contador<-contador+1
					lista[contador]=compra
					comprasTotales<-comprasTotales+compra
					mensaje<- "Se ha sumado una nueva compra"
					
				Fin Si
				
				Escribir ""
				
				Escribir mensaje
				Escribir "El total parcial gastado es: ", comprasTotales
				Escribir "El presupuesto disponible es de: ", montoMaximo-sumaCompras
				
				Escribir ""
				
			SiNo
				
				Escribir "Valor invalido"

			FinSi
		
		FinSi
		
	Hasta Que comprasTotales >= montoMaximo o Minusculas(ingresoCompra) = "s"
	
	Escribir "Usted gasto ", comprasTotales, " en total"
 	Escribir "y le quedó disponible: ", montoMaximo-comprasTotales
	
FinAlgoritmo
