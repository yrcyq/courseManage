package domain;

public class Course {
	public Course(){}
	private String courseId,name,level,time,day,instructor;
	private int section,limit,registerNo,creditHours,departmentId;
	
	public void setCourseId(String courseId){
		this.courseId=courseId;
	}
	public String getCourseId(){
		return courseId;
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
	public void setDepartmentId(int departmentId){
		this.departmentId=departmentId;
	}
	public int getDepartmentId(){
		return departmentId;
	}
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
	public void setCreditHours(int creditHours){
		this.creditHours=creditHours;
	}
	public int getCreditHourse(){
		return creditHours;
	}
	public void print(){
		System.out.println(courseId);
		System.out.println(name);
		System.out.println(level);
		System.out.println(time);
		System.out.println(day);
		System.out.println(instructor);
		System.out.println(section);
		System.out.println(limit);
		System.out.println(registerNo);
		System.out.println(creditHours);
		System.out.println(departmentId);
	}
}
