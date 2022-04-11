package controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.Date;
import java.util.List;
import java.text.ParseException;
import java.text.SimpleDateFormat;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import org.apache.tomcat.util.http.fileupload.FileItemFactory;
import org.apache.tomcat.util.http.fileupload.FileUploadException;
import org.apache.tomcat.util.http.fileupload.disk.DiskFileItemFactory;
import org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload;

import bean.UserCredentials;
import bean.UserDetails;
import service.HomeService;
import service.LoginService;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
@MultipartConfig
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		HttpSession sn = request.getSession(false);
		String action = request.getParameter("action");
		LoginService ls = new LoginService();
		UserCredentials user = null;
		if(action.equals("login")) {
			sn = request.getSession(true);
			String userid = request.getParameter("userid");
			String password = request.getParameter("password");
			try {
				user = ls.getUserCredentials(userid);
			} catch (SQLException e) {
				e.printStackTrace();
			}
			
			if(ls.login(user)) {
				sn.setAttribute("user", user);
				if(user.getUsertype() != "professor") {
					HomeService hs = new HomeService();
					UserDetails user_details = null;
					try {
						user_details = hs.getUserDetails(user);
					} catch (SQLException e) {
						e.printStackTrace();
					}
					sn.setAttribute("user_det", user_details);
				}
				RequestDispatcher rd = request.getRequestDispatcher("HomeServlet?action=profile");
				rd.forward(request, response);
			}
			else {
				request.setAttribute("message", "Check Your Credentials");
				RequestDispatcher rd = request.getRequestDispatcher("sign-in.jsp");
				rd.forward(request, response);
			}
				
			
		}
		
		else if(action.equals("register")) {
			String rollnumber = request.getParameter("rollno");
			String email = request.getParameter("email");
			String password = request.getParameter("password");
			
			user = new UserCredentials(rollnumber, email, password, "student");
			if(ls.isUser(user)) {
				request.setAttribute("message", "Error : User already exist");
				request.setAttribute("user", "userid");
				RequestDispatcher rd = request.getRequestDispatcher("sign-up.jsp");
				rd.forward(request, response);
			}
			else {
				if(ls.register(user)) {
					request.setAttribute("message", "User added Successfully Please add details");
					request.setAttribute("email", user.getEmail());
					request.setAttribute("rollnumber", user.getRollnumber());
					RequestDispatcher rd = request.getRequestDispatcher("add-details.jsp");
					rd.forward(request, response);
				}
				else
					response.getWriter().append("Not Successful");
			}
		}
		
		else if(action.equals("details")) {
			
			String rollnumber = request.getParameter("rollnumber");
			String email = request.getParameter("email");
			String fname = request.getParameter("fname");
			String lname = request.getParameter("lname");
			String phone = request.getParameter("phone");
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
		        out = new FileOutputStream(new File("D:\\Java\\eclipse-workspace\\StudentHub\\src\\main\\webapp\\assets\\images\\student\\"+fileName));
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
		    
		    
		    
//			String path = "D:\\Java\\eclipse-workspace\\StudentHub\\src\\main\\webapp\\assets\\images\\student\\"+fileName;
//			for (Part part : request.getParts()) {
//				part.write(path);
//			}
			
			UserDetails userdet = new UserDetails(rollnumber, email, fname, lname, phone, dob, gender, department, fileName);
			if(ls.addUserDetails(userdet)) {
				request.setAttribute("message", "Details added successfully, Login to continue");
				RequestDispatcher rd = request.getRequestDispatcher("sign-in.jsp");
				rd.forward(request, response);
			}
			else {
				request.setAttribute("message", "cannot added details");
				request.setAttribute("email", userdet.getEmail());
				request.setAttribute("rollnumber", userdet.getRollnumber());
				RequestDispatcher rd = request.getRequestDispatcher("add-details.jsp");
				rd.forward(request, response);
			}
		}
		else if(action.equals("logout")) {
			try {
				sn.invalidate();
			}catch (Exception e) {
				e.printStackTrace();
			}
			request.setAttribute("message", "Logout Successful !!");
			RequestDispatcher rd = request.getRequestDispatcher("sign-in.jsp");
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
