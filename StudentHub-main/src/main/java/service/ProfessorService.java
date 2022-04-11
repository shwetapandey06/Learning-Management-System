package service;

import java.sql.SQLException;

import DAO.ProfessorDAO;
import bean.Professor;

public class ProfessorService {
	ProfessorDAO pd = new ProfessorDAO();

	public Professor getProfessor(String professor) throws SQLException {
		Professor prof = pd.getProfessor(professor);
		return prof;
	}
}
