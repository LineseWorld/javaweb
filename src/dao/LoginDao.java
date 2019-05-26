package dao;

import java.sql.*;
import Info.UserInfo;

public class LoginDao {
	
	public UserInfo judge(String id,String pwd) throws SQLException {
		Connection con;//声明连接对像
    	PreparedStatement pstmt = null;//声明预处理陈述对象
    	Conn c=new Conn();
        con=c.getCinnection();//连接数据库
        System.out.println(id);
        String sql = "select * from user where user_id = " +"'" +id+ "'";
       
        try{
        	pstmt = (PreparedStatement) con.prepareStatement(sql);
            ResultSet res=pstmt.executeQuery();//结果集对象 res
            if(res.next())
            {
            	UserInfo user = new UserInfo();
            	user.setUser_id(res.getString("user_id"));
            	user.setUse_question_num(res.getInt("user_question_num"));
            	user.setUser_answer_num(res.getInt("user_answer_num"));
            	user.setUser_name(res.getString("user_name"));
            	user.setUser_img_url(res.getString("user_img_url"));
            	user.setUser_pwd(res.getString("user_pwd"));
            	user.setUser_follows(res.getInt("user_follows"));
            	user.setUser_score(res.getInt("user_score"));
            	user.setUser_sex(res.getString("user_sex"));
            	user.setUser_describe(res.getString("user_describe"));
            	if(user.getUser_pwd().equals(pwd)) {
            		return user;
            	}
            	else {
            		return null;
            	}
            }
            else {
            	return null;
            }
        }catch (Exception e){
            e.printStackTrace();
        } finally
        {
            if(pstmt!= null) 
          	  pstmt.close(); 		
            if(con!= null) 
              con.close(); 
          }
		return null;
	}
}
