package com.example.demo;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

@Entity
public class Recensione {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	private String titolo;
	private String review;
	private String rating;
	public Recensione() {

	}
	public Recensione(int id, String titolo, String review, String rating) {
		super();
		this.id = id;
		this.titolo = titolo;
		this.review = review;
		this.rating = rating;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTitolo() {
		return titolo;
	}
	public void setTitolo(String titolo) {
		this.titolo = titolo;
	}
	public String getReview() {
		return review;
	}
	public void setReview(String review) {
		this.review = review;
	}
	public String getRating() {
		return rating;
	}
	public void setRating(String rating) {
		this.rating = rating;
	}

	}
