package util;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.util.ArrayList;
import java.util.List;

import org.apache.commons.beanutils.BeanUtils;
public class DAOUtil {
	
	/*
	 * package resultset values into beans
	 * 
	 */
	public static <T> List<T> rs2bean(ResultSet rs,Class<T> clazz){
		try{
			List<T> res=new ArrayList<>();
			
			ResultSetMetaData md=rs.getMetaData();
			while(rs.next()){
				T bean=clazz.newInstance();
				for(int i=1;i<=md.getColumnCount();i++){
					String name=md.getColumnName(i);
					Object value=rs.getObject(i);
					BeanUtils.setProperty(bean, name, value);
				}
				res.add(bean);
			}
			return res;
		}catch(Exception e){
			throw new RuntimeException();
			//e.printStackTrace();
		}
		
	}
}
