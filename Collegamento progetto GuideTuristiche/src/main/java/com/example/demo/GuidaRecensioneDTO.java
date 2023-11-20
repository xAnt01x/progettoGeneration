package com.example.demo;

public class GuidaRecensioneDTO {

	private int userId;
	private int guidaId;
	private String guidaRecensione;

	public GuidaRecensioneDTO() {
		// TODO Auto-generated constructor stub
	}

	public GuidaRecensioneDTO(int userId, int guidaId, String guidaRecensione) {
		super();
		this.userId = userId;
		this.guidaId = guidaId;
		this.guidaRecensione = guidaRecensione;
	}

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public int getGuidaId() {
		return guidaId;
	}

	public void setGuidaId(int guidaId) {
		this.guidaId = guidaId;
	}

	public String getGuidaRecensione() {
		return guidaRecensione;
	}

	public void setGuidaRecensione(String guidaRecensione) {
		this.guidaRecensione = guidaRecensione;
	}

}
