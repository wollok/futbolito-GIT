/** First Wollok example */
import wollok.game.*

object lionel {
	
	var property position = game.at(3,5)
	
	method image() {
		return "lionel-titular.png"
	}
	
	method patear() {
		self.validarTenenciaPelota()
		pelota.moverDerecha(3)
	}
	
	method validarTenenciaPelota() {
		if ( self.position() != pelota.position() ) {
			self.error("No tengo la pelota!")
		}
	}
}


object pelota {
	const property image="pelota.png"
	var property position = game.at(5,5)
	
	method moverDerecha(cantidad) {
		position=game.at((game.width() - 1).min(position.x() + 3), position.y())
	}
	
}
