package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.Exam;
import bean.Professor;
import service.ExamService;
import service.HomeService;
import service.ProfessorService;

/**
 * Servlet implementation class Exam
 */
@WebServlet("/ExamServlet")
public class ExamServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ExamServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action = (String) request.getAttribute("action");
		if(action == null) {
			action = request.getParameter("action");
		}
		ExamService es = new ExamService();
		
		if(action.equals("add-exam")) {
			Exam exam = (Exam) request.getAttribute("exam");
			if(es.addExam(exam)) {
				String filename = exam.getExam_id() + "-"+ ".csv";
				try (PrintWriter writer = new PrintWriter("D:\\Java\\eclipse-workspace\\StudentHub\\src\\main\\exam\\exam\\"+filename)) {
					StringBuilder sb = new StringBuilder();
				    sb.append("Rollnumber");
				    sb.append(',');
				    sb.append("Name");
				    sb.append(',');
				    sb.append("Email");
				    sb.append(',');
				    sb.append("Phone");
				    sb.append(',');
				    sb.append("Department");
				    sb.append(',');
				    sb.append('\n');
				    writer.write(sb.toString());
				} catch (Exception e) {
				    e.printStackTrace();
				}
				request.setAttribute("message", "Exam added successfully, ADD more to continue");
				RequestDispatcher rd = request.getRequestDispatcher("add-exam.jsp");
				rd.forward(request, response);
			}
			else {
				request.setAttribute("message", "Exam cannot be added");
				RequestDispatcher rd = request.getRequestDispatcher("add-exam.jsp");
				rd.forward(request, response);
			}
		}
		else if(action.equals("exams")) {
			ArrayList<Exam> exams = new ArrayList<Exam>();
			try {
				exams = es.allExams();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			request.setAttribute("exams", exams);
			RequestDispatcher rd = request.getRequestDispatcher("professors-all-exams.jsp");
			rd.forward(request, response);
		}
		else if(action.equals("view")) {
			String exam_id = request.getParameter("id");
			ProfessorService ps = new ProfessorService();
			try {
				Exam exam = es.getExam(exam_id);
				Professor prof = ps.getProfessor(exam.getProfessor());
				request.setAttribute("exam", exam);
				request.setAttribute("prof", prof);				
			} catch (SQLException e) {
				e.printStackTrace();
			}
			RequestDispatcher rd = request.getRequestDispatcher("professor-view-exam.jsp");
			rd.forward(request, response);
			
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
