class Grupo {
  const nombre 
  var cantidadDePeleas = 0
  
  const listaDeMiembros = {}

  method nombreDelGrupo() = nombre
  method agregarMiembro(miembro) = listaDeMiembros.add(miembro)
  method quitarMiembro(miembro) = listaDeMiembros.remove(miembro)
  method puedeCombatir() = listaDeMiembros.filter( {m => m.vidaInicialDelGladiador() > 0} )
  method campeonDelGrupoQuePuedaCombatir() = self.puedeCombatir().max( { m => m.fuerzaDelGladiador() } )

  method combatirCon(otroGrupo) {
    self.campeonDelGrupoQuePuedaCombatir().atacar(otroGrupo.campeonDelGrupoQuePuedaCombatir())
    self.campeonDelGrupoQuePuedaCombatir().atacar(otroGrupo.campeonDelGrupoQuePuedaCombatir())
    self.campeonDelGrupoQuePuedaCombatir().atacar(otroGrupo.campeonDelGrupoQuePuedaCombatir())

    cantidadDePeleas += 1
  }
}


object coliseo {
    method combatirConLosGrupos(grupo1, grupo2) {
        grupo1.combatirCon(grupo2)
    }

    method curarGrupo(grupoDeGladiadores) {grupoDeGladiadores.forEach({m => m.curar()})}
}