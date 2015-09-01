package daoImpl;

import java.sql.ResultSet;
import java.sql.Statement;

import domain.Student;
import util.DAOUtil;

import java.sql.Connection;

public class JdbcTest {
	public static void test(){
		Connection conn=null;
		Statement st=null;
		ResultSet rs=null;
		try{
			conn=JdbcUtil.getConnection();
			String sql="select * from Student where studentId='abc123000'";
			st=conn.createStatement();
			rs=st.executeQuery(sql);
			Student student=DAOUtil.rs2bean(rs, Student.class);
			student.print();
		}catch(Exception e){
			e.printStackTrace();
		}
	}
	
	public static void main(String[] args){
		test();
	}
}
