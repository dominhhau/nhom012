package model;

public class Giangvien {
	
	private int index;
	private String fullname;
	private String user;
	private String pass;
	private String email;
	private String CMND;
	private String SDT;
	
	public Giangvien(int index, String fullname, String user, String pass, String email, String CMND, String SDT) {
		
		this.index=index;
		this.fullname=fullname;
		this.user=user;
		this.pass=pass;
		this.email=email;
		this.CMND=CMND;
		this.SDT=SDT;
	}
	
	

	public int getIndex() {
		return index;
	}
	public void setIndex(int index) {
		this.index = index;
	}
	public String getFullname() {
		return fullname;
	}
	public void setFullname(String fullname) {
		this.fullname = fullname;
	}
	public String getUser() {
		return user;
	}
	public void setUser(String user) {
		this.user = user;
	}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getCMND() {
		return CMND;
	}
	public void setCMND(String CMND) {
		this.CMND = CMND;
	}
	public String getSDT() {
		return SDT;
	}
	public void setSDT(String sDT) {
		SDT = sDT;
	}
	

}
