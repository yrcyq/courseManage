package domain;

import java.io.Serializable;
import java.util.List;

public class Student implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = -2103083065168103601L;
	private String studentId,fname,mname,lname;
	private String enrollDate,trackName,programName,level,departmentName,schoolName;
	private double gpa,points;
	private int gpaUnits;
	private boolean isGraduate;
	
	
//	public void setCoursesHasTaken(List<Course> coursesHasTaken){
//		this.coursesHasTaken=coursesHasTaken;
//	}
//	public List<Course> getCoursesHasTaken(){
//		return coursesHasTaken;
//	}
	
//	public void setPassword(String password){
//		this.password=password;
//	}
//	public String getPassword(){
//		return password;
//	}
	public void setDepartmentName(String departmentName){
		this.departmentName=departmentName;
	}
	public String getDepartmentName(){
		return departmentName;
	}
	public void setSchoolName(String schoolName){
		this.schoolName=schoolName;
	}
	public String getSchoolName(){
		return schoolName;
	}
	public void setTrackName(String trackName){
		this.trackName=trackName;
	}
	public String getTrackName(){
		return trackName;
	}
	public void setLevel(String level){
		this.level=level;
	}
	public String getLevel(){
		return level;
	}
	public void setProgramName(String programName){
		this.programName=programName;
	}
	public String getProgramName(){
		return programName;
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
//	public void setTrackId(int trackId){
//		this.trackId=trackId;
//	}
//	public int getTrackId(){
//		return trackId;
//	}
	public void print(){
		System.out.println(studentId);
		System.out.println(enrollDate);
		System.out.println(gpa);
		System.out.println(isGraduate);
//		System.out.println(trackId);
		System.out.println(fname);
		System.out.println(lname);
		System.out.println(mname);
//		System.out.println(password);
	}
	public double getPoints() {
		return points;
	}
	public void setPoints(double points) {
		this.points = points;
	}
	public int getGpaUnits() {
		return gpaUnits;
	}
	public void setGpaUnits(int gpaUnits) {
		this.gpaUnits = gpaUnits;
	}
}
