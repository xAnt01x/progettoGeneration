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

import com.example.demo.user.UserRepository;
import com.example.demo.user.UserT;

@RestController
public class GuidaRecensioneController {

	@Autowired
	private GuidaRecensioneRepository repository;

	@Autowired
	private GuidaRepository guidaRepository;

	@Autowired
	private UserRepository userRepository;

	@PostMapping("/recensioni/guida")
	public int createGuidaRecensione(@RequestBody GuidaRecensioneDTO guidaRecensioneDTO) {
		GuidaRecensione guidaRecensione = new GuidaRecensione();
		Optional<UserT> user = userRepository.findById(guidaRecensioneDTO.getUserId());
		Optional<Guida> guida = guidaRepository.findById(guidaRecensioneDTO.getGuidaId());
		if( user.isPresent() && guida.isPresent()) {
			guidaRecensione.setUser(user.get());
			guidaRecensione.setGuida(guida.get());
		} else {
			return -1;
		}
		guidaRecensione.setGuidaRecensione(guidaRecensioneDTO.getGuidaRecensione())  ;
		repository.save(guidaRecensione);
		return guidaRecensione.getId();
	}

	@GetMapping("/recensione")
	public List<GuidaRecensione> getAll() {
		return repository.findAll();
	}
	@GetMapping("/recensione/guida/{id}")
	public GuidaRecensione getGuidaRecensione(@PathVariable("id") int id) {
		Optional<GuidaRecensione> opt = repository.findById(id);
		if (opt.isPresent()) {
			GuidaRecensione guidaRecensione= opt.get();
			return guidaRecensione;
		} else {
			return new GuidaRecensione(-1, null, null,null);
		}
	}
	@PostMapping("/recensione/guida/{id}")
	public int updateGuidaRecensione(@PathVariable("id")int id, @RequestBody GuidaRecensioneDTO guidaRecensioneDTO) {
		Optional<GuidaRecensione> guidaRecensione= repository.findById(id);
		Optional<UserT> user = userRepository.findById(guidaRecensioneDTO.getUserId());
		Optional<Guida> guida = guidaRepository.findById(guidaRecensioneDTO.getGuidaId());
		if (guidaRecensione.isPresent() && user.isPresent() && guida.isPresent()) {
			GuidaRecensione newGuidaRecensione = guidaRecensione.get();
			UserT newUser = user.get();
			Guida newGuida = guida.get();
			newGuidaRecensione.setUser(newUser);
			newGuidaRecensione.setGuida(guida.get());
			newGuidaRecensione.setGuidaRecensione(guidaRecensioneDTO.getGuidaRecensione());
			repository.save(newGuidaRecensione);
		} else {
			return -1;
		}
		return 1;
	}
	@DeleteMapping("/recensione/guida/{id}")
	public void removeGuidaRecensioneById(@PathVariable("id")int id) {
		repository.deleteById(id);
	}
}
