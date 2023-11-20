package com.example.demo;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;



@RestController
public class RegioneController {

	@Autowired
	private RegioneRepository repository;

	@GetMapping("/regione")
	public List<Regione> getAll() {
		return repository.findAll();
	}

	@GetMapping("/regioni/{label}")
	public Regione getRegione (@PathVariable("label") int id) {
		Optional<Regione> opt = repository.findById(id);
		if (opt.isPresent()) {
			Regione regione = opt.get();
			return regione;
		} else {
			return new Regione(-1,"");
		}

	}
}
