import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JPanel;

public class PracticeUY implements ActionListener {
	JButton c = new JButton("sup");
	JButton d = new JButton("dude");

	public static void main(String[] args) {
		PracticeUY ctv = new PracticeUY();
		ctv.run();
	}

	void run() {

		JPanel a = new JPanel();
		JFrame b = new JFrame();

		c.addActionListener(this);
		d.addActionListener(this);

		b.setVisible(true);
		b.add(a);
		a.add(c);
		a.add(d);
		b.pack();

	}

	@Override
	public void actionPerformed(ActionEvent e) {
		// TODO Auto-generated method stub

		JButton buttonPressed = (JButton) e.getSource();
		if (buttonPressed == c) {
			System.out.println("sup");
		}
		if (buttonPressed == d) {
			System.out.println("dude");
		}
	}

}
