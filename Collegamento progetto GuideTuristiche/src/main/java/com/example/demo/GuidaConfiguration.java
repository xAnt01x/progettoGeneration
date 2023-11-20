package com.example.demo;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import com.example.demo.user.RealLogin;
import com.example.demo.user.UserRepository;

import jakarta.servlet.http.HttpSession;

@Configuration
public class GuidaConfiguration {
	@Bean
	public ILogin getLogin(UserRepository userRepository,HttpSession session) {
		return new RealLogin(userRepository,session);
	}
}
