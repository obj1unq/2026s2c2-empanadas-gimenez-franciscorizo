//Escribir aqui los objetos
object galvan {
    var dinero  = 0
    var sueldoBase = 15000
    var deuda = 0
    method cobraSueldo() {
        dinero = dinero + sueldoBase
    }
    method ponerseAlDia() {
        if(deuda > 0 && self.puedePagarDeuda()){
            self.pagarDeuda()
        }
    }
    method pagarDeuda() {
        dinero = dinero - deuda
        deuda = 0
    }
    method puedePagarDeuda() {
        return dinero >= deuda
    } 

    method cambiarSueldo(cantidad) {
      sueldoBase = cantidad 
    }

    method sueldoBase() {
        return sueldoBase
    } 
    method gastar(monto) {
        if(monto > dinero){
            deuda = deuda + monto - dinero
            dinero = 0
        } else {
            dinero = dinero - monto
        }
    }
    method deuda() {
        return deuda
    } 
    method dinero(){
        return dinero
    }
    
}

object baigorria {
    var sueldo = 0
    var empanadasVendidas = 0

    method sueldo() {
        return sueldo
    } 
    method empanadasVendidas() {
        return empanadasVendidas
    } 
    method ventaDeEmpanadas(cantidad) { // setter
        empanadasVendidas = empanadasVendidas + cantidad
    }
    method cobraSueldo() {
     sueldo = sueldo + self.empanadasVendidas() * 15
    }
}

object gimenez {
    var fondosParaSueldo = 300000

    method importeActual() {
        return fondosParaSueldo 
    }

    method pagarSueldo(empleado) {
        if(empleado == galvan) {
            empleado.cobraSueldo()
            fondosParaSueldo = fondosParaSueldo - galvan.sueldoBase()
        } else{
            empleado.cobraSueldo()
            fondosParaSueldo = fondosParaSueldo - baigorria.sueldo()
        }
    } 
  
}


