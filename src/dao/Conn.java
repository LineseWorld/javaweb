package dao;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
public class Conn {
    Connection con;
    static String DB_URL="jdbc:mysql://localhost:3306/answerquestion";//数据库url answerquestion为数据库名
    static String USER="web";//用户名
    static String PASS="666";//密码
    public Connection getCinnection(){
        try{//加载数据库驱动类
            Class.forName("com.mysql.jdbc.Driver");
            System.out.println("数据库驱动加载成功");
        }catch (ClassNotFoundException e){
            
            e.printStackTrace();
        }
        try{//通过访问数据库的URL获取数据库连接对象
            con = DriverManager.getConnection(DB_URL,USER,PASS);
            System.out.println("数据库连接成功");
        }catch (SQLException e){
          
            e.printStackTrace();
        }
        return con;
    }
}