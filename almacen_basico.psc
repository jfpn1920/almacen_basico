Algoritmo almacen_basico
	Definir opcion, totalProductos Como Entero
	Definir i, j Como Entero
	Definir idBuscar Como Entero
	Definir siguienteID Como Entero
	Definir encontrado Como Logico
	Definir id Como Entero
	Definir producto Como Caracter
	Definir categoria Como Caracter
	Definir cantidad Como Entero
	Definir precio Como Real
	Definir proveedor Como Caracter
	Definir fecha Como Caracter
	Definir estado Como Caracter
	Dimension id[100]
	Dimension producto[100]
	Dimension categoria[100]
	Dimension cantidad[100]
	Dimension precio[100]
	Dimension proveedor[100]
	Dimension fecha[100]
	Dimension estado[100]
	totalProductos <- 0
	siguienteID <- 1
	//-----------------------------------//
	//--|menu_principal_almacen_basico|--//
	//-----------------------------------//
	Repetir
		Escribir "menu principal almacen basico"
		Escribir "1) registrar producto"
		Escribir "2) editar producto"
		Escribir "3) eliminar producto"
		Escribir "4) buscar producto"
		Escribir "5) listar productos"
		Escribir "6) ver detalles del producto"
		Escribir "7) salir"
		Escribir "seleccione una opcion:"
		Leer opcion
		Segun opcion Hacer
			//------------------------//
			//--|registrar_producto|--//
			//------------------------//
			1:
				Escribir "registrar producto"
				id[totalProductos + 1] <- siguienteID
				siguienteID <- siguienteID + 1
				Escribir "id asignado: ", id[totalProductos + 1]
				Escribir "ingrese el nombre del producto:"
				Leer producto[totalProductos + 1]
				Escribir "ingrese la categoria:"
				Leer categoria[totalProductos + 1]
				Escribir "ingrese la cantidad:"
				Leer cantidad[totalProductos + 1]
				Escribir "ingrese el precio:"
				Leer precio[totalProductos + 1]
				Escribir "ingrese el proveedor:"
				Leer proveedor[totalProductos + 1]
				Escribir "ingrese la fecha de ingreso:"
				Leer fecha[totalProductos + 1]
				Escribir "ingrese el estado:"
				Leer estado[totalProductos + 1]
				totalProductos <- totalProductos + 1
				Escribir "producto registrado correctamente."
				//----------------------//
				//--|editar_producto|--//
				//----------------------//
			2:
				Escribir "editar producto"
				Si totalProductos = 0 Entonces
					Escribir "no hay productos registrados."
				SiNo
					Escribir "datos registrados a editar"
					Para i <- 1 Hasta totalProductos Hacer
						Escribir id[i], " | ", producto[i], " | ", categoria[i], " | ", cantidad[i], " | ", precio[i], " | ", proveedor[i], " | ", fecha[i], " | ", estado[i]
					FinPara
					Escribir "ingrese el id del producto:"
					Leer idBuscar
					encontrado <- Falso
					Para i <- 1 Hasta totalProductos Hacer
						Si id[i] = idBuscar Entonces
							encontrado <- Verdadero
							Escribir "ingrese el nuevo producto:"
							Leer producto[i]
							Escribir "ingrese la nueva categoria:"
							Leer categoria[i]
							Escribir "ingrese la nueva cantidad:"
							Leer cantidad[i]
							Escribir "ingrese el nuevo precio:"
							Leer precio[i]
							Escribir "ingrese el nuevo proveedor:"
							Leer proveedor[i]
							Escribir "ingrese la nueva fecha:"
							Leer fecha[i]
							Escribir "ingrese el nuevo estado:"
							Leer estado[i]
							Escribir "producto editado correctamente."
						FinSi
					FinPara
					Si encontrado = Falso Entonces
						Escribir "no se encontró un producto con ese id."
					FinSi
				FinSi
			//-----------------------//
			//--|eliminar_producto|--//
			//-----------------------//
			3:
				Escribir "eliminar producto"
				Si totalProductos = 0 Entonces
					Escribir "no hay productos registrados."
				SiNo
					Escribir "datos registrados a eliminar"
					Para i <- 1 Hasta totalProductos Hacer
						Escribir id[i], " | ", producto[i], " | ", categoria[i], " | ", cantidad[i], " | ", precio[i], " | ", proveedor[i], " | ", fecha[i], " | ", estado[i]
					FinPara
					Escribir "ingrese el id del producto:"
					Leer idBuscar
					encontrado <- Falso
					Para i <- 1 Hasta totalProductos Hacer
						Si id[i] = idBuscar Entonces
							encontrado <- Verdadero
							Si i < totalProductos Entonces
								Para j <- i Hasta totalProductos - 1 Hacer
									id[j] <- id[j+1]
									producto[j] <- producto[j+1]
									categoria[j] <- categoria[j+1]
									cantidad[j] <- cantidad[j+1]
									precio[j] <- precio[j+1]
									proveedor[j] <- proveedor[j+1]
									fecha[j] <- fecha[j+1]
									estado[j] <- estado[j+1]
								FinPara
							FinSi
							totalProductos <- totalProductos - 1
							Escribir "producto eliminado correctamente."
						FinSi
					FinPara
					Si encontrado = Falso Entonces
						Escribir "no se encontró un producto con ese id."
					FinSi
				FinSi
			//---------------------//
			//--|buscar_producto|--//
			//---------------------//
			4:
				Escribir "buscar producto"
				Si totalProductos = 0 Entonces
					Escribir "no hay productos registrados."
				SiNo
					Escribir "ingrese el id del producto:"
					Leer idBuscar
					encontrado <- Falso
					Para i <- 1 Hasta totalProductos Hacer
						Si id[i] = idBuscar Entonces
							encontrado <- Verdadero
							Escribir "datos encontrados"
							Escribir id[i], " | ", producto[i], " | ", categoria[i], " | ", cantidad[i], " | ", precio[i], " | ", proveedor[i], " | ", fecha[i], " | ", estado[i]
						FinSi
					FinPara
					Si encontrado = Falso Entonces
						Escribir "no se encontró un producto con ese id."
					FinSi
				FinSi
			//----------------------//
			//--|listar_productos|--//
			//----------------------//
			5:
				Escribir "listar productos"
				Si totalProductos = 0 Entonces
					Escribir "no hay productos registrados."
				SiNo
					Escribir "datos registrados"
					Para i <- 1 Hasta totalProductos Hacer
						Escribir id[i], " | ", producto[i], " | ", categoria[i], " | ", cantidad[i], " | ", precio[i], " | ", proveedor[i], " | ", fecha[i], " | ", estado[i]
					FinPara
				FinSi
			//-------------------------------//
			//--|ver_detalles_del_producto|--//
			//-------------------------------//
			6:
				Escribir "ver detalles del producto"
				Si totalProductos = 0 Entonces
					Escribir "no hay productos registrados."
				SiNo
					Escribir "ingrese el id del producto:"
					Leer idBuscar
					encontrado <- Falso
					Para i <- 1 Hasta totalProductos Hacer
						Si id[i] = idBuscar Entonces
							encontrado <- Verdadero
							Escribir "detalles del producto"
							Escribir "id: ", id[i]
							Escribir "producto: ", producto[i]
							Escribir "categoria: ", categoria[i]
							Escribir "cantidad: ", cantidad[i]
							Escribir "precio: ", precio[i]
							Escribir "proveedor: ", proveedor[i]
							Escribir "fecha: ", fecha[i]
							Escribir "estado: ", estado[i]
						FinSi
					FinPara
					Si encontrado = Falso Entonces
						Escribir "no se encontró un producto con ese id."
					FinSi
				FinSi
			//------------------------------//
			//--|salir_del_menu_principal|--//
			//------------------------------//
			7:
				Escribir "gracias por utilizar almacen basico."
			De Otro Modo:
				Escribir "opción no válida."
		FinSegun
	Hasta Que opcion = 7
FinAlgoritmo