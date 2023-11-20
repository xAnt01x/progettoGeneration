package com.example.demo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;
@RestController
public class EventoController {



			@Autowired
			private EventoRepository repository;


			@GetMapping("/eventi")
			public List<Evento> getAll() {
				return repository.findAll();
			}
			@PostMapping("/eventi")
			public int load(@RequestBody Evento evento) {
				Evento newEvento = repository.save(evento);
				return newEvento.getId();
			}

			@DeleteMapping("/eventi/{id}") 
				public String deleteById(@PathVariable("id") int id) {
					repository.deleteById(id);
					return "Fatto";
				}
			

	}
