/** First Wollok example */
import wollok.game.*

object lionel {
	
	var property position = game.at(3,5)
	
	method image() {
		return "lionel-titular.png"
	}
	
}


object pelota {
	const property image="pelota.png"
	var property position = game.at(5,5)	
}
