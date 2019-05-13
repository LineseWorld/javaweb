package dao;
import java.sql.*;
public class LoginDao {
	
	public String judge(String id,String pwd) {
		Connection con;//声明连接对像
    	PreparedStatement pstmt;//声明预处理陈述对象
    	Conn c=new Conn();
        con=c.getCinnection();//连接数据库
        System.out.println(id);
        String sql = "select * from user where user_id = " +"'" +id+ "'";
        //String sql = "select * from user ";
        try{
        	pstmt = (PreparedStatement) con.prepareStatement(sql);
            ResultSet res=pstmt.executeQuery();//结果集对象 res
            if(res.next())
            {
            	System.out.println("acccccccccca");
            	String user_pwd= res.getString("user_pwd");
            	String user_id= res.getString("user_id");
            	String user_name= res.getString("user_name");
            	System.out.println(user_id);
            	System.out.println(user_pwd);
            	if(user_pwd.equals(pwd)) {
            		System.out.println("asdasda");
            		return user_name;
            	}
            	else {
            		return "#";
            	}
            }
            else {
            	return "#";
            }
        }catch (Exception e){
            e.printStackTrace();
        }
		return "#";
	}
}
