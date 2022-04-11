package controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import bean.Department;
import bean.Professor;
import bean.UserCredentials;
import bean.UserDetails;
import service.AdminService;
import service.HomeService;
import service.LoginService;

/**
 * Servlet implementation class AdminServlet
 */
@WebServlet("/AdminServlet")
@MultipartConfig
public class AdminServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action = request.getParameter("action");
		AdminService as = new AdminService();
		
		if(action.equals("profile")) {
			RequestDispatcher rd = request.getRequestDispatcher("admin-dashboard.jsp");
			rd.forward(request, response);
		}
		
		else if(action.equals("add-professor")) {
			String email = request.getParameter("email");
			String id = request.getParameter("id");
			String position = request.getParameter("position");
			String fname = request.getParameter("fname");
			String lname = request.getParameter("lname");
			String phone = request.getParameter("phone");
			String password = request.getParameter("password");
			Date dob = null;
			try {
				dob = new SimpleDateFormat("yyyy-MM-dd").parse(request.getParameter("dob"));
			} catch (ParseException e) {
				e.printStackTrace();
			}
			String gender = request.getParameter("gender");
			String department = request.getParameter("department");
			
			Part filePart = request.getPart("img");
			String fileName = filePart.getSubmittedFileName();
			OutputStream out = null;
		    InputStream filecontent = null;
		    try {
		        out = new FileOutputStream(new File("D:\\Java\\eclipse-workspace\\StudentHub\\src\\main\\webapp\\assets\\images\\professors\\"+fileName));
		        filecontent = filePart.getInputStream();

		        int read = 0;
		        final byte[] bytes = new byte[1024];

		        while ((read = filecontent.read(bytes)) != -1) {
		            out.write(bytes, 0, read);
		        }
		    }catch (Exception e) {
					e.printStackTrace();
			}finally {
		        if (out != null) {
		            out.close();
		        }
		        if (filecontent != null) {
		            filecontent.close();
		        }
		    }
		    LoginService ls = new LoginService();
			Professor professor = new Professor(email, id, position, fname, lname, phone, dob, gender, department, fileName);
			if(ls.register(new UserCredentials(id, email, password, "professor")) && as.addUserDetails(professor)) {
				request.setAttribute("message", "Details added successfully, ADD more to continue");
				RequestDispatcher rd = request.getRequestDispatcher("add-professors-admin.jsp");
				rd.forward(request, response);
			}
			else {
				request.setAttribute("message", "cannot added details");
				RequestDispatcher rd = request.getRequestDispatcher("add-professors-admin.jsp");
				rd.forward(request, response);
			}
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
			RequestDispatcher rd = request.getRequestDispatcher("students-admin.jsp");
			rd.forward(request, response);
		}
		
		else if(action.equals("departments")) {
			HomeService hs = new HomeService();
			ArrayList<Department> departments = new ArrayList<Department>();
			
			try {
				departments = hs.getDepartments();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			
			request.setAttribute("departments", departments);
			RequestDispatcher rd = request.getRequestDispatcher("admin-department.jsp");
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
			RequestDispatcher rd = request.getRequestDispatcher("professors-admin.jsp");
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
