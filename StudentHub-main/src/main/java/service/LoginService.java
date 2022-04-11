package service;

import java.sql.SQLException;

import DAO.LoginDAO;
import bean.UserCredentials;
import bean.UserDetails;

public class LoginService {
	
	private LoginDAO ld = new LoginDAO();
	
	public LoginService() {
		super();
	}

	public boolean login(UserCredentials user) {
		if(ld.login(user))
			return true;
		return false;
	}

	public boolean isUser(UserCredentials user) {
		if(ld.isUser(user))
			return true;
		return false;
	}

	public boolean register(UserCredentials user) {
		if(ld.register(user))
			return true;
		return false;
	}

	public boolean addUserDetails(UserDetails userdet) {
		if(ld.addUserDetails(userdet))
			return true;
		return false;
	}

	public UserCredentials getUserCredentials(String userid) throws SQLException {
		UserCredentials user = ld.getUserCredentials(userid);
		return user;
	}
}
