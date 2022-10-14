/** First Wollok example */
import wollok.game.*

object lionel {
	
	var property position = game.at(3,5)
	method image() {
		return "lionel-titular.png"
	}
	
	method llevarla() {
		self.validarTenenciaPelota()
		pelota.llevada(self)
	}
	
	method validarTenenciaPelota() {
		if (position != pelota.position()) {
			self.error("No la tengo yo!")
		}
	}
}


object pelota {
	const property image="pelota.png"
	var _position = game.at(5,5)
	var jugador = null
	
	method llevada(_jugador) {
		jugador=_jugador
	}
		
	method position() {
		return if (jugador != null) jugador.position() else _position
	}
}
