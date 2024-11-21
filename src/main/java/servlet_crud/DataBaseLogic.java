package servlet_crud;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;

public class DataBaseLogic {
	EntityManagerFactory p = Persistence.createEntityManagerFactory("E3");
	EntityManager m = p.createEntityManager();
	EntityTransaction t = m.getTransaction();
	
	public void add(employeeData emp) {
		t.begin();
		m.persist(emp);
		t.commit();
	}
	
	public void delete(int id) {
		employeeData emp = m.find(employeeData.class, id);
		t.begin();
		m.remove(emp);
		t.commit();
	}
	
	public void update(int id) {
		employeeData emp = m.find(employeeData.class, id);
		t.begin();
		m.merge(emp);
		t.commit();
	}
	
	public employeeData fetch(int id) {
		return m.find(employeeData.class, id);
	}
	
}
