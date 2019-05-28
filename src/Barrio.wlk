class Barrio {
	var property elementos =[]
	method esCopado(){
		return self.elementosBuenos()> self.elementosMalos()
	}
	method elementosBuenos(){return elementos.count({p=>p.esBueno()})}
	method elementosMalos(){return elementos.count({p=> not p.esBueno()})}
	method recibirAtaque(plaga){
		elementos.forEach({p=>p.recibirAtaque(plaga)})
	}
}
