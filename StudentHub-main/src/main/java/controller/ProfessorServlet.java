package controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Date;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import bean.Exam;
import bean.Professor;
import bean.UserCredentials;
import service.HomeService;

/**
 * Servlet implementation class ProfessorServlet
 */
@WebServlet("/ProfessorServlet")
@MultipartConfig
public class ProfessorServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ProfessorServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action = request.getParameter("action");
		HomeService hs = new HomeService();
		HttpSession sn = request.getSession(false);
		Professor professor = null;
		try {
			professor = hs.getProfessor((UserCredentials) sn.getAttribute("user"));
			sn.setAttribute("user_det", professor);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		if(action.equals("profile")) {
			RequestDispatcher rd = request.getRequestDispatcher("professor-template.jsp");
			rd.forward(request, response);
		}
		else if(action.equals("professors")) {
			request.setAttribute("action", action);
			RequestDispatcher rd = request.getRequestDispatcher("HomeServlet");
			rd.forward(request, response);
		}
		else if(action.equals("add-exam")) {
			int id = Integer.parseInt(request.getParameter("exam_id"));
			String name = request.getParameter("name");
			Date date = null;
			try {
				date = new SimpleDateFormat("yyyy-MM-dd").parse(request.getParameter("date"));
			} catch (ParseException e) {
				e.printStackTrace();
			}
			String description = request.getParameter("description");
			
			Part filePart = request.getPart("img");
			String fileName = filePart.getSubmittedFileName();
			OutputStream out = null;
		    InputStream filecontent = null;
		    try {
		        out = new FileOutputStream(new File("D:\\Java\\eclipse-workspace\\StudentHub\\src\\main\\webapp\\assets\\images\\exams\\"+fileName));
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
		    
		    String[] list = request.getParameterValues("eligible");
		    List<String> eligible = Arrays.asList(list);
		    boolean bba = eligible.indexOf("bba")==-1?false:true;
		    boolean mba = eligible.indexOf("mba")==-1?false:true;
		    boolean bca = eligible.indexOf("bca")==-1?false:true;
		    boolean mca = eligible.indexOf("mca")==-1?false:true;
		    boolean pgdm = eligible.indexOf("pgdm")==-1?false:true;
		    
		    Exam exam = new Exam(id, name, date, fileName, professor.getId(), description, bba, mba, bca, mca, pgdm);
		    
		    request.setAttribute("exam", exam);
		    request.setAttribute("action", action);
		    RequestDispatcher rd = request.getRequestDispatcher("ExamServlet");
			rd.forward(request, response);
			
		}
		else if(action.equals("exams")) {
			request.setAttribute("action", action);
		    RequestDispatcher rd = request.getRequestDispatcher("ExamServlet");
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
