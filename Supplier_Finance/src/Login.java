
public class Login {
	private Integer loginId;
	private String uname;
	private String passwd;
	
	public Login() {
		super();
		
	}

	public Login(Integer loginId, String uname, String passwd) {
		super();
		this.loginId = loginId;
		this.uname = uname;
		this.passwd = passwd;
	}

	public Integer getLoginId() {
		return loginId;
	}

	public void setLoginId(Integer loginId) {
		this.loginId = loginId;
	}

	public String getUname() {
		return uname;
	}

	public void setUname(String uname) {
		this.uname = uname;
	}

	public String getPasswd() {
		return passwd;
	}

	public void setPasswd(String passwd) {
		this.passwd = passwd;
	}
	
	@Override
	public String toString() {
		String out = String.format("%-5s %-15s\n", uname, passwd);
		return out;
	}

}
