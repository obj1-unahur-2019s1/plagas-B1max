import Hogar.*
import Huerta.*
import Mascota.*
class Plaga{
	var property poblacion
	
	method transmiteEnfermedades(){return poblacion >= 10}
	method nivelDanio(){return poblacion*2}
	method atacar(elemento){
		poblacion*=1.1
		elemento.recibirAtaque(self)
	}
	}
	
class Cucarachas inherits Plaga{
	var property pesoPromedio = 0
	override method transmiteEnfermedades(){return super() and pesoPromedio >= 10}
	override method nivelDanio(){return (poblacion/2).max(0)}
	override method atacar(elemento){
		super(elemento)
		pesoPromedio +=2
	}
}
class Garrapata inherits Plaga{
	override method atacar(elemento){poblacion*=1.2}
}
class Mosquito inherits Plaga{
	override method transmiteEnfermedades(){return super() and poblacion %3 == 0}
	override method nivelDanio(){return poblacion}
}
class Pulgas inherits Garrapata{

}
