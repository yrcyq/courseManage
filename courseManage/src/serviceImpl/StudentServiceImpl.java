package serviceImpl;

import dao.DAOInterface;
import daoImpl.DAOImpl;
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
	public boolean takeCourse(Course course) {
		// TODO Auto-generated method stub
		return false;
	}

}
