class Armas {
  method dañoDeAtaque()
  method dañoDeArma()
}

class ArmasDeFilo inherits Armas{
  var longitudDeArma
  var filoDeArma

  override method dañoDeAtaque() = self.dañoDeArma()
  
  override method dañoDeArma() = filoDeArma + longitudDeArma

  method longitudDelArma(longitud) {longitudDeArma = longitud}
  method filoDelArma(filo) {filoDeArma = filo}
}

class ArmasContundentes inherits Armas{
  var pesoDeArma
  method pesoDelArma(pesoArma) {pesoDeArma = pesoArma}
  override method dañoDeAtaque() = pesoDeArma
}

// object casco { // Pensar
//   method armaduraDada() = 10
// }
// object escudo { // Pensar
//   method destrezaDada() = 5 + gladiador.destreza() * 0.1 
// }

class Gladiadores {
  var property vidaInicialDelGladiador = 100
  method fuerzaDelGladiador()
  method destrezaDelGladiador()
  

  method atacar()
  method defenderse() 
}
class Mirmillones inherits Gladiadores {
  var fuerzaDelGladiador 
  method fuerzaDeGladiador(fuerza) {fuerzaDelGladiador = fuerza}
  override method fuerzaDelGladiador() = fuerzaDelGladiador

  override method destrezaDelGladiador() = 15

  method cambiarDeArmadura() // Pensar
}
class Dimachaerus inherits Gladiadores{
  var destrezaDelGladiador
  method destrazaDeGladiador(destreza) {destrezaDelGladiador = destreza} 
  override method destrezaDelGladiador() = destrezaDelGladiador

  override method fuerzaDelGladiador() = 10
  
}
