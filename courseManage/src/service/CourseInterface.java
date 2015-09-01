package service;
import java.util.List;
import java.util.Map;
import domain.Course;
public interface CourseInterface {
	List<Course> findCourse(Map<String,Object> info);
}
