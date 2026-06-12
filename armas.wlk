class ArmasDeFilo {
  var longitudDeArma
  var filoDeArma

   method dañoDeArma() = filoDeArma * longitudDeArma

  method longitudDelArma(longitud) {longitudDeArma = longitud}
  method filoDelArma(filo) {filoDeArma = filo}
}

class ArmasContundentes  {
  var pesoDeArma
  method pesoDelArma(pesoArma) {pesoDeArma = pesoArma}
}

object casco {
  method armaduraDada() = 10
}
object escudo { 
  method destrezaDada(gladiador) = 5 + gladiador.destreza() * 0.1 
}

class Gladiadores {
  var property vidaInicialDelGladiador = 100
  method fuerzaDelGladiador()
  method destrezaDelGladiador()
  
  method armaActual()
  method atacar()
  method defenderse() 
}
class Mirmillones inherits Gladiadores {
  var armaInicial
  method nuevaArma(arma) {armaInicial = arma}
  override method armaActual() = armaInicial

  const armaduraInicial = casco.armaduraDada()
  method darArmaduraAlGladiador() = armaduraInicial

  method tieneArmadura() = armaduraInicial > 0

  var fuerzaDelGladiador 
  method fuerzaDeGladiador(fuerza) {fuerzaDelGladiador = fuerza}
  override method fuerzaDelGladiador() = fuerzaDelGladiador

  override method destrezaDelGladiador() = 15

  method cambiarDeArmadura() // Pensar otra vez

  override method atacar() = if(self.tieneArmadura()) (self.fuerzaDelGladiador() + self.armaActual().dañoDeAtaque()) - (armaduraInicial + vidaInicialDelGladiador) 
                            else (self.fuerzaDelGladiador() + self.armaActual().dañoDeAtaque()) - vidaInicialDelGladiador
}
class Dimachaerus inherits Gladiadores{
  var destrezaDelGladiador
  method destrazaDeGladiador(destreza) {destrezaDelGladiador = destreza} 
  override method destrezaDelGladiador() = destrezaDelGladiador

  override method fuerzaDelGladiador() = 10
  
}
