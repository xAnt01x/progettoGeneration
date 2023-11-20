package com.pwblua.patrimoniounesco;

import java.util.List;
import java.util.Objects;
import java.util.Optional;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

@RestController
@CrossOrigin
public class RegionController {

	@Autowired
	private RegionRepository repository;

	@PostMapping("/regions")
	public int load(@RequestBody Region region) {
		Region newRegion = repository.save(region);
		return newRegion.getId();
	}

	@GetMapping("/regions")
	public List<Region> getAll() {
		return repository.findAll();
	}

	@GetMapping("/regions/{label}")
	public Region getRegion(@PathVariable("label") int id) {
		Optional<Region> opt = repository.findById(id);
		if (opt.isPresent()) {
			Region region = opt.get();
			return region;
		} else {
			return null;
		}
	}

	@GetMapping("/region/names")
	public Set<RegionRepository.Named> getNames() {
		return repository.findAllByIdNotNull();
	}

	@GetMapping("/region/namesstring")
	public Set<String> getNames2() {
		return repository.names();
	}

	@PutMapping("/region/{id}")
	public int update(@RequestBody Region region, @PathVariable("id") int id) {
		Region r = repository.findById(id).get();

		if (Objects.nonNull(region.getName()) && !"".equalsIgnoreCase(region.getName())) {
			r.setName(region.getName());
		}

		if (Objects.nonNull(region.getDescription()) && !"".equalsIgnoreCase(region.getDescription())) {
			r.setDescription(region.getDescription());
		}

		Region newR = repository.save(r);

		return newR.getId();
	}
}
