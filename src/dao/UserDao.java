package dao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import Info.UserInfo;
public class UserDao {
	public UserInfo SerachByUser_id(String id) throws SQLException {
		Connection con = null;//声明连接对像
    	PreparedStatement pstmt = null;//声明预处理陈述对象
    	Conn c=new Conn();
        String sql = "select * from user where user_id = " +"'" +id+ "'";
        try{
        	con=c.getCinnection();//连接数据库
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
            	return user;
            }
            else {
            	return null;
            }
        }catch (Exception e){
            e.printStackTrace();
        }
        finally
        {
          if(pstmt!= null) 
        	  pstmt.close(); 		
          if(con!= null) 
            con.close(); 
        }
		return null;
	}
	public void addquestion(String user_id) throws SQLException {
		Connection con;//声明连接对像
    	PreparedStatement pstmt = null;//声明预处理陈述对象
    	Conn c=new Conn();
        con=c.getCinnection();//连接数据库
        UserInfo user=SerachByUser_id(user_id);
        int ant=user.getUse_question_num()+1;
        System.out.println("提问数");
        String sql = "update user set user_question_num="+ant+" where user_id ="+ "'"+user_id+"'";
        try{
        	pstmt = (PreparedStatement) con.prepareStatement(sql);
        	pstmt.executeUpdate();//结果集对象 res
        }catch (Exception e){
            e.printStackTrace();
        }finally
        {
            if(pstmt!= null) 
          	  pstmt.close(); 		
            if(con!= null) 
              con.close(); 
          }
	}
	public void addanswer(String user_id) throws SQLException {
		Connection con;//声明连接对像
    	PreparedStatement pstmt = null;//声明预处理陈述对象
    	Conn c=new Conn();
        con=c.getCinnection();//连接数据库
        UserInfo user=SerachByUser_id(user_id);
        int ant=user.getUser_answer_num()+1;
        System.out.println("回答数");
        String sql = "update user set user_answer_num="+ant+" where user_id ="+ "'"+user_id+"'";
        try{
        	pstmt = (PreparedStatement) con.prepareStatement(sql);
        	pstmt.executeUpdate();//结果集对象 res
        }catch (Exception e){
            e.printStackTrace();
        }finally
        {
            if(pstmt!= null) 
          	  pstmt.close(); 		
            if(con!= null) 
              con.close(); 
          }
	}
	public void addscore(String user_id) throws SQLException {
		Connection con;//声明连接对像
    	PreparedStatement pstmt = null;//声明预处理陈述对象
    	Conn c=new Conn();
        con=c.getCinnection();//连接数据库
        UserInfo user=SerachByUser_id(user_id);
        int ant=user.getUser_score()+1;
        System.out.println("点赞数");
        String sql = "update user set user_score="+ant+" where user_id ="+ "'"+user_id+"'";
        try{
        	pstmt = (PreparedStatement) con.prepareStatement(sql);
        	pstmt.executeUpdate();//结果集对象 res
        }catch (Exception e){
            e.printStackTrace();
        }finally
        {
            if(pstmt!= null) 
          	  pstmt.close(); 		
            if(con!= null) 
              con.close(); 
          }
	}
}
