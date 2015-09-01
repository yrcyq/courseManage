package dao;

	import domain.Admin;
	import domain.Student;
	import domain.Course;
	
	
	public interface DAOInterface {
		 Admin findAdmin(String username,String password);
		 Student findStudent(String username,String password);
		 boolean addAdmin(Admin admin);
		 boolean addStudent(Student student);
		 
		 //find student by using username
		 boolean findStudent(String username);
		 
		 Course findCourse(String courseId);
		 boolean addCourse(Course course);
	}


