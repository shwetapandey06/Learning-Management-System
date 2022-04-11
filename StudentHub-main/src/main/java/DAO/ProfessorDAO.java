package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import bean.Professor;
import util.DbUtil;

public class ProfessorDAO {
	private Connection con = DbUtil.getConnection();
	public ProfessorDAO() {
		// TODO Auto-generated constructor stub
	}

	public Professor getProfessor(String prof_id) throws SQLException {
		Professor professor = new Professor();
		String cmd = "select * from professor where id=?";
		PreparedStatement ps = con.prepareStatement(cmd);
		ps.setString(1, prof_id);
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
