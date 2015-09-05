package daoImpl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.List;
import java.util.Map;

import dao.DAOInterface;
import domain.Admin;
import domain.Course;
import domain.Student;
import util.DAOUtil;

public class DAOImpl implements DAOInterface {
	private Connection conn;
	private PreparedStatement ps;
	private ResultSet rs;




	@Override
	public Admin findAdmin(String adminId, String password) {
		// TODO Auto-generated method stub
		try{
			conn=JdbcUtil.getConnection();
			String sql="select * from Admin where adminId=? and password=?";
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
		try{
			conn=JdbcUtil.getConnection();
			String sql="select * from Student s, where studentId=? and password=?";
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
	public boolean addAdmin(Admin admin) {
		// TODO Auto-generated method stub
		try{
			conn=JdbcUtil.getConnection();
			String sql="insert into Admin values (?,?,?,?,?,?,?)";
			ps=conn.prepareStatement(sql);
			ps.setString(0, admin.getAdminId());
			ps.setString(1, admin.getFname());
			ps.setString(2, admin.getMname());
			ps.setString(3, admin.getLname());
			ps.setInt(4, admin.getDepartmentId());
			ps.setInt(5,admin.getClearance());
			ps.setString(6,admin.getPassword());
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
	public boolean addStudent(Student student) {
		// TODO Auto-generated method stub
		try{
			conn=JdbcUtil.getConnection();
			String sql="insert into Student values (?,?,?,?,?,?,?,?,?)";
			ps=conn.prepareStatement(sql);
			ps.setString(0, student.getStudentId());
			ps.setString(1, student.getFname());
			ps.setString(2, student.getMname());
			ps.setString(3, student.getLname());
			ps.setBoolean(4, student.getIsGraduate());
			ps.setString(5,student.getEnrollDate());
			ps.setDouble(6,student.getGpa());
			ps.setInt(7,student.getTrackId());
			ps.setString(8,student.getPassword());
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
		try{
			conn=JdbcUtil.getConnection();
			String sql="select * from Student where studentId=? ";
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
		StringBuilder sb=new StringBuilder("select * from Course where ");
		int i=info.size();
		for(Map.Entry<String,Object> e:info.entrySet()){
			sb.append(e.getKey()+" = ");
			if(--i>0)
				sb.append("\""+e.getValue()+"\""+" and ");
			else
				sb.append("\""+e.getValue()+"\"");
		}
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
		try{
			conn=JdbcUtil.getConnection();
			String sql="insert into Course values (?,?,?,?,?,?,?,?,?,?,?) ";
			ps=conn.prepareStatement(sql);
			ps.setString(0, course.getCourseId());
			ps.setInt(1, course.getSection());
			ps.setInt(2,course.getDepartmentId());
			ps.setString(3,course.getName());
			ps.setString(4, course.getInstructor());
			ps.setString(5,course.getLevel());
			ps.setInt(6, course.getLimit());
			ps.setInt(7,course.getRegisterNo());
			ps.setString(8,course.getTime());
			ps.setString(9, course.getDay());
			ps.setInt(10,course.getCreditHourse());
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
		try{
			conn=JdbcUtil.getConnection();
			String sql="select * from Student where studentId=?";
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

}
