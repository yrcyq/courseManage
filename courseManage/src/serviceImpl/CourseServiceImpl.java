package serviceImpl;

import java.util.List;
import java.util.Map;

import dao.DAOInterface;
import daoImpl.DAOImpl;
import domain.Course;
import service.CourseInterface;

public class CourseServiceImpl implements CourseInterface {
	private DAOInterface db=new DAOImpl();
	@Override
	public List<Course> findCourse(Map<String, Object> info) {
		// TODO Auto-generated method stub
		return db.findCourse(info);
	}

}
