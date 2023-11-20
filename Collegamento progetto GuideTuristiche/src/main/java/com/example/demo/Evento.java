package com.example.demo;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

@Entity
public class Evento {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	int id;
	String day;
	String month;
	String luogo;
	String guidedis;
	String orario;
	public Evento() {
		
	}
	public Evento(int id, String day,String month, String luogo, String guidedis, String orario) {
		this.id = id;
		this.day = day;
		this.month = month;
		this.luogo = luogo;
		this.guidedis = guidedis;
		this.orario = orario;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getDay() {
		return day;
	}
	public void setDay(String day) {
		this.day = day;
	}
	public String getMonth() {
		return month;
	}
	public void setMonth(String month) {
		this.month = month;
	}
	public String getLuogo() {
		return luogo;
	}
	public void setLuogo(String luogo) {
		this.luogo = luogo;
	}
	public String getGuidedis() {
		return guidedis;
	}
	public void setGuidedis(String guidedis) {
		this.guidedis = guidedis;
	}
	public String getOrario() {
		return orario;
	}
	public void setOrario(String orario) {
		this.orario = orario;
	}
	
}
