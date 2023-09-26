object galvan {
	var totalDinero = 0
	var totalDeuda = 0
	var sueldo = 150000

	method cobrarSueldo() {
		totalDinero += 0.max(sueldo-totalDeuda)
		totalDeuda = 0.max(totalDeuda-sueldo)
	}


	method gastar(cuanto){
		totalDeuda += 0.max(cuanto - totalDinero)
		totalDinero = 0.max(totalDinero - cuanto)		
	}

	method totalDeuda() = totalDeuda
	method totalDinero() = totalDinero

	method sueldo() { return sueldo }
	method sueldo(nuevoValor) { sueldo = nuevoValor }
}

object baigorria {
	var cantidadEmpanadasVendidas = 1000
	const montoPorEmpanada = 150
	var totalCobrado = 0


	method totalCobrado() = totalCobrado


	method venderEmpanada() {
		cantidadEmpanadasVendidas += 1
	}

	method sueldo() = cantidadEmpanadasVendidas * montoPorEmpanada

	method cobrarSueldo() {totalCobrado += self.sueldo()}
}

object gimenez {
	var dinero = 3000000
	method dinero() { return dinero }
	
	method pagarA( empleado ) { 
		dinero -= empleado.sueldo()
		empleado.cobrarSueldo()
	}
}