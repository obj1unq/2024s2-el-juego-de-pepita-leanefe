import wollok.game.*
import posiciones.*
import extras.*

object pepita {
	var energia = 100
	var property position = game.at(3,5)
	var cazador = silvestre
	var destino = nido 

	method image() {
		return "pepita" + self.estado() + ".png"
	}

	method mover(direccion) {
		self.position(direccion.siguiente(position))
	}

	method estado() {
		if (self.estaEnDestino()) {
			return "-grande"
		}
		if (self.esAtrapada()) {
			return "-gris"
		}
		return ""
	}

	method estaEnDestino() {
		return self.position() == destino.position()
	}

	method esAtrapada() {
		return self.position() == cazador.position()
	}

	method comer(comida) {
		energia = energia + comida.energiaQueOtorga()
	}

	method volar(kms) {
		energia = energia - 10 - kms 
	}
	
	method energia() {
		return energia
	}

}

