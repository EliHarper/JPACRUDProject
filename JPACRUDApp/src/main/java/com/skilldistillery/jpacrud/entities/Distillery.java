package com.skilldistillery.jpacrud.entities;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
public class Distillery {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;
	private String name;
	private String type;
	private double latitude;
	private double longitude;
	
	//End of fields
	
	public Distillery() {
	}
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public Distillery(int id, String name, String type, double latitude, double longitude) {
		super();
		this.id = id;
		this.name = name;
		this.type = type;
		this.latitude = latitude;
		this.longitude = longitude;
	}

	public Distillery(String name, String type, Double latitude, Double longitude) {
		this.name = name;
		this.type = type;
		this.latitude = latitude;
		this.longitude = longitude;
	}

	public double getLatitude() {
		return latitude;
	}
	public void setLatitude(double latitude) {
		this.latitude = latitude;
	}
	public double getLongitude() {
		return longitude;
	}
	public void setLongitude(double longitude) {
		this.longitude = longitude;
	}
	public int getId() {
		return id;
	}

	@Override
	public String toString() {
		return "Distillery [id=" + id + ", name=" + name + ", type=" + type + ", latitude=" + latitude + ", longitude="
				+ longitude + "]";
	}
	
}