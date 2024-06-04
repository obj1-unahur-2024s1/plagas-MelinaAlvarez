import plagas.*

class Elemento{
	method efectoDeAtacar(plaga){
		plaga.efectoDeAtacar()
	}
}

class Hogar{
	var nivelMugre
	var confort
	
	method esBueno() = nivelMugre <= confort/2
	
	method nivelDeMugre(cantidad){
		nivelMugre += cantidad
	}
	
	method nivelDeMugre() = nivelMugre
	
	method recibirAtaque(plaga){
		self.nivelDeMugre(plaga.nivelDeDanio())
		plaga.efectoDeAtacar()
	}
}

class Huerta{
	var capacidadProduccion
	
	method capacidadProduccion() = capacidadProduccion
	
	method capacidadProduccion(cantidad){
		 capacidadProduccion = 0.max(capacidadProduccion-cantidad)
	}
	
	method esBueno() = capacidadProduccion > nivelProduccion.nivelASuperar()
	
	method recibirAtaque(plaga){
		const disminucion = plaga.nivelDeDanio()*0.1 + if(plaga.transmiteEnfermedad()) 10 else 0
		self.capacidadProduccion(disminucion) 
		plaga.efectoDeAtacar()
	}
}

object nivelProduccion{
	var property nivelASuperar = 0
}

class Mascota{
	var nivelSalud
	
	method nivelSalud() = nivelSalud
	
	method nivelSalud(nivel){
		nivelSalud = 0.max(nivelSalud - nivel)
	}
	
	method esBueno() = nivelSalud > 250
	
	method recibirAtaque(plaga){
		if(plaga.transmiteEnfermedad()){ 
			self.nivelSalud(plaga.nivelDeDanio())
		}
		plaga.efectoDeAtacar()
	}
}
