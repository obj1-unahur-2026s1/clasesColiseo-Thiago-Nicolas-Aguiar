class Grupo {
  const nombre 
  var cantidadDePeleas = 0
  
  const listaDeMiembros = {}

  method agregarMiembro(miembro) = listaDeMiembros.add(miembro)
  method quitarMiembro(miembro) = listaDeMiembros.remove(miembro)
  method puedeCombatir() = listaDeMiembros.filter( {m => m.vidaInicialDelGladiador() > 0} )
  method campeonDelGrupoQuePuedaCombatir() = self.puedeCombatir().max( { m => m.fuerzaDelGladiador() } )

  
}