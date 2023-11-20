package com.example.demo;

public interface ILogin {

	void login(String username, String password);

	void logout();

	boolean logged();

	String name();
	
	int loggedId();
}

