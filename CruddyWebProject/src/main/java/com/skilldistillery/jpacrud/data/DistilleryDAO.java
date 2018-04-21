package com.skilldistillery.jpacrud.data;

import java.util.List;

import com.skilldistillery.jpacrud.entities.Distillery;

public interface DistilleryDAO {
	public Distillery create(Distillery d);
	public Distillery retreiveById(int id);
	public Distillery update(int id, Distillery d);
	public boolean destroy(int id);
	public List<Distillery> index();
}
