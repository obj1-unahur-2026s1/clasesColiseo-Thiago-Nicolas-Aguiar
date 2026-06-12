import armas.*

class Gladiador {
  var property vidaInicialDelGladiador = 100
  method fuerzaDelGladiador()
  method destrezaDelGladiador()
  
  method armaActual()
  method atacar()
  method defenderse() 
}
class Mirmillon inherits Gladiador {
  var armaInicial
  var armaduraInicial

  method nuevaArma(arma) {armaInicial = arma}
  override method armaActual() = armaInicial
  
  method armaduraActual() = armaduraInicial
  method nuevaArmadura(armadura) {armaduraInicial = armadura}

  method tieneArmadura() = armaduraInicial > 0

  var fuerzaDelGladiador 
  method fuerzaDeGladiador(fuerza) {fuerzaDelGladiador = fuerza}
  override method fuerzaDelGladiador() = fuerzaDelGladiador

  override method destrezaDelGladiador() = 15

  override method atacar() = if(self.tieneArmadura()) (self.fuerzaDelGladiador() + self.armaActual().dañoDeAtaque()) - (armaduraInicial + vidaInicialDelGladiador) 
                            else (self.fuerzaDelGladiador() + self.armaActual().dañoDeAtaque()) - vidaInicialDelGladiador
}
class Dimachaerus inherits Gladiador{
  var destrezaDelGladiador
  method destrazaDeGladiador(destreza) {destrezaDelGladiador = destreza} 
  override method destrezaDelGladiador() = destrezaDelGladiador

  override method fuerzaDelGladiador() = 10
  
}
