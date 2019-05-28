class Hogar {
	var property nivelMugre = 0
	var property nivelConfort = 0
	method esBueno(){
		return (nivelConfort/2) >= nivelMugre
	}
	method recibirAtaque(plaga){
		nivelMugre =  nivelMugre + plaga.nivelDanio()
	}
}
