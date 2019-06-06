import javax.swing.JFrame;
import javax.swing.JLabel;

public aspect Consultas {
	private JFrame frame;
	
	pointcut msj(): call(void Entidad.consultar(String));
			
	after (): msj(){
		
		
		frame=Entidad.mensaje;
		frame.setBounds(100,100,450,300);
		frame.setDefaultCloseOperation(JFrame.HIDE_ON_CLOSE);
		frame.getContentPane().setLayout(null);
		frame.setVisible(true);
		
	}
   

}
