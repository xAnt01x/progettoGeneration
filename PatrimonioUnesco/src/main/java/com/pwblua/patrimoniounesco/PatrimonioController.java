package com.pwblua.patrimoniounesco;

import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;
import java.util.Objects;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

@RestController
@CrossOrigin
public class PatrimonioController {

	@Autowired
	PatrimonioRepository repository;

	@Autowired
	RegionController regionController;

	@Autowired
	TypeController typeController;

	@GetMapping("/heritages")
	public List<Patrimonio> listAll() {
		return repository.findAll();
	}

	@GetMapping("/patrimonioByRegion/{id}")
	public List<Patrimonio> listAllPatrimonioByRegion(@PathVariable int id) {
		Region region = regionController.getRegion(id);
		if (region.getId() == -1) {
			return new LinkedList<>();
		}
		return repository.findByRegion(region);
	}
	
	@GetMapping("/patrimonioByRegion3/{id}")
	public List<Patrimonio> listAllPatrimoni(@PathVariable int id) {
		Region region = regionController.getRegion(id);
		if (region.getId() == -1) {
			return new LinkedList<>();
		}
		List<Patrimonio> lista = new ArrayList<>();
		lista = repository.findTop4ByRegion(region);
		return lista;
	}

	@GetMapping("/patrimonioByType/{id}")
	public List<Patrimonio> listAllPatrimonioByType(@PathVariable int id) {
		Type type = typeController.getOne(id);
		if (type.getId() == -1) {
			return new LinkedList<>();
		}
		return repository.findByType(type);
	}
	
	@GetMapping("/patrimonioByLabel3/{label}")
	public List<Patrimonio> listAllPatrimonioByLabel3(@PathVariable String label) {
		List<Patrimonio> lista = new ArrayList<>();
		lista = repository.findTop4ByLabel(label);
		return lista;
	}

	@GetMapping("/heritages/{id}")
	public Patrimonio getOne(@PathVariable("id") int id) {
		Optional<Patrimonio> opt = repository.findById(id);
		if (opt.isPresent()) {
			Patrimonio patrimonio = new Patrimonio();
			patrimonio = opt.get();
			return patrimonio;
		} else {
			return null;
		}
	}

	// {"name":"Colosseo","city":"Roma","location":"ciao","history":"ciao","description":"ciao","year":1980,"region":{"id":1}}
	@PostMapping("/heritages")
	public int load(@RequestBody Patrimonio patrimonio) {
		Patrimonio newPatrimonio = repository.save(patrimonio);
		return newPatrimonio.getId();
	}

	@DeleteMapping("/heritages/{id}")
	public String deleteById(@PathVariable("id") int id) {
		repository.deleteById(id);
		return "Eliminato";
	}

	@PutMapping("/heritages/{id}")
	public int update(@RequestBody Patrimonio patrimonio, @PathVariable("id") int id) {
		Patrimonio p = repository.findById(id).get();

		if (Objects.nonNull(patrimonio.getName()) && !"".equalsIgnoreCase(patrimonio.getName())) {
			p.setName(patrimonio.getName());
		}

		if (Objects.nonNull(patrimonio.getCity()) && !"".equalsIgnoreCase(patrimonio.getCity())) {
			p.setCity(patrimonio.getCity());
		}

		if (Objects.nonNull(patrimonio.getHistory()) && !"".equalsIgnoreCase(patrimonio.getHistory())) {
			p.setHistory(patrimonio.getHistory());
		}

		if (Objects.nonNull(patrimonio.getDescription()) && !"".equalsIgnoreCase(patrimonio.getDescription())) {
			p.setDescription(patrimonio.getDescription());
		}

		if (Objects.nonNull(patrimonio.getYear())) {
			p.setYear(patrimonio.getYear());
		}

		if (Objects.nonNull(patrimonio.getRegion())) {
			p.setRegion(patrimonio.getRegion());
		}

		Patrimonio newP = repository.save(p);

		return newP.getId();
	}

}
