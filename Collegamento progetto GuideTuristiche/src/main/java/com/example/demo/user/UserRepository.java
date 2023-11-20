package com.example.demo.user;

import java.util.Optional;

import org.springframework.data.repository.ListCrudRepository;


public interface UserRepository extends ListCrudRepository<UserT, Integer>{
	public Optional<UserT> findByUsernameAndPassword(String username,String password);

}
