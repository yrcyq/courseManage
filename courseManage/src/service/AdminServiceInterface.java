package service;
import java.util.Map;

import domain.*;
public interface AdminServiceInterface {
	public Admin findAdmin(String adminId,String password);
	public Student findStudent(String studentId);
	public boolean addCourse(Admin admin,Course course);
	public boolean addAdmin(Admin admin,Admin newAdmin,String password);
	public boolean addStudent(Admin admin,Student student,String password);
	public boolean updateStudentInfo(String studentId,Map<String,Object> info);
}
