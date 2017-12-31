package model;

public class Sinhvien {
	private int  index;
	private String fullname;
	private String user;
	private String pass;
	
	public Sinhvien(int index,String fullname, String user, String pass) {
		super();
		this.index=index;
		this.fullname = fullname;
		this.user = user;
		this.pass = pass;
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

	public void setUsername(String user) {
		this.user = user;
	}

	public String getPass() {
		return pass;
	}

	public void setPassword(String pass) {
		this.pass = pass;
	}

	public int getIndex() {
		return index;
	}

	public void setIndex(int index) {
		this.index = index;
	}
	
	
	
	

}
