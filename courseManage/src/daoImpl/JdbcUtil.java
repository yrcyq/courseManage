package daoImpl;

import java.io.InputStream;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Properties;
import java.sql.Connection;
import java.sql.DriverManager;

public class JdbcUtil {
	private static String driver = null;
    private static String url = null;
    private static String username = null;
    private static String password = null;
    
    static{
        try{
            //璇诲彇db.properties鏂囦欢涓殑鏁版嵁搴撹繛鎺ヤ俊鎭�
            InputStream in = JdbcUtil.class.getClassLoader().getResourceAsStream("db.properties");
            Properties prop = new Properties();
            prop.load(in);
            
            //鑾峰彇鏁版嵁搴撹繛鎺ラ┍鍔�
            driver = prop.getProperty("driver");
            //鑾峰彇鏁版嵁搴撹繛鎺RL鍦板潃
            url = prop.getProperty("url");
            //鑾峰彇鏁版嵁搴撹繛鎺ョ敤鎴峰悕
            username = prop.getProperty("username");
            //鑾峰彇鏁版嵁搴撹繛鎺ュ瘑鐮�
            password = prop.getProperty("password");
            
            //鍔犺浇鏁版嵁搴撻┍鍔�
            Class.forName(driver);
            
        }catch (Exception e) {
            throw new ExceptionInInitializerError(e);
        }
    }
    
    /**
    * @Method: getConnection
    * @Description: 鑾峰彇鏁版嵁搴撹繛鎺ュ璞�
    * @Anthor:瀛ゅ偛鑻嶇嫾
    *
    * @return Connection鏁版嵁搴撹繛鎺ュ璞�
    * @throws SQLException
    */ 
    public static Connection getConnection() throws SQLException{
        return DriverManager.getConnection(url, username,password);
    }
    
    /**
    * @Method: release
    * @Description: 閲婃斁璧勬簮锛�
    *     瑕侀噴鏀剧殑璧勬簮鍖呮嫭Connection鏁版嵁搴撹繛鎺ュ璞★紝璐熻矗鎵цSQL鍛戒护鐨凷tatement瀵硅薄锛屽瓨鍌ㄦ煡璇㈢粨鏋滅殑ResultSet瀵硅薄
    * @Anthor:瀛ゅ偛鑻嶇嫾
    *
    * @param conn
    * @param st
    * @param rs
    */ 
    public static void release(Connection conn,Statement st,ResultSet rs){
        if(rs!=null){
            try{
                //鍏抽棴瀛樺偍鏌ヨ缁撴灉鐨凴esultSet瀵硅薄
                rs.close();
            }catch (Exception e) {
                e.printStackTrace();
            }
            rs = null;
        }
        if(st!=null){
            try{
                //鍏抽棴璐熻矗鎵цSQL鍛戒护鐨凷tatement瀵硅薄
                st.close();
            }catch (Exception e) {
                e.printStackTrace();
            }
        }
        
        if(conn!=null){
            try{
                //鍏抽棴Connection鏁版嵁搴撹繛鎺ュ璞�
                conn.close();
            }catch (Exception e) {
                e.printStackTrace();
            }
        }
    }
    
}
