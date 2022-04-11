package bean;

public class Department {
	private String department_id;
	private String department_name;
	private String phone;
	private String email;
	private int students;
	
	public Department() {
		// TODO Auto-generated constructor stub
	}

	public Department(String department_id, String department_name, String phone, String email, int students) {
		super();
		this.department_id = department_id;
		this.department_name = department_name;
		this.phone = phone;
		this.email = email;
		this.students = students;
	}

	public String getDepartment_id() {
		return department_id;
	}

	public void setDepartment_id(String department_id) {
		this.department_id = department_id;
	}

	public String getDepartment_name() {
		return department_name;
	}

	public void setDepartment_name(String department_name) {
		this.department_name = department_name;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public int getStudents() {
		return students;
	}

	public void setStudents(int students) {
		this.students = students;
	}

	@Override
	public String toString() {
		return "Departments [department_id=" + department_id + ", department_name=" + department_name + ", phone="
				+ phone + ", email=" + email + ", students=" + students + "]";
	}
	
	
}
