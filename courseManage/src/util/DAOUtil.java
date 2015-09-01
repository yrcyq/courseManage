package util;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;

import org.apache.commons.beanutils.BeanUtils;
public class DAOUtil {
	
	/*
	 * package resultset values into beans
	 * 
	 */
	public static <T> T rs2bean(ResultSet rs,Class<T> clazz){
		try{
			
			T bean=clazz.newInstance();
			ResultSetMetaData md=rs.getMetaData();
			while(rs.next()){
				for(int i=1;i<=md.getColumnCount();i++){
					String name=md.getColumnName(i);
					Object value=rs.getObject(i);
					BeanUtils.setProperty(bean, name, value);
				}
			}
			return bean;
		}catch(Exception e){
			throw new RuntimeException();
			//e.printStackTrace();
		}
		
	}
}
