package com.pwblua.patrimoniounesco;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.ManyToOne;

@Entity
public class Patrimonio {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	private String name;
	private String city;
	@Column(length = 2000)
	private String history;
	@Column(length = 2000)
	private String description;
	private int year;
	private String label; // barocco, rinascimento
	@Column(length = 2000)
	private String video;
	@Column(length = 2000)
	private String model3D;
	private String immaginePatrimonio;
	private String immaginePatrimonio2;
	@Column(length = 5000)
	private String map;
	@ManyToOne
	private Type type; // cultulare,naturale
	@ManyToOne
	private Region region;

	public Patrimonio() {
		// TODO Auto-generated constructor stub
	}

	public Patrimonio(int id, String name, String city, String history, String description, int year, String label,
			String video, String model3d, String immaginePatrimonio, String immaginePatrimonio2, String map, Type type,
			Region region) {
		super();
		this.id = id;
		this.name = name;
		this.city = city;
		this.history = history;
		this.description = description;
		this.year = year;
		this.label = label;
		this.video = video;
		model3D = model3d;
		this.immaginePatrimonio = immaginePatrimonio;
		this.immaginePatrimonio2 = immaginePatrimonio2;
		this.map = map;
		this.type = type;
		this.region = region;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getHistory() {
		return history;
	}

	public void setHistory(String history) {
		this.history = history;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public int getYear() {
		return year;
	}

	public void setYear(int year) {
		this.year = year;
	}

	public String getLabel() {
		return label;
	}

	public void setLabel(String label) {
		this.label = label;
	}

	public String getVideo() {
		return video;
	}

	public void setVideo(String video) {
		this.video = video;
	}

	public String getModel3D() {
		return model3D;
	}

	public void setModel3D(String model3d) {
		model3D = model3d;
	}

	public String getImmaginePatrimonio() {
		return immaginePatrimonio;
	}

	public void setImmaginePatrimonio(String immaginePatrimonio) {
		this.immaginePatrimonio = immaginePatrimonio;
	}

	public String getImmaginePatrimonio2() {
		return immaginePatrimonio2;
	}

	public void setImmaginePatrimonio2(String immaginePatrimonio2) {
		this.immaginePatrimonio2 = immaginePatrimonio2;
	}

	public String getMap() {
		return map;
	}

	public void setMap(String map) {
		this.map = map;
	}

	public Type getType() {
		return type;
	}

	public void setType(Type type) {
		this.type = type;
	}

	public Region getRegion() {
		return region;
	}

	public void setRegion(Region region) {
		this.region = region;
	}

}