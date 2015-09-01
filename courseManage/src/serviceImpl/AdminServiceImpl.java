package serviceImpl;

import java.util.Map;

import domain.Admin;
import domain.Course;
import domain.Student;
import service.AdminServiceInterface;

public class AdminServiceImpl implements AdminServiceInterface {

	@Override
	public Admin findAdmin(String adminId, String password) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Student findStudent(String studentId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean addCourse(Admin admin, Course course) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean addAdmin(Admin admin, Admin newAdmin) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean addStudent(Admin admin, Student student) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean updateStudentInfo(String studentId, Map<String, Object> info) {
		// TODO Auto-generated method stub
		return false;
	}

}
