package domain;

public class Course {
	public Course(){}
	private String courseNumber,name,level,time,day,instructor,departmentName,schoolName,year,semester,description;
	private int section,limit,registerNo,classCredits,classNumber;
	
	public void setCourseNumber(String courseNumber){
		this.courseNumber=courseNumber;
	}
	public String getCourseNumber(){
		return courseNumber;
	}
	public void setName(String name){
		this.name=name;
	}
	public String getName(){
		return name;
	}
	public void setTime(String time){
		this.time=time;
	}
	public String getTime(){
		return time;
	}
	public void setLevel(String level){
		this.level=level;
	}
	public String getLevel(){
		return level;
	}
	public void setDay(String day){
		this.day=day;
	}
	public String getDay(){
		return day;
	}
	public void setInstructor(String instructor){
		this.instructor=instructor;
	}
	public String getInstructor(){
		return instructor;
	}
//	public void setDepartmentId(int departmentId){
//		this.departmentId=departmentId;
//	}
//	public int getDepartmentId(){
//		return departmentId;
//	}
	public void setSection(int section){
		this.section=section;
	}
	public int getSection(){
		return section;
	}
	public void setLimit(int limit){
		this.limit=limit;
	}
	public int getLimit(){
		return limit;
	}
	public void setRegisterNo(int registerNo){
		this.registerNo=registerNo;
	}
	public int getRegisterNo(){
		return registerNo;
	}
	public void setClassCredits(int classCredits){
		this.classCredits=classCredits;
	}
	public int getClassCreditse(){
		return classCredits;
	}
	public void print(){
		System.out.println(courseNumber);
		System.out.println(name);
		System.out.println(level);
		System.out.println(time);
		System.out.println(day);
		System.out.println(instructor);
		System.out.println(section);
		System.out.println(limit);
		System.out.println(registerNo);
		System.out.println(classCredits);
		System.out.println(departmentName);
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
	public String getYear() {
		return year;
	}
	public void setYear(String year) {
		this.year = year;
	}
	public String getSemester() {
		return semester;
	}
	public void setSemester(String semester) {
		this.semester = semester;
	}
	public int getClassNumber() {
		return classNumber;
	}
	public void setClassNumber(int classNumber) {
		this.classNumber = classNumber;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
}
