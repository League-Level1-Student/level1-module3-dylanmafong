import javax.swing.JOptionPane;

public class MovieNetflix {
public static void main(String[] args) {
	Movie a =  new Movie("Star Wars", 1);
	Movie b =  new Movie("WOO", 2);
	Movie c =  new Movie(" Clone Wars", 0);
	Movie d =  new Movie("Hunger Games", 3);
	Movie e =  new Movie("TLK",4);
	a.getTicketPrice();
	NetflixQueue f = new NetflixQueue();
	f.addMovie(a);
	f.addMovie(b);
	f.addMovie(c);
	f.addMovie(e);
	f.addMovie(d);
	f.printMovies();
	
	JOptionPane.showMessageDialog(null, "The best movie is "  + f.getBestMovie());
	JOptionPane.showMessageDialog(null, "The second best movie is "+f.getMovie(1));
	
}
}
