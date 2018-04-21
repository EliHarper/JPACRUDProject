package com.skilldistillery.jpacrud.entityTest;

import static org.junit.jupiter.api.Assertions.assertEquals;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;

import com.skilldistillery.jpacrud.entities.Distillery;

class DistilleryTest {

	private EntityManagerFactory emf;
	private EntityManager em;

	@BeforeEach
	void setUp() throws Exception {
		emf = Persistence.createEntityManagerFactory("CrudApp");
		em = emf.createEntityManager();
	}

	@AfterEach
	void tearDown() throws Exception {
		em.close();
		emf.close();
	}
	
	@Test
	@DisplayName("Test Distillery Entity Mappings")
	void test_address_mappings() {
		Distillery d = em.find(Distillery.class, 1);
		assertEquals(57.427211, d.getLatitude());
	}

}
