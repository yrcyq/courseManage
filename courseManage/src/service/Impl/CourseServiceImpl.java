package service.Impl;

import java.util.List;
import java.util.Map;

import dao.DAOInterface;
import dao.Impl.DAOImpl;
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
