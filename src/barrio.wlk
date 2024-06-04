import elementos.*

class Barrio{
	const elementos = []
	
	method agregar(elemento){
		elementos.add(elemento)
	}
	
	method esCopado(){
		return self.cantElementosBuenos() > self.cantElementosMalos()
	}
	
	method cantElementosBuenos(){
		return elementos.count({e=>e.esBueno()})
	}
	
	method cantElementosMalos(){
		return elementos.count({e=> not e.esBueno()})
	}
	
}


//otra forma
/*
method esCopado(){
* const elementosBuenos == self.cantElementosBuenos()
* return elementosBuenos > elementos.size()-elementosBuenos
* }
*/ 