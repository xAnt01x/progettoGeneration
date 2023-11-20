package com.pwblua.patrimoniounesco;

import java.util.LinkedList;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

@RestController
@CrossOrigin
public class ImmagineController {

	@Autowired
	ImmagineRepository repository;
	
	@Autowired
	PatrimonioController patrimonioController;

	@GetMapping("/images")
	public List<Immagine> listAll() {
		return repository.findAll();
	}

	@GetMapping("/images/{id}")
	public Immagine getOne(@PathVariable("id") int id) {
		Optional<Immagine> opt = repository.findById(id);
		if (opt.isPresent()) {
			Immagine immagine = new Immagine();
			immagine = opt.get();
			return immagine;
		} else {
			return null;
		}
	}
	
	@GetMapping("/imagesByPatrimonio/{id}")
	public List<Immagine> listImagesByPatrimonio(@PathVariable int id) {
		Patrimonio patrimonio = patrimonioController.getOne(id);
		if (patrimonio.getId() == -1) {
			return new LinkedList<>();
		}
		return repository.findTop2ByPatrimonio(patrimonio);
	}
	
	@GetMapping("/imagesByPatrimonio2/{id}")
	public List<Immagine> listImagesByPatrimonio2(@PathVariable int id) {
		Patrimonio patrimonio = patrimonioController.getOne(id);
		if (patrimonio.getId() == -1) {
			return new LinkedList<>();
		}
		return repository.findByPatrimonio(patrimonio);
	}

	@PostMapping("/images")
	public int load(@RequestBody Immagine immagine) {
		Immagine newImmagine = repository.save(immagine);
		return newImmagine.getId();
	}

	@DeleteMapping("/images/{id}")
	public String deleteById(@PathVariable("id") int id) {
		repository.deleteById(id);
		return "Eliminato";
	}

}
