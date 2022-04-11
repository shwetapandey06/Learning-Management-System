package service;

import java.sql.SQLException;
import java.util.ArrayList;

import DAO.ExamDAO;
import bean.Exam;

public class ExamService {
	ExamDAO ed = new ExamDAO();
	public ExamService() {
		// TODO Auto-generated constructor stub
	}

	public boolean addExam(Exam exam) {
		if(ed.addExam(exam))
			return true;
		return false;
	}

	public ArrayList<Exam> allExams() throws SQLException {
		ArrayList<Exam> exams = new ArrayList<Exam>();
		exams = ed.allExams();
		return exams;
	}

	public Exam getExam(String exam_id) throws SQLException {
		Exam exam  = ed.getExam(exam_id);
		return exam;
	}

}
