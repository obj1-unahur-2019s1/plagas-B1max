class Mascota {
	var property nivelSalud = 0
	const nivelMinimo = 250
	method esBueno(){
		return nivelSalud>nivelMinimo
	}
	method recibirAtaque(plaga){
		if(plaga.transmiteEnfermedades()){
			nivelSalud -= plaga.nivelDanio()
		}
	}
}
