package com.example.demo;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

@Entity
public class Guida {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	private String foto;
	private String nome;
	private String surname;
	private String description;
	private int numberP; //numero di telefono
	private String email;


	public Guida() {
		// TODO Auto-generated constructor stub
	}


	public Guida(int numberP, String description, int id, String nome, String surname, String foto, String email) {
		super();
		this.numberP = numberP;
		this.description = description;
		this.id = id;
		this.nome = nome;
		this.surname = surname;
		this.foto = foto;
		this.email = email;
	}


	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public String getFoto() {
		return foto;
	}


	public void setFoto(String foto) {
		this.foto = foto;
	}


	public String getNome() {
		return nome;
	}


	public void setNome(String nome) {
		this.nome = nome;
	}


	public String getSurname() {
		return surname;
	}


	public void setSurname(String surname) {
		this.surname = surname;
	}


	public String getDescription() {
		return description;
	}


	public void setDescription(String description) {
		this.description = description;
	}


	public int getNumberP() {
		return numberP;
	}


	public void setNumberP(int numberP) {
		this.numberP = numberP;
	}


	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}
	


}
