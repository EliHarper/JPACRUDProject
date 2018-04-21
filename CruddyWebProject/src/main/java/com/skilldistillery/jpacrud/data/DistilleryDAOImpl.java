package com.skilldistillery.jpacrud.data;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import com.skilldistillery.jpacrud.entities.Distillery;

@Transactional
@Component
public class DistilleryDAOImpl implements DistilleryDAO {
	
	@PersistenceContext
	private EntityManager em;

	@Override
	public Distillery create(Distillery d) {
	    
	    em.persist(d);
	    
	    em.flush();
	    
		return d;
	}

	@Override
	public Distillery update(int id, Distillery d) {
		
		Distillery managed = em.find(Distillery.class, id);
		
		managed.setLatitude(d.getLatitude());
		managed.setLongitude(d.getLongitude());
		managed.setName(d.getName());
		managed.setType(d.getType());
		
		em.persist(managed);
		
		return managed;
	}

	@Override
	public boolean destroy(int id) {
		Distillery managedDistillery = em.find(Distillery.class, id);
		boolean deleted = false;
		
		try {
			em.remove(managedDistillery);
			deleted = true;
		} catch (IllegalArgumentException e) {
			e.printStackTrace();
		}
		
		return deleted;
	}

	@Override
	public Distillery retreiveById(int id) {
		return em.find(Distillery.class, id);
	}

	@Override
	public List<Distillery> index() {
		String query = "select d from Distillery d";
		
		List<Distillery> dIndex = em.createQuery(query, Distillery.class).getResultList();
		
		return dIndex;
	}

}
