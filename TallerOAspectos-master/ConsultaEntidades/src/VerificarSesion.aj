
public aspect VerificarSesion {
	
    pointcut sesionIniciar(): call(void Entidad.consultar(String));
    before() : sesionIniciar() {
    	if(!(IniciarSesion.sesionIniciada)) {
    		IniciarSesion.initialize();
    	}
    }
   
    after() : sesionIniciar()  {
    	if(IniciarSesion.sesionIniciada) {
    		System.out.println("Inicio de Sesion exitoso");
    	}
    }   

}
