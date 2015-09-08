package daoImpl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import dao.DAOInterface;
import domain.Admin;
import domain.Course;
import domain.Student;
import util.DAOUtil;

public class DAOImpl implements DAOInterface {
	
	private static Map<String,Integer> trackName2Id=new HashMap<>();
	private static Map<String,Integer> departmentName2Id=new HashMap<>();
	static{
		Connection conn=null;
		Statement st=null;
		ResultSet rs=null;
		try{
			conn=JdbcUtil.getConnection();
			String sql1="select trackName,trackId from track",sql2="select departmentName,departmentId from department";
			st=conn.createStatement();
			rs=st.executeQuery(sql1);
			DAOUtil.rs2map(trackName2Id,rs);
			
			rs=st.executeQuery(sql2);
			DAOUtil.rs2map(departmentName2Id,rs);
		}
		catch(Exception e){
			e.printStackTrace();
		}
		finally{
			JdbcUtil.release(conn, st, rs);
		}
	}



	@Override
	public Admin findAdmin(String adminId, String password) {
		// TODO Auto-generated method stub
		Connection conn=null;
		PreparedStatement ps=null;
		ResultSet rs=null;
		try{
			conn=JdbcUtil.getConnection();
			String sql="select * from admininfo where adminId=? and password=?";
			ps=conn.prepareStatement(sql);
			ps.setString(0, adminId);
			ps.setString(1, password);
			rs=ps.executeQuery();
			return DAOUtil.rs2bean(rs, Admin.class).get(0);
		}
		catch(Exception e){
			e.printStackTrace();
		}
		finally{
			JdbcUtil.release(conn, ps, rs);
		}
		return null;
	}

	@Override
	public Student findStudent(String studentId, String password) {
		// TODO Auto-generated method stub
		Connection conn=null;
		PreparedStatement ps=null;
		ResultSet rs=null;
		try{
			conn=JdbcUtil.getConnection();
			String sql="select * from studentinfo, where studentId=? and password=?";
			ps=conn.prepareStatement(sql);
			ps.setString(0, studentId);
			ps.setString(1, password);
			rs=ps.executeQuery();
			return DAOUtil.rs2bean(rs, Student.class).get(0);
		}
		catch(Exception e){
			e.printStackTrace();
		}
		finally{
			JdbcUtil.release(conn, ps, rs);
		}
		return null;
	}

	@Override
	public boolean addAdmin(Admin admin,String password) {
		// TODO Auto-generated method stub
		Connection conn=null;
		PreparedStatement ps=null;
		ResultSet rs=null;
		try{
			conn=JdbcUtil.getConnection();
			String sql="insert into admin values (?,?,?,?,?,?,?)";
			ps=conn.prepareStatement(sql);
			ps.setString(0, admin.getAdminId());
			ps.setString(1, admin.getFname());
			ps.setString(2, admin.getMname());
			ps.setString(3, admin.getLname());
			ps.setInt(4, departmentName2Id.get(admin.getDepartmentName()));
			ps.setInt(5,admin.getClearance());
			ps.setString(6,password);
			int num=ps.executeUpdate();
			return num>0;
		}
		catch(Exception e){
			e.printStackTrace();
		}
		finally{
			JdbcUtil.release(conn, ps, rs);
		}
		return false;
	}

	@Override
	public boolean addStudent(Student student,String password) {
		// TODO Auto-generated method stub
		Connection conn=null;
		PreparedStatement ps=null;
		ResultSet rs=null;
		try{
			conn=JdbcUtil.getConnection();
			String sql="insert into student values (?,?,?,?,?,?,?,?,?,?,?)";
			ps=conn.prepareStatement(sql);
			ps.setString(0, student.getStudentId());
			ps.setString(1, student.getFname());
			ps.setString(2, student.getMname());
			ps.setString(3, student.getLname());
			ps.setBoolean(4, false);
			ps.setString(5,student.getEnrollDate());
			ps.setInt(6,trackName2Id.get(student.getTrackName()));
			ps.setString(7,password);
			ps.setDouble(8, student.getGpa());
			ps.setInt(9, student.getGpaUnits());
			ps.setDouble(10, student.getPoints());
			int num=ps.executeUpdate();
			return num>0;
		}
		catch(Exception e){
			e.printStackTrace();
		}
		finally{
			JdbcUtil.release(conn, ps, rs);
		}
		return false;
	}

	@Override
	public boolean findStudentIdExists(String studentId) {
		// TODO Auto-generated method stub
		Connection conn=null;
		PreparedStatement ps=null;
		ResultSet rs=null;
		try{
			conn=JdbcUtil.getConnection();
			String sql="select * from student where studentId=? ";
			ps=conn.prepareStatement(sql);
			ps.setString(0, studentId);
			rs=ps.executeQuery();
			return rs.next();
		}
		catch(Exception e){
			e.printStackTrace();
		}
		finally{
			JdbcUtil.release(conn, ps, rs);
		}
		return false;
	}

