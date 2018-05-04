import java.awt.Color;
import java.awt.event.KeyEvent;
import java.awt.event.KeyListener;
import java.util.Random;

import javax.swing.JFrame;
import javax.swing.JLabel;

public class TutorGY implements KeyListener {

	char currentLetter;
	JLabel c = new JLabel();
	JFrame b = new JFrame("Type or die");

	void a() {
		b.setVisible(true);

		b.add(c);
		c.setFont(c.getFont().deriveFont(28.0f));
		c.setHorizontalAlignment(JLabel.CENTER);

		currentLetter = generateRandomLetter();
		c.setText(currentLetter + "");

		b.addKeyListener(this);
		b.setSize(500, 500);
	}

	char generateRandomLetter() {
		Random r = new Random();
		return (char) (r.nextInt(26) + 'a');
	}

	@Override
	public void keyTyped(KeyEvent e) {
		// TODO Auto-generated method stub

	}

	@Override
	public void keyPressed(KeyEvent e) {
		// TODO Auto-generated method stub

		char Key = e.getKeyChar();
		if (Key == currentLetter) {
			System.out.println("that is correct");
			currentLetter = generateRandomLetter();
			c.setText(currentLetter + "");
			c.setOpaque(true);
			c.setBackground(Color.GREEN);
		} else {
			System.out.println("you are incorrect");
			currentLetter = generateRandomLetter();
			c.setText(currentLetter + "");
			c.setOpaque(true);
			c.setBackground(Color.red);
		}
	}

	@Override
	public void keyReleased(KeyEvent e) {
		// TODO Auto-generated method stub

	}

}
