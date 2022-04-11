package bean;

public class UserCredentials {
	
	private String rollnumber;
	private String email;
	private String password;
	private String usertype;
	public UserCredentials(String rollnumber, String email, String password, String usertype) {
		super();
		this.rollnumber = rollnumber;
		this.email = email;
		this.password = password;
		this.usertype = usertype;
	}
	public UserCredentials() {
		super();
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
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getUsertype() {
		return usertype;
	}
	public void setUsertype(String usertype) {
		this.usertype = usertype;
	}
	@Override
	public String toString() {
		return "UserCredentials [rollnumber=" + rollnumber + ", email=" + email + ", password=" + password
				+ ", usertype=" + usertype + "]";
	}
	
	
}
