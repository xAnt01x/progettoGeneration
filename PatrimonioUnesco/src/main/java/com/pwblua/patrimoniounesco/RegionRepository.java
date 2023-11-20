package com.pwblua.patrimoniounesco;

import java.util.HashSet;
import java.util.Set;

import org.springframework.data.repository.ListCrudRepository;

public interface RegionRepository extends ListCrudRepository<Region, Integer>{

	public interface Named{
		public String getName();
	}

	Set<Named> findAllByIdNotNull();

	default Set<String> names(){
		Set<String> allNames = new HashSet<>();
		for (Named named : findAllByIdNotNull()) {
			allNames.add(named.getName());
		}
		return allNames;
	}
	
}
