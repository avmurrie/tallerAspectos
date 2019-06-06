import javax.swing.JFrame;
import javax.swing.JLabel;

public aspect Consultas {
	private JFrame frame;
	
	pointcut msj(): call(void Entidad.consultar(String));
	
	after (): msj(){
		JLabel lblmsj= new JLabel("Has consultado"+entidad);
		frame=new JFrame();
		frame.setBounds(100,100,450,300);
		frame.setDefaultCloseOperation(JFrame.HIDE_ON_CLOSE);
		frame.getContentPane().setLayout(null);
		frame.setVisible(true);
		lblmsj.setBounds(100, 100, 450, 80);
		frame.getContentPane().add(lblmsj);
	}
   

}
