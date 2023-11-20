package com.example.demo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;
@RestController
public class RecensioneController {


		@Autowired
		private RecensioneRepository repository;


		@GetMapping("/recensioni")
		public List<Recensione> getAll() {
			return repository.findAll();
		}
		@PostMapping("/recensioni")
		public int load(@RequestBody Recensione recensione) {
			Recensione newRecensione = repository.save(recensione);
			return newRecensione.getId();
		}

}
