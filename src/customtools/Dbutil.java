package customtools;

import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

public class Dbutil {
	private static final EntityManagerFactory emf = Persistence.createEntityManagerFactory("bullhorn_1_0");
	public static EntityManagerFactory getEmFactory() {
		return emf;
	}
}
