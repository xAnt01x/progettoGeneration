package com.example.demo;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

@Entity
public class Regione {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	private String nomeRegione;

	public Regione() {

	}

	public Regione(int id, String nomeRegione) {
		super();
		this.id = id;
		this.nomeRegione = nomeRegione;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getNomeRegione() {
		return nomeRegione;
	}

	public void setNomeRegione(String nomeRegione) {
		this.nomeRegione = nomeRegione;
	}
}
