package domain;

import java.io.Serializable;

public class Admin implements Serializable{
	/**
	 * clearance: 
	 * 			1: see student profile and update student info;
	 * 			2: register new student;
	 * 			3: add courses;
	 * 			4: add department;
	 * 			5: add school;
	 */
	private static final long serialVersionUID = -747045332297400687L;
	private String adminId,fname,mname,lname,departmentName,schoolName;
	private int clearance;
	public void setAdminId(String adminId){
		this.adminId=adminId;
	}
	public String getAdminId(){
		return adminId;
	}
//	public void setDepartmentId(int departmentId){
//		this.departmentId=departmentId;
//	}
//	public int getDepartmentId(){
//		return departmentId;
//	}
	public void setClearance(int clearance){
		this.clearance=clearance;
	}
	public int getClearance(){
		return clearance;
	}
//	public void setPassword(String password){
//		this.password=password;
//	}
//	public String getPassword(){
//		return password;
//	}
	public void setFname(String Fname){
		this.fname=Fname;
	}
	public String getFname(){
		return fname;
	}
	public void setMname(String Mname){
		this.mname=Mname;
	}
	public String getMname(){
		return mname;
	}
	public void setLname(String Lname){
		this.lname=Lname;
	}
	public String getLname(){
		return lname;
	}
	public String getDepartmentName() {
		return departmentName;
	}
	public void setDepartmentName(String departmentName) {
		this.departmentName = departmentName;
	}
	public String getSchoolName() {
		return schoolName;
	}
	public void setSchoolName(String schoolName) {
		this.schoolName = schoolName;
	}
}
