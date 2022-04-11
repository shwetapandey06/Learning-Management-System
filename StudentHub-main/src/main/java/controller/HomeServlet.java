package controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.Department;
import bean.Professor;
import bean.UserCredentials;
import bean.UserDetails;
import service.HomeService;

/**
 * Servlet implementation class HomeServlet
 */
@WebServlet("/HomeServlet")
public class HomeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public HomeServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String action = request.getParameter("action");
		HttpSession sn = request.getSession(false); 
		UserCredentials obj = (UserCredentials) sn.getAttribute("user");
		
		if(obj.getUsertype().equals("admin")) {
			request.setAttribute("action", action);
			RequestDispatcher rd = request.getRequestDispatcher("AdminServlet");
			rd.forward(request, response);
		}
		else if(obj.getUsertype().equals("professor")) {

			request.setAttribute("action", action);
			RequestDispatcher rd = request.getRequestDispatcher("ProfessorServlet");
			rd.forward(request, response);
		}
		else {
			
			if(action.equals("profile")) {
				UserCredentials user = (UserCredentials) sn.getAttribute("user");				
				RequestDispatcher rd = request.getRequestDispatcher("students-profile.jsp");
				rd.forward(request, response);
			}
			else if(action.equals("departments")) {
		//			UserCredentials user = (UserCredentials) sn.getAttribute("user");
				HomeService hs = new HomeService();
		//			UserDetails user_details = (UserDetails) sn.getAttribute("user_det");
				ArrayList<Department> departments = new ArrayList<Department>();
				
				try {
					departments = hs.getDepartments();
				} catch (SQLException e) {
					e.printStackTrace();
				}
				
				request.setAttribute("departments", departments);
				RequestDispatcher rd = request.getRequestDispatcher("departments.jsp");
				rd.forward(request, response);
			}
			
			else if(action.equals("students")) {
				HomeService hs = new HomeService();
				ArrayList<UserCredentials> students = new ArrayList<UserCredentials>();
				try {
					students = hs.getStudents();
				} catch (SQLException e) {
					e.printStackTrace();
				}
				ArrayList<UserDetails> students_details = new ArrayList<UserDetails>();
				for(UserCredentials student : students) {
					try {
						students_details.add(hs.getUserDetails(student));
					} catch (SQLException e) {
						e.printStackTrace();
					}
				}
				request.setAttribute("students", students_details);
				RequestDispatcher rd = request.getRequestDispatcher("students.jsp");
				rd.forward(request, response);
			}
			
			else if(action.equals("professors")) {
				HomeService hs = new HomeService();
				ArrayList<UserCredentials> professors = new ArrayList<UserCredentials>();
				try {
					professors = hs.getProfessors();
				} catch (SQLException e) {
					e.printStackTrace();
				}
				ArrayList<Professor> professors_details = new ArrayList<Professor>();
				for(UserCredentials professor : professors) {
					try {
						professors_details.add(hs.getProfessor(professor));
					} catch (SQLException e) {
						e.printStackTrace();
					}
				}
				request.setAttribute("professors", professors_details);
				RequestDispatcher rd = request.getRequestDispatcher("professors.jsp");
				rd.forward(request, response);
			}
			
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
