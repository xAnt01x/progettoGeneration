package com.example.demo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

@RestController
@CrossOrigin
public class LoginController { //Proxy

	@Autowired
	private ILogin logger;

	@PostMapping("/login")
	public boolean login(@RequestBody LoginDTO dto) {
		this.logger.login(dto.getUsername(),
				dto.getPassword());
		return this.logger.logged();
	}

	@GetMapping("/logged")
	public boolean logged() {
		return this.logger.logged();
	}
	@GetMapping("/loggedId")
	public int loggedId() {
		return this.logger.loggedId();
	}

	@GetMapping("/logout")
	public void logout() {
		this.logger.logout();
	}

	@GetMapping("/loggedname")
	public String loggedname() {
		return this.logger.name();
	}
}
