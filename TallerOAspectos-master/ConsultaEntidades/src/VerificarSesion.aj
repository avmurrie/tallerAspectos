
public aspect VerificarSesion {
	
    pointcut nombrePointcut(): call(void Entidad.consultar(String)); 
    before() : nombrePointcut() {
    	IniciarSesion.initialize();
    }
   
    after() : nombrePointcut()  {
        System.out.println("Inicio de Sesion exitoso");

    }   

}
