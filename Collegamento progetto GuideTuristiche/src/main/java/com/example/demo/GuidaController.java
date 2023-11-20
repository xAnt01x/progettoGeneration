package com.example.demo;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class GuidaController {

	@Autowired
	private GuidaRepository repository;

	@Autowired
	private RegioneController regioneController;

	@GetMapping("/guide")
	public List<Guida> getAll() {
		return repository.findAll();
	}
	@PostMapping("/guide")
	public int load(@RequestBody Guida guida) {
		Guida newGuida = repository.save(guida);
		return newGuida.getId();
	}
	@DeleteMapping("/guide/{id}") 
		public String deleteById(@PathVariable("id") int id) {
			repository.deleteById(id);
			return "Fatto";
		}
	
	
	@GetMapping("/guida/{id}")
	public Guida getWithId(@PathVariable("id")int id) {
		Optional<Guida> opt = repository.findById(id);
		if(opt.isPresent()) {
		Guida guida = opt.get();
		return guida;
		} else {
			return null;
		}
	}
}
