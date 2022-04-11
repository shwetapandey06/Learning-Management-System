package service;

import java.sql.SQLException;
import java.util.ArrayList;

import DAO.HomeDAO;
import bean.Department;
import bean.Professor;
import bean.UserCredentials;
import bean.UserDetails;

public class HomeService {
	private HomeDAO hd = new HomeDAO();
	
	public HomeService() {
		// TODO Auto-generated constructor stub
	}

	public UserDetails getUserDetails(UserCredentials user) throws SQLException {
		UserDetails user_details = null;
		user_details = hd.getUserDetails(user);
		return user_details;
	}
	
	public Professor getProfessor(UserCredentials user) throws SQLException {
		Professor professor = null;
		professor = hd.getProfessor(user);
		return professor;
	}

	public ArrayList<Department> getDepartments() throws SQLException {
		ArrayList<Department> departments = hd.getDepartments();
		return departments;
	}

	public ArrayList<UserCredentials> getStudents() throws SQLException {
		ArrayList<UserCredentials> students = hd.getUsers("student");
		return students;
	}

	public ArrayList<UserCredentials> getProfessors() throws SQLException {
		ArrayList<UserCredentials> professors = hd.getUsers("professor");
		return professors;
	}

}
