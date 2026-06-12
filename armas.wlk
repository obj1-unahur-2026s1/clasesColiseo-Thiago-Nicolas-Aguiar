class ArmaDeFilo {
  // var longitudDeArma // PENSAR
  // var filoDeArma
  // method longitudDelArma(longitud) {longitudDeArma = longitud}
  // method filoDelArma(filo) {filoDeArma = filo} // PENSAR
  
  const longitudDeArma
  const filoDeArma

   method dañoDeArma() = filoDeArma * longitudDeArma
}

class ArmaContundentes  {
  var pesoDeArma
  method pesoDelArma(pesoArma) {pesoDeArma = pesoArma}
}

object casco {
  method armaduraDada() = 10
}
object escudo { 
  method destrezaDada(gladiador) = 5 + gladiador.destreza() * 0.1 
}

