package dao;

	import java.util.List;
import java.util.Map;

import domain.Admin;
import domain.Student;
import domain.Course;
	
	
	public interface DAOInterface {
		 Admin findAdmin(String adminId,String password);
		 Student findStudent(String studentId,String password);
		 Student findStudentByAdmin(String studentId);
		 boolean addAdmin(Admin admin);
		 boolean addStudent(Student student);
		 boolean findStudentIdExists(String studentId);
		 List<Course> findCourse(Map<String,Object> info);
		 boolean addCourse(Course course);
		 boolean updateStudentInfo(String studentId,Map<String,Object> info);
	}

	
