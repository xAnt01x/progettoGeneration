package com.pwblua.patrimoniounesco;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.ManyToOne;

@Entity
public class PatrimonioServizio {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	@ManyToOne
	private Servizio servizio;
	@ManyToOne
	private Patrimonio patrimonio;

	public PatrimonioServizio() {
		// TODO Auto-generated constructor stub
	}

	public PatrimonioServizio(int id, Servizio servizio, Patrimonio patrimonio) {
		super();
		this.id = id;
		this.servizio = servizio;
		this.patrimonio = patrimonio;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public Servizio getServizio() {
		return servizio;
	}

	public void setServizio(Servizio servizio) {
		this.servizio = servizio;
	}

	public Patrimonio getPatrimonio() {
		return patrimonio;
	}

	public void setPatrimonio(Patrimonio patrimonio) {
		this.patrimonio = patrimonio;
	}

}
