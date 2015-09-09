package dao.Impl;

import java.sql.ResultSet;
import java.sql.Statement;

import domain.Course;
import domain.Student;
import util.DAOUtil;

import java.sql.Connection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.ArrayList;
public class JdbcTest {
	public static void test(){
		Connection conn=null;
		Statement st=null;
		ResultSet rs=null;
		try{
			conn=JdbcUtil.getConnection();
			String sql="select * from Student where studentId='abc123000' ";
			st=conn.createStatement();
			rs=st.executeQuery(sql);
			List<Student> list=DAOUtil.rs2bean(rs, Student.class);
			for(Student student:list)
				student.print();
		}catch(Exception e){
			e.printStackTrace();
		}
	}
	
	public static List<Course>  findCourse(Map<String,Object> info){
		List<Course> res=new ArrayList<>();
		StringBuilder sb=new StringBuilder("select * from Course where ");
		int i=info.size();
		for(Map.Entry<String,Object> e:info.entrySet()){
			sb.append(e.getKey()+" = ");
			if(--i>0)
				sb.append(e.getValue()+" and ");
			else
				sb.append(e.getValue());
		}
		System.out.println(sb.toString());
		Connection conn=null;
		Statement st=null;
		ResultSet rs=null;
		try{
			conn=JdbcUtil.getConnection();
			st=conn.createStatement();
			rs=st.executeQuery(sb.toString());
			List<Course> list=DAOUtil.rs2bean(rs, Course.class);
			for(Course c:list)
				c.print();
		}catch(Exception e){
			e.printStackTrace();
		}
		return res;
	}
	
	private static boolean updateStudentInfo(String studentId,
			Map<String, Object> info) {
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
		Statement st=null;
		//ResultSet rs=null;
		try{
			conn=JdbcUtil.getConnection();
			st=conn.createStatement();
			int no=st.executeUpdate(sb.toString());
			System.out.println(no);
			return no>1;
		}
		catch(Exception e){
			e.printStackTrace();
		}
		return false;
	}
	
	public static void main(String[] args){
		Map<String,Object> info=new HashMap<>();
		info.put("password", "fuckyou123");
		updateStudentInfo("user003000",info);
	}

	
}
