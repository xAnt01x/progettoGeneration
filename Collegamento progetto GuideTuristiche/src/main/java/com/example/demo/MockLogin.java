package com.example.demo;

public class MockLogin implements ILogin {

	private String name="";
	private boolean logged=false;

	@Override
	public void login(String username,String password) {
		if(username.equals("Mario") && password.equals("MRRSS01")) {
			name=username;
			logged=true;
		}
		if(username.equals("Sara") && password.equals("SRBNC02")) {
			name=username;
			logged=true;
		}
	}

	@Override
	public void logout() {
		name="";
		logged=false;
	}

	@Override
	public boolean logged() {
		return logged;
	}
	@Override
	public int loggedId() {
	// TODO Auto-generated method stub
		return 0;
}
	@Override
	public String name() {
		return name;
	}
}
