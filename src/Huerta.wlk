import nivelFIjoHuertas.*
class Huerta {
	var capacidadProduccion = 0
	method esBueno(){
		return capacidadProduccion > nivelFIjoHuertas.nivelFijoProduccion()
	}
	method recibirAtaque(plaga){
		capacidadProduccion -= plaga.nivelDanio()*0.1
		if(plaga.transmiteEnfermedades()){capacidadProduccion-=10}
	}
}
