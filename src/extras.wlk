import wollok.game.*
import pepita.*

object nido {
    var property image = "nido.png"

    method position() {
        return game.at(8,8)
    }

}

object silvestre {
    var property image = "silvestre.png"

    method position() {
        return game.at(pepita.position().x().max(3), 0)
    }

}