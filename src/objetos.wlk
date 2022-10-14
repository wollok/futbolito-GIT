/** First Wollok example */
import wollok.game.*

object lionel {
	
	var property position = game.at(3,5)
	var titular=true
	method image() {
		return "lionel-" + self.camiseta() + ".png"
	}
	
	method cambiarCamiseta() {
		titular=not titular
	}
	
	method camiseta() {
		return if (titular) "titular" else "suplente"
	}
}


object pelota {
	const property image="pelota.png"
	var property position = game.at(5,5)
	
}
