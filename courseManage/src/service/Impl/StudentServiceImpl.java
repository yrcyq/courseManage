package service.Impl;

import java.util.ArrayList;
import java.util.List;

import dao.DAOInterface;
import dao.Impl.DAOImpl;
import domain.Course;
import domain.Student;
import service.StudentServiceInterface;

public class StudentServiceImpl implements StudentServiceInterface {
	private DAOInterface db=new DAOImpl();
	@Override
	public Student findStudent(String studentId, String password) {
		// TODO Auto-generated method stub
		return db.findStudent(studentId, password);
	}

	@Override
	public boolean findStudentIdExists(String studentId) {
		// TODO Auto-generated method stub
		return db.findStudentIdExists(studentId);
	}

	@Override
	public boolean takeCourse(String studentId,Course course) {
		// TODO Auto-generated method stub
		List<String> hasTaken=db.findStudentCourseHistory( studentId);
		List<String> prerequisite=getPrerequisite(course.getDescription());
		return false;
	}
	
	private List<String> getPrerequisite(String description){
		List<String> prerequisite=new ArrayList<>();
		if(description.indexOf("Prerequisite:")!=-1){
			String[] courses=description.substring(description.indexOf("Prerequisite:")+1).split(",");
			for(String str:courses)
				prerequisite.add(str);
		}
		return prerequisite; 
	}
}
