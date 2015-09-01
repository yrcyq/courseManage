package dao;

	import java.util.List;
import java.util.Map;

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
		 
		 List<Course> findCourse(Map<String,Object> info);
		 boolean addCourse(Course course);
	}


