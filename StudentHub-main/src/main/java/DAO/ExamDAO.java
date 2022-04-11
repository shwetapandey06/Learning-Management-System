package DAO;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import bean.Exam;
import util.DbUtil;

public class ExamDAO {
	private Connection con = DbUtil.getConnection();
	public ExamDAO() {
		// TODO Auto-generated constructor stub
	}
	public boolean addExam(Exam exam) {
		try {
			String cmd = "insert into exam values(?,?,?,?,?,?,?,?,?,?,?)";
			PreparedStatement ps = con.prepareStatement(cmd);
			int i = 1;
			
			ps.setInt(i++, exam.getExam_id());
			ps.setString(i++, exam.getName());
			Date d = new Date(exam.getDate().getTime());
			ps.setDate(i++, d);
			ps.setString(i++, exam.getImage());
			ps.setString(i++, exam.getProfessor());
			ps.setString(i++, exam.getDescription());
			ps.setBoolean(i++, exam.isBba());
			ps.setBoolean(i++, exam.isMba());
			ps.setBoolean(i++, exam.isBca());
			ps.setBoolean(i++, exam.isMca());
			ps.setBoolean(i++, exam.isPgdm());
			
			int n = ps.executeUpdate();
			
			if(n>=1)
				return true;
			return false;
		}catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}
	public ArrayList<Exam> allExams() throws SQLException {
		ArrayList<Exam> exams = new ArrayList<Exam>();
		Exam temp = null;;
		
		String cmd = "select * from exam";
		PreparedStatement ps = con.prepareStatement(cmd);
		
		ResultSet rs = ps.executeQuery();
		while(rs.next()) {
			temp = new Exam();
			int i = 0;
			temp.setExam_id(rs.getInt(++i));
			temp.setName(rs.getString(++i));
			temp.setDate(rs.getDate(++i));
			temp.setImage(rs.getString(++i));
			temp.setProfessor(rs.getString(++i));
			temp.setDescription(rs.getString(++i));
			temp.setBba(rs.getBoolean(++i));
			temp.setMba(rs.getBoolean(++i));
			temp.setBca(rs.getBoolean(++i));
			temp.setMca(rs.getBoolean(++i));
			temp.setPgdm(rs.getBoolean(++i));
			exams.add(temp);
		}
		System.out.println(exams);
		return exams;
	}
	public Exam getExam(String exam_id) throws SQLException {
		Exam exam = new Exam();;
		String cmd = "select * from exam where exam_id=?";
		PreparedStatement ps = con.prepareStatement(cmd);
		ps.setString(1, exam_id);
		ResultSet rs = ps.executeQuery();
		int i = 0;
		if(rs.next()) {
			exam.setExam_id(rs.getInt(++i));
			exam.setName(rs.getString(++i));
			exam.setDate(rs.getDate(++i));
			exam.setImage(rs.getString(++i));
			exam.setProfessor(rs.getString(++i));
			exam.setDescription(rs.getString(++i));
			exam.setBba(rs.getBoolean(++i));
			exam.setMba(rs.getBoolean(++i));
			exam.setBca(rs.getBoolean(++i));
			exam.setMca(rs.getBoolean(++i));
			exam.setPgdm(rs.getBoolean(++i));
		}
		return exam;
	}
	
}
