package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import bean.Department;
import bean.Professor;
import bean.UserCredentials;
import bean.UserDetails;
import util.DbUtil;

public class HomeDAO {
	
	private Connection con = DbUtil.getConnection();
	
	public HomeDAO() {
		// TODO Auto-generated constructor stub
	}

	public UserDetails getUserDetails(UserCredentials user) throws SQLException {
		
		UserDetails user_details = new UserDetails();
		
		String cmd = "select * from userdetails where email=? and rollnumber=?";
		PreparedStatement ps = con.prepareStatement(cmd);
		ps.setString(1, user.getEmail());
		ps.setString(2, user.getRollnumber());
		ResultSet rs = ps.executeQuery();
		int i=1;
		while(rs.next()) {
			user_details.setRollnumber(rs.getString(i++));
			user_details.setEmail(rs.getString(i++));
			user_details.setFname(rs.getString(i++));
			user_details.setLname(rs.getString(i++));
			user_details.setPhone(rs.getString(i++));
			user_details.setDob(rs.getDate(i++));
			user_details.setGender(rs.getString(i++));
			user_details.setDepartment(rs.getString(i++));
			user_details.setImage(rs.getString(i++));
		}
		
		return user_details;
	}

	public ArrayList<Department> getDepartments() throws SQLException {
		ArrayList<Department> departments = new ArrayList<Department>();
		
		String cmd = "select * from departments";
		PreparedStatement ps = con.prepareStatement(cmd);
		ResultSet rs = ps.executeQuery();
		
		while(rs.next()) {
			int i = 1;
			Department temp = new Department();
			temp.setDepartment_id(rs.getString(i++));
			temp.setDepartment_name(rs.getString(i++));
			temp.setPhone(rs.getString(i++));
			temp.setEmail(rs.getString(i++));
			temp.setStudents(rs.getInt(i++));
			departments.add(temp);
		}
		
		return departments;
	}

	public ArrayList<UserCredentials> getUsers(String usertype) throws SQLException {
		ArrayList<UserCredentials> users = new ArrayList<UserCredentials>();
		String cmd;
		if(usertype.equals("all"))
			cmd = "select * from usercredentials";
		else
			cmd = "select * from usercredentials where usertype='"+usertype+"'";
		
		PreparedStatement ps = con.prepareStatement(cmd);
		ResultSet rs = ps.executeQuery();
		
		while(rs.next()) {
			int i = 1;
			UserCredentials temp = new UserCredentials();
			temp.setRollnumber(rs.getString(i++));
			temp.setPassword(rs.getString(i++));
			temp.setUsertype(rs.getString(i++));
			temp.setEmail(rs.getString(i++));
			users.add(temp);
		}
		
		return users;
	}

	public Professor getProfessor(UserCredentials prof) throws SQLException {
		Professor professor = new Professor();
		String cmd = "select * from professor where email=? and id=?";
		PreparedStatement ps = con.prepareStatement(cmd);
		ps.setString(1, prof.getEmail());
		ps.setString(2, prof.getRollnumber());
		ResultSet rs = ps.executeQuery();
		int i=1;
		while(rs.next()) {
			professor.setEmail(rs.getString(i++));
			professor.setId(rs.getString(i++));
			professor.setPosition(rs.getString(i++));
			professor.setFname(rs.getString(i++));
			professor.setLname(rs.getString(i++));
			professor.setPhone(rs.getString(i++));
			professor.setDob(rs.getDate(i++));
			professor.setGender(rs.getString(i++));
			professor.setDepartment(rs.getString(i++));
			professor.setImage(rs.getString(i++));
		}
		return professor;
	}

}
