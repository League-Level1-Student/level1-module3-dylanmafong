package ChuckleClicker;

import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JOptionPane;
import javax.swing.JPanel;

public class ChuckleClicker {
	JFrame a;
	void creategui() {
		a  = new JFrame();
		a.setVisible(true);
		
	}
	void makeButtonS() {
		JButton b = new JButton();
		JButton c = new JButton();
		JPanel d = new JPanel ();
		d.add(c);
		d.add(b);
		a.add(d);
		b.setText("joke");
		c.setText("punchline");
		a.setSize(500, 500);
		b.addActionListener(new ActionListener() {
			
			@Override
			public void actionPerformed(ActionEvent e) {
				// TODO Auto-generated method stub
				JOptionPane.showMessageDialog(null, "what happens to frogs if they park in the wrong section?");
			}
				
		});
		c.addActionListener(new ActionListener() {
			
			@Override
			public void actionPerformed(ActionEvent e) {
				// TODO Auto-generated method stub
				JOptionPane.showMessageDialog(null, "they get toad");
			
				
			}
		});
	}
}
