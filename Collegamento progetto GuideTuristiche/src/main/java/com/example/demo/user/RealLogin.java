package com.example.demo.user;

import java.util.Optional;

import com.example.demo.ILogin;

import jakarta.servlet.http.HttpSession;

public class RealLogin implements ILogin {

	private static final String SESSION_KEY = "LOGGED_USER";

	private UserRepository repository;
	// L'HttpSession è una mappa (chiave->valore) che contiene le informazioni di Sessione
	// Che sono specifiche per ogni utente del servizio
	// Quando l'utente del servizio si logga, mettiamo un oggetto user nella sua sessione
	// per sapere che è loggato. Il serve gestisce una sessione differente per ogni
	// utente che accede al servizio, quindi se più utenti si loggano comunque
	// l'oggetto in sessione per la stessa chiave risulta essere differente.
	private HttpSession session;

	public RealLogin(UserRepository repository, HttpSession session) {
		super();
		this.repository = repository;
		this.session = session;
	}

	@Override
	public boolean logged() {
		//verifico se c'è un oggetto in sessione
		Object value = session.getAttribute(SESSION_KEY);
		return value != null;
	}
	@Override
	public int loggedId() {
		Object value = session.getAttribute(SESSION_KEY);
		if(value==null) {
			return -1;
		}
		return ((UserT)value).getId();
	}
	@Override
	public void login(String username, String password) {
		Optional<UserT> userT = repository.findByUsernameAndPassword(username, password);
		if(userT.isPresent()) {
			this.session.setAttribute(SESSION_KEY, userT.get());
		}else {
			session.removeAttribute(SESSION_KEY);
		}
	}

	@Override
	public void logout() {
		session.removeAttribute(SESSION_KEY);
	}

	@Override
	public String name() {
		Object value = session.getAttribute(SESSION_KEY);
		if (value instanceof UserT) {
			return ((UserT) value).getUsername();
		}
		return "";
	}
}
