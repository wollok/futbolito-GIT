/** First Wollok example */
import wollok.game.*

object lionel {
	
	var property position = game.at(3,5)
	var titular=true
	method image() {
		return "lionel-" + self.camiseta() + ".png"
	}
	
	method taquito() {
		self.validarTenenciaPelota()
		pelota.moverIzquierda(1)
	}

	method cambiarCamiseta() {
		titular=not titular
	}
	
	method validarTenenciaPelota() {
		if (position != pelota.position()) {
			self.error("No la tengo")
		}
	}

	method camiseta() {
		return if (titular) "titular" else "suplente"
	}
}


object pelota {
	const property image="pelota.png"
	var property position = game.at(5,5)
	
	method moverIzquierda(cantidad) {
		position = game.at(0.max(position.x() - 1), position.y())
	}
		
}
