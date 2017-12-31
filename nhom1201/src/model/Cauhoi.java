package model;

public class Cauhoi {
	
	private int index;
	private String nhom;
	private String noidung;
	private String QA;
	private String QB;
	private String QC;
	private String QD;
	private String dapan;

	
	public Cauhoi (int index, String nhom, String noidung, String QA, String QB, String QC, String QD, String dapan) {
				
		this.index=index;
		this.nhom=nhom;
		this.noidung=noidung;
		this.QA=QA;
		this.QB=QB;
		this.QC=QC;
		this.QD=QD;
		this.dapan=dapan;
	}
	
	public  Cauhoi (int index, String noidung, String QA, String QB, String QC, String QD, String dapan) {
		
		this.index=index;
		this.noidung=noidung;
		this.QA=QA;
		this.QB=QB;
		this.QC=QC;
		this.QD=QD;
		this.dapan=dapan;
	}
	public int getIndex() {
		return index;
	}
	
	public void setIndex(int index) {
		this.index = index;
	}
	public String getNhom() {
		return nhom;
	}
	public void setNhom(String nhom) {
		this.nhom = nhom;
	}
	public String getNoidung() {
		return noidung;
	}
	public void setNoidung(String noidung) {
		this.noidung = noidung;
	}
	public String getQA() {
		return QA;
	}
	public void setQA(String qA) {
		QA = qA;
	}
	public String getQB() {
		return QB;
	}
	public void setQB(String qB) {
		QB = qB;
	}
	public String getQC() {
		return QC;
	}
	public void setQC(String qC) {
		QC = qC;
	}
	public String getQD() {
		return QD;
	}
	public void setQD(String qD) {
		QD = qD;
	}
	public String getDapan() {
		return dapan;
	}
	public void setDapan(String dapan) {
		this.dapan = dapan;
	}
	
	

}
