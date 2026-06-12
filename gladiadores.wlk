import armas.*
import grupos.*

class Gladiador {
  var property vidaInicialDelGladiador = 100
  method fuerzaDelGladiador()
  method destrezaDelGladiador()
  
  method armaActual()
  method atacar(gladiador)
  method contraatacar(gladiador) {
    self.atacar(gladiador)
    gladiador.atacar(self)
    }
  method defensaDelGladiador() 

  method crearGrupoCon(otroGladiador)
  method curar() {vidaInicialDelGladiador = 100}
}
class Mirmillon inherits Gladiador {
  var armaInicial
  var armaduraInicial

  method nuevaArma(arma) {armaInicial = arma}
  override method armaActual() = armaInicial
  
  method armaduraActual() = armaduraInicial
  method nuevaArmadura(armadura) {armaduraInicial = armadura}

  method tieneArmadura(gladiador) = gladiador.armaduraActual() > 0

  var fuerzaDelGladiador 
  method fuerzaDeGladiador(fuerza) {fuerzaDelGladiador = fuerza}
  override method fuerzaDelGladiador() = fuerzaDelGladiador

  override method destrezaDelGladiador() = 15

  override method atacar(gladiador) = if(self.tieneArmadura(gladiador)) (self.fuerzaDelGladiador() + self.armaActual().dañoDeAtaque()) - (gladiador.armaduraActual() + vidaInicialDelGladiador) 
                            else (self.fuerzaDelGladiador() + self.armaActual().dañoDeAtaque()) - vidaInicialDelGladiador
    override method defensaDelGladiador() = self.armaduraActual() + self.destrezaDelGladiador()

    override method crearGrupoCon(gladiador) {
        const nuevoGrupo = new Grupo(nombre = "Mirmillolandia")
        nuevoGrupo.agregarMiembro(self)
        nuevoGrupo.agregarMiembro(gladiador)
        return nuevoGrupo
    }
    // override method crearGrupoCon(gladiador) = new Grupo(nombre = "Mirmillolandia" listaDeMiembros #= {self, gladiador}) // Pensar
}
class Dimachaerus inherits Gladiador{

  const armas = []
    method nuevaArma(armaNueva) = armas.add(armaNueva)
    method quitarArma(arma) = armas.remove(arma)
    method fuerzaDeLasArmas() = armas.sum( {a => a.dañoDeArma() } )

  var destrezaDelGladiador
  method destrazaDeGladiador(destreza) {destrezaDelGladiador = destreza} 
  override method destrezaDelGladiador() = destrezaDelGladiador

  override method fuerzaDelGladiador() = 10
    method tieneArmadura(gladiador) = gladiador.armaduraActual() > 0
  
  override method atacar(gladiador) {
    if(self.tieneArmadura(gladiador)) (self.fuerzaDelGladiador() + self.fuerzaDeLasArmas()) - (gladiador.armaduraActual() + vidaInicialDelGladiador) 
    else (self.fuerzaDelGladiador() + self.fuerzaDeLasArmas()) - vidaInicialDelGladiador
    destrezaDelGladiador += 1
  }
  override method defensaDelGladiador() = self.destrezaDelGladiador() / 2
}
