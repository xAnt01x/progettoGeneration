package com.pwblua.patrimoniounesco;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

@RestController
@CrossOrigin
public class TypeController {

	@Autowired
	TypeRepository repository;
	
	@GetMapping("/types")
	public List<Type> listAll() {
		return repository.findAll();
	}

	@GetMapping("/types/{id}")
	public Type getOne(@PathVariable("id") int id) {
		Optional<Type> opt = repository.findById(id);
		if (opt.isPresent()) {
			Type type = new Type();
			type = opt.get();
			return type;
		} else {
			return new Type(-1, "", "", "", "");
		}
	}
}
