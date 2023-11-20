package com.pwblua.patrimoniounesco;

import java.util.List;

import org.springframework.data.repository.ListCrudRepository;

public interface PatrimonioRepository extends ListCrudRepository<Patrimonio, Integer> {

	List<Patrimonio> findByRegion(Region region);

	List<Patrimonio> findByType(Type type);
	
	List<Patrimonio> findTop4ByLabel(String label);
	
	List<Patrimonio> findTop4ByRegion(Region region);
	
	


}
