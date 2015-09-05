package service;
import domain.*;
public interface StudentServiceInterface {
	Student findStudent(String studentId,String password);
	boolean findStudentIdExists(String studentId);
	boolean takeCourse(Student student,Course course);
	
}
