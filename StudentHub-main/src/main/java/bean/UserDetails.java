package bean;

import java.util.Date;

public class UserDetails {
	
	private String rollnumber;
	private String email;
	private String fname;
	private String lname;
	private String phone;
	private Date dob;
	private String gender;
	private String department;
	private String image;
	
	public UserDetails() {
		super();
		// TODO Auto-generated constructor stub
	}

	public UserDetails(String rollnumber, String email, String fname, String lname, String phone, Date dob,
			String gender, String department, String image) {
		super();
		this.rollnumber = rollnumber;
		this.email = email;
		this.fname = fname;
		this.lname = lname;
		this.phone = phone;
		this.dob = dob;
		this.gender = gender;
		this.department = department;
		this.image = image;
	}

	public String getRollnumber() {
		return rollnumber;
	}

	public void setRollnumber(String rollnumber) {
		this.rollnumber = rollnumber;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getFname() {
		return fname;
	}

	public void setFname(String fname) {
		this.fname = fname;
	}

	public String getLname() {
		return lname;
	}

	public void setLname(String lname) {
		this.lname = lname;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public Date getDob() {
		return dob;
	}

	public void setDob(Date dob) {
		this.dob = dob;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getDepartment() {
		return department;
	}

	public void setDepartment(String department) {
		this.department = department;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	@Override
	public String toString() {
		return "UserDetails [rollnumber=" + rollnumber + ", email=" + email + ", fname=" + fname + ", lname=" + lname
				+ ", phone=" + phone + ", dob=" + dob + ", gender=" + gender + ", department=" + department + ", image="
				+ image + "]";
	}
	
}
