package com.example.demo;
import com.example.demo.user.UserT;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.ManyToOne;


@Entity
public class GuidaRecensione {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	private String guidaRecensione;
	@ManyToOne
	private Guida guida;
	@ManyToOne
	private UserT user;

	public GuidaRecensione() {
		// TODO Auto-generated constructor stub
	}

	public GuidaRecensione(int id, String guidaRecensione, Guida guida, UserT user) {
		super();
		this.id = id;
		this.guidaRecensione = guidaRecensione;
		this.guida = guida;
		this.user = user;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getGuidaRecensione() {
		return guidaRecensione;
	}

	public void setGuidaRecensione(String guidaRecensione) {
		this.guidaRecensione = guidaRecensione;
	}

	public Guida getGuida() {
		return guida;
	}

	public void setGuida(Guida guida) {
		this.guida = guida;
	}

	public UserT getUser() {
		return user;
	}

	public void setUser(UserT user) {
		this.user = user;
	}



}
