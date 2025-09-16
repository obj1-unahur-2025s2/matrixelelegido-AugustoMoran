object neo {
  var energia = 100
  method esElElegido() = true
  method saltar() {
    energia = energia / 2
  }
  method vitalidad() = energia / 10 
}
object morfeo {
    method esElElegido() {
      return false
    }
  var vitalidad = 8
  var cansado = false
  method vitalidad() = vitalidad
    method saltar() {
      vitalidad = (vitalidad - 1).max(0)
      cansado = not cansado
    }
  method estaCansado() = cansado  
}
object trinity {
  method vitalidad() {
    return 0
  }
  method esElElegido() = false
  method saltar() {
    
  }
}
object nave {
  const pasajeros = #{neo,morfeo,trinity}
  method cantidadDePasajeros() = pasajeros.size()
  method pasajeroConMayorVitalidad() = pasajeros.max({p=>p.vitalidad()})
}