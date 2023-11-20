package com.pwblua.patrimoniounesco;

import java.util.List;

import org.springframework.data.repository.ListCrudRepository;

public interface ImmagineRepository extends ListCrudRepository<Immagine, Integer> {
	
	List<Immagine> findTop2ByPatrimonio(Patrimonio patrimonio);
	
	List<Immagine> findByPatrimonio(Patrimonio patrimonio);
	
	

}
