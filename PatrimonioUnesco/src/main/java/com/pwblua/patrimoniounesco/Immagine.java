package com.pwblua.patrimoniounesco;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.ManyToOne;

@Entity
public class Immagine {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	private String link;
	@ManyToOne
	private Patrimonio patrimonio;

	public Immagine() {
		// TODO Auto-generated constructor stub
	}

	public Immagine(int id, String link, Patrimonio patrimonio) {
		super();
		this.id = id;
		this.link = link;
		this.patrimonio = patrimonio;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getLink() {
		return link;
	}

	public void setLink(String link) {
		this.link = link;
	}

	public Patrimonio getPatrimonio() {
		return patrimonio;
	}

	public void setPatrimonio(Patrimonio patrimonio) {
		this.patrimonio = patrimonio;
	}

}
