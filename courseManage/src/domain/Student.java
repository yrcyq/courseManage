package domain;

import java.io.Serializable;

public class Student implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = -2103083065168103601L;
	private String studentId,password,fname,mname,lname;
	private String enrollDate;
	private double gpa;
	private boolean isGraduate;
	private int trackId;
	
	public void setPassword(String password){
		this.password=password;
	}
	public String getPassword(){
		return password;
	}
	public void setFname(String fname){
		this.fname=fname;
	}
	public String getFname(){
		return fname;
	}
	public void setMname(String mname){
		this.mname=mname;
	}
	public String getMname(){
		return mname;
	}
	public void setLname(String lname){
		this.lname=lname;
	}
	public String getLname(){
		return lname;
	}
	public void setStudentId(String studentId){
		this.studentId=studentId;
	}
	public String getStudentId(){
		return studentId;
	}
	public void setEnrollDate(String enrollDate){
		this.enrollDate=enrollDate;
	}
	public String getEnrollDate(){
		return enrollDate;
	}
	public void setGpa(double gpa){
		this.gpa=gpa;
	}
	public double getGpa(){
		return gpa;
	}
	public void setIsGraduate(boolean isGraduate){
		this.isGraduate=isGraduate;
	}
	public boolean getIsGraduate(){
		return isGraduate;
	}
	public void setTrackId(int trackId){
		this.trackId=trackId;
	}
	public int getTrackId(){
		return trackId;
	}
	public void print(){
		System.out.println(studentId);
		System.out.println(enrollDate);
		System.out.println(gpa);
		System.out.println(isGraduate);
		System.out.println(trackId);
		System.out.println(fname);
		System.out.println(lname);
		System.out.println(mname);
		System.out.println(password);
	}
}
