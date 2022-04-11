package service;

import DAO.AdminDAO;
import bean.Professor;

public class AdminService {
	private AdminDAO ad = new AdminDAO();
	public AdminService() {
		// TODO Auto-generated constructor stub
	}
	public boolean addUserDetails(Professor professor) {
		if(ad.addUserDetails(professor))
			return true;
		return false;
	}
	
}
