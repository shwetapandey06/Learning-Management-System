package DAO;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import util.DbUtil;
import bean.UserCredentials;
import bean.UserDetails;

public class LoginDAO {
	
	private Connection con = DbUtil.getConnection();
	
	public boolean login(UserCredentials user) {
		try {
			PreparedStatement ps;
			if(user.getEmail() != null) {
				String cmd = "Select * from usercredentials where email=? and password=?";
				ps = con.prepareStatement(cmd);
				ps.setString(1, user.getEmail());
			}
			else {
				String cmd = "Select * from usercredentials where rollnumber=? and password=?";
				ps = con.prepareStatement(cmd);
				ps.setString(1, user.getRollnumber());
			}
			ps.setString(2, user.getPassword());
			ResultSet rs = ps.executeQuery();
			if(rs.next())
				return true;
			return false;
		}catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}
	
	public boolean isUser(UserCredentials user) {
		try {
			String cmd = "Select * from usercredentials where email=? or rollnumber=?";
			PreparedStatement ps = con.prepareStatement(cmd);
			ps.setString(1, user.getEmail());
			ps.setString(2, user.getRollnumber());
			ResultSet rs = ps.executeQuery();
			if(rs.next())
				return true;
			return false;
		}catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}

	public boolean register(UserCredentials user) {
		try {
			
			String cmd = "insert into usercredentials values(?,?,?,?)";
			PreparedStatement ps = con.prepareStatement(cmd);
			ps.setString(1, user.getRollnumber());
			ps.setString(2, user.getPassword());
			ps.setString(3, user.getUsertype());
			ps.setString(4, user.getEmail());
			int n = ps.executeUpdate();
			if(n>= 1)
				return true;
			return false;
		}catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}

	public boolean addUserDetails(UserDetails userdet) {
		try {
			int m = con.prepareStatement("update departments set students=students+1 where department_name='"+userdet.getDepartment()+"'").executeUpdate();
			String cmd = "insert into userdetails values(?,?,?,?,?,?,?,?,?)";
			PreparedStatement ps = con.prepareStatement(cmd);
			int i = 1;
			ps.setString(i++, userdet.getRollnumber());
			ps.setString(i++, userdet.getEmail());
			ps.setString(i++, userdet.getFname());
			ps.setString(i++, userdet.getLname());
			ps.setString(i++, userdet.getPhone());
			Date d = new Date(userdet.getDob().getTime());
			ps.setDate(i++, d);
			ps.setString(i++, userdet.getGender());
			ps.setString(i++, userdet.getDepartment());
			ps.setString(i++, userdet.getImage());
			int n = ps.executeUpdate();
			if(n>= 1)
				return true;
			return false;
		}catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}

	public UserCredentials getUserCredentials(String userid) throws SQLException {
		String cmd;
		UserCredentials user = new UserCredentials();
		if(userid.contains("@")) {
			cmd = "Select * from usercredentials where email=?";
		}
		else {
			cmd = "Select * from usercredentials where rollnumber=?";
		}
		PreparedStatement ps = con.prepareStatement(cmd);
		ps.setString(1, userid);
		ResultSet rs = ps.executeQuery();
		int i=1;
		while(rs.next()) {
			user.setRollnumber(rs.getString(i++));
			user.setPassword(rs.getString(i++));
			user.setUsertype(rs.getString(i++));
			user.setEmail(rs.getString(i++));
		}
		return user;
	}
	
}
