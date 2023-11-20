package com.pwblua.patrimoniounesco;

import java.util.List;

import org.springframework.data.repository.ListCrudRepository;

public interface PatrimonioServizioRepository extends ListCrudRepository<PatrimonioServizio, Integer> {

	List<PatrimonioServizio> findByPatrimonio(Patrimonio patrimonio);
}
