package com.pwblua.patrimoniounesco;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

@RestController
@CrossOrigin
public class ServizioController {

	@Autowired
	ServizioRepository repository;

	@GetMapping("/services")
	List<Servizio> listAll() {
		return repository.findAll();
	}

	@PostMapping("/services")
	public int load(@RequestBody Servizio servizio) {
		Servizio newServizio = repository.save(servizio);
		return newServizio.getId();
	}

}
