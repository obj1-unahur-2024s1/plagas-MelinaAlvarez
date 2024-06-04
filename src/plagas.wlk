class Plagas{
	var poblacion
	
	method transmiteEnfermedad() = poblacion >= 10
	method efectoDeAtacar(){
		poblacion += poblacion*0.1 //* 1.1 otra forma
	}
}

class PlagaCucarachas inherits Plagas{
	var  pesoPromedio
	
	method pesoPromedio() = pesoPromedio
	method pesoPromedio(cantidad){
		pesoPromedio += cantidad
	}
	
	method nivelDeDanio() = poblacion/2
	
	override method transmiteEnfermedad(){
		return super() and self.pesoPromedio() >= 10	
	}
	
	override method efectoDeAtacar(){
		super()
		self.pesoPromedio(2)
	}
}

class PlagaMosquitos inherits Plagas{
	method nivelDeDanio() = poblacion
	override method transmiteEnfermedad(){
		return super() and poblacion%3==0	
	}
}

class PlagaPulgas inherits Plagas{
	method nivelDeDanio() = poblacion*2
}

class PlagaGarrapatas inherits PlagaPulgas{
	
	override method efectoDeAtacar(){
		poblacion += poblacion*1.2
	}
}