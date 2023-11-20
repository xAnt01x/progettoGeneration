package com.pwblua.patrimoniounesco;

import java.util.LinkedList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

@RestController
@CrossOrigin
public class PatrimonioServizioController {

	@Autowired
	PatrimonioServizioRepository repository;

	@Autowired
	PatrimonioController patrimonioController;

	@GetMapping("/servizioByPatrimonio/{id}")
	public List<Servizio> listAllServizobyPatrimonio(@PathVariable int id) {
		Patrimonio patrimonio = patrimonioController.getOne(id);
		if (patrimonio.getId() == -1) {
			return new LinkedList<>();
		}
		List<PatrimonioServizio> listaPatrimonioServizio = repository.findByPatrimonio(patrimonio);
		List<Servizio> listaServizio = new LinkedList<>();
		for (PatrimonioServizio p : listaPatrimonioServizio) {
			listaServizio.add(p.getServizio());
		}

		return listaServizio;
	}

	// {"servizio":{"id":1},"patrimonio":{"id":52}}
	@PostMapping("/patrimonioservices")
	public int load(@RequestBody PatrimonioServizio patrimonioServizio) {
		PatrimonioServizio newPatrimonioServizio = repository.save(patrimonioServizio);
		return newPatrimonioServizio.getId();
	}
}
