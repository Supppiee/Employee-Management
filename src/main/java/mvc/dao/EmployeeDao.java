package mvc.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.NoResultException;
import javax.persistence.Persistence;

import org.springframework.stereotype.Repository;

import mvc.dto.Employee;

@Repository
public class EmployeeDao {
	
	EntityManagerFactory factory=Persistence.createEntityManagerFactory("m5");
	EntityManager manager=factory.createEntityManager();
	EntityTransaction transaction=manager.getTransaction();

	public void save(Employee employee) {
		transaction.begin();
		manager.persist(employee);
		transaction.commit();
	}

	@SuppressWarnings("unchecked")
	public List<Employee> fetchAll() {
		return manager.createNativeQuery("select * from employee",Employee.class).getResultList();
	}

	public Employee find(int id) {
		return manager.find(Employee.class, id);
	}

	public void delete(Employee employee) {
		transaction.begin();
		manager.remove(employee);
		transaction.commit();
	}

	public void update(Employee employee) {
		transaction.begin();
		manager.merge(employee);
		transaction.commit();
	}
	
	public Employee search(int id) {
	    try {
	        return (Employee) manager
	                .createQuery("SELECT e FROM Employee e WHERE e.id = :id", Employee.class)
	                .setParameter("id", id)
	                .getSingleResult();
	    } catch (NoResultException e) {
	        return null; 
	    }
	}

}
