package persistence;

public class JogoDao implements IJogoDao {
	
	public GenericDAO gDao;
	
	public JogoDao(GenericDAO gDao) {
		this.gDao = gDao;
	}


}
