package com.example.demo;

import org.springframework.data.repository.ListCrudRepository;





public interface GuidaRepository extends ListCrudRepository< Guida, Integer >{

	//List<Guida> findByRegione(Regione regione);
}
