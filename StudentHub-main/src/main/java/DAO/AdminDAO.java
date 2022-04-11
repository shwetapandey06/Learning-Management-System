package DAO;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;

import bean.Professor;
import bean.UserCredentials;
import service.LoginService;
import util.DbUtil;

public class AdminDAO {
	private Connection con = DbUtil.getConnection();
	public AdminDAO() {
		// TODO Auto-generated constructor stub
	}
	public boolean addUserDetails(Professor professor) {
		try {
			String cmd = "insert into professor values(?,?,?,?,?,?,?,?,?,?)";
			PreparedStatement ps = con.prepareStatement(cmd);
			int i = 1;
			ps.setString(i++, professor.getEmail());
			ps.setString(i++, professor.getId());
			ps.setString(i++, professor.getPosition());
			ps.setString(i++, professor.getFname());
			ps.setString(i++, professor.getLname());
			ps.setString(i++, professor.getPhone());
			Date d = new Date(professor.getDob().getTime());
			ps.setDate(i++, d);
			ps.setString(i++, professor.getGender());
			ps.setString(i++, professor.getDepartment());
			ps.setString(i++, professor.getImage());
			int n = ps.executeUpdate();
			if(n>= 1)
				return true;
			return false;
		}catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}
	
}
