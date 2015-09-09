package service.Impl;

import java.util.Map;
import dao.DAOInterface;
import dao.Impl.DAOImpl;
import domain.Admin;
import domain.Course;
import domain.Student;
import service.AdminServiceInterface;

public class AdminServiceImpl implements AdminServiceInterface {
	private DAOInterface db=new DAOImpl();
	@Override
	public Admin findAdmin(String adminId, String password) {
		// TODO Auto-generated method stub
		return db.findAdmin(adminId, password);
	}

	@Override
	public Student findStudent(String studentId) {
		// TODO Auto-generated method stub
		return db.findStudentByAdmin(studentId);
	}

	@Override
	// if admin and course don't belong to same department or admin's clearnce lower than 3, 
	// then admin have no right to add this course and return error;
	public boolean addCourse(Admin admin, Course course) {
		// TODO Auto-generated method stub
		String adminDepartmentName=admin.getDepartmentName();
		int clearance=admin.getClearance();
		String courseDepartmentName=course.getDepartmentName();
		if(clearance<3)
			return false;
		else if(clearance==3&&adminDepartmentName!=courseDepartmentName)
			return false;		
		return db.addCourse(course);
	}

	@Override
	//super admin have right to add new lower clearance admin 
	public boolean addAdmin(Admin superAdmin, Admin lowerAdmin,String password) {
		// TODO Auto-generated method stub
		int superAdminClearance=superAdmin.getClearance();
		int lowerAdminClearance=lowerAdmin.getClearance();
		if(superAdminClearance<=lowerAdminClearance)
			return false;
		return db.addAdmin(lowerAdmin,password);
	}

	@Override
	//admin who has clearance larger or equal than 2 have right to register new student;
	public boolean addStudent(Admin admin, Student student,String password) {
		// TODO Auto-generated method stub
		int clearance=admin.getClearance();
		if(clearance<2)
			return false;
		return db.addStudent(student,password);
	}

	@Override
	public boolean updateStudentInfo(String studentId, Map<String, Object> info) {
		// TODO Auto-generated method stub
		return db.updateStudentInfo(studentId, info);
	}

}