	@Override
	public List<Course> findCourse(Map<String,Object> info) {
		// TODO Auto-generated method stub
		StringBuilder sb=new StringBuilder("select * from courseinfo where ");
		int i=info.size();
		for(Map.Entry<String,Object> e:info.entrySet()){
			sb.append(e.getKey()+" = ");
			if(--i>0)
				sb.append("\""+e.getValue()+"\""+" and ");
			else
				sb.append("\""+e.getValue()+"\"");
		}
		Connection conn=null;
		PreparedStatement ps=null;
		ResultSet rs=null;
		try{
			conn=JdbcUtil.getConnection();
			ps=conn.prepareStatement(sb.toString());
			rs=ps.executeQuery();
			return DAOUtil.rs2bean(rs,Course.class);
		}
		catch(Exception e){
			e.printStackTrace();
		}
		finally{
			JdbcUtil.release(conn, ps, rs);
		}
		return null;
	}

	@Override
	public boolean addCourse(Course course) {
		// TODO Auto-generated method stub
		Connection conn=null;
		PreparedStatement ps=null;
		ResultSet rs=null;
		try{
			conn=JdbcUtil.getConnection();
			String sql="insert into course values ('',?,?,?,?,?,?,?,?,?,?,?,?,?,?) ";
			ps=conn.prepareStatement(sql);
			ps.setString(0, course.getCourseNumber());
			ps.setInt(1, course.getSection());
			ps.setInt(2,departmentName2Id.get(course.getDepartmentName()));
			ps.setString(3,course.getName());
			ps.setString(4, course.getInstructor());
			ps.setString(5,course.getLevel());
			ps.setInt(6, course.getLimit());
			ps.setInt(7,0);
			ps.setString(8,course.getTime());
			ps.setString(9, course.getDay());
			ps.setString(10,course.getYear());
			ps.setString(11, course.getSemester());
			ps.setInt(12, course.getClassCreditse());
			ps.setString(13, course.getDescription());
			int num=ps.executeUpdate();
			return num>0;
		}
		catch(Exception e){
			e.printStackTrace();
		}
		finally{
			JdbcUtil.release(conn, ps, rs);
		}
		return false;
	}

	@Override
	public Student findStudentByAdmin(String studentId) {
		// TODO Auto-generated method stub
		Connection conn=null;
		PreparedStatement ps=null;
		ResultSet rs=null;
		try{
			conn=JdbcUtil.getConnection();
			String sql="select * from studentinfo where studentId=?";
			ps=conn.prepareStatement(sql);
			ps.setString(0, studentId);
			rs=ps.executeQuery();
			return DAOUtil.rs2bean(rs, Student.class).get(0);
		}
		catch(Exception e){
			e.printStackTrace();
		}
		finally{
			JdbcUtil.release(conn,ps,rs);
		}
		return null;
	}

	@Override
	public boolean updateStudentInfo(String studentId, Map<String, Object> info) {
		// TODO Auto-generated method stub
		StringBuilder sb=new StringBuilder("update student set ");
		int i=info.size();
		for(Map.Entry<String, Object> e:info.entrySet()){
			sb.append(e.getKey() +" = ");
			if(--i>0)
				sb.append("\""+e.getValue()+"\""+" and ");
			else
				sb.append("\""+e.getValue()+"\"");
		}
		sb.append(" where studentId= \""+studentId+"\"");
		System.out.println(sb.toString());
		Connection conn=null;
		PreparedStatement ps=null;
		ResultSet rs=null;
		try{
			conn=JdbcUtil.getConnection();
			ps=conn.prepareStatement(sb.toString());
			int no=ps.executeUpdate();
			return no>0;
		}
		catch(Exception e){
			e.printStackTrace();
		}
		finally{
			JdbcUtil.release(conn, ps, rs);
		}
		return false;
	}

	@Override
	public List<String> findStudentCourseHistory(String studentId) {
		// TODO Auto-generated method stub
		Connection conn=null;
		PreparedStatement ps=null;
		ResultSet rs=null;
		try{
			conn=JdbcUtil.getConnection();
			String sql="select courseNumber from istaking i,course c where i.studentId=? and i.classNumber=c.classNumber "
					+ "union all select courseNumber from hastaken h,course c where h.studentId=?and h.classNumber=c.classNumber";
			ps=conn.prepareStatement(sql);
			ps.setString(0, studentId);
			ps.setString(0, studentId);
			rs=ps.executeQuery();
		}
		return null;
	}

}
