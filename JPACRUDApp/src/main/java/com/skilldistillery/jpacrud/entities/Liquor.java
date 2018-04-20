package com.skilldistillery.jpacrud.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Liquor {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;
	private int proof;
	@Column(name="tasting_notes")
	private String tastingNotes;
	private String look;
	private String style;
	private String nose;
	private String taste;
	
	//End of fields
	
	public Liquor() {
		
	}
	
	public Liquor(int id, int proof, String tastingNotes, String look, String style, String nose, String taste) {
		super();
		this.id = id;
		this.proof = proof;
		this.tastingNotes = tastingNotes;
		this.look = look;
		this.style = style;
		this.nose = nose;
		this.taste = taste;
	}

	public int getProof() {
		return proof;
	}
	public void setProof(int proof) {
		this.proof = proof;
	}
	public String getTastingNotes() {
		return tastingNotes;
	}
	public void setTastingNotes(String tastingNotes) {
		this.tastingNotes = tastingNotes;
	}
	public String getStyle() {
		return style;
	}
	public void setStyle(String style) {
		this.style = style;
	}
	public String getNose() {
		return nose;
	}
	public void setNose(String nose) {
		this.nose = nose;
	}
	public String getTaste() {
		return taste;
	}
	public void setTaste(String taste) {
		this.taste = taste;
	}
	public int getId() {
		return id;
	}

	public String getLook() {
		return look;
	}

	public void setLook(String look) {
		this.look = look;
	}

	@Override
	public String toString() {
		return "Liquor [id=" + id + ", proof=" + proof + ", tastingNotes=" + tastingNotes + ", look=" + look
				+ ", style=" + style + ", nose=" + nose + ", taste=" + taste + "]";
	}

}
