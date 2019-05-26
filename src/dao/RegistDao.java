package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import Info.QuestionInfo;


public class RegistDao {
    
    public int judge(String id) throws SQLException {//判断id 是否重复
    	Connection con;//声明连接对像
    	PreparedStatement pstmt = null;//声明预处理陈述对象
    	Conn c=new Conn();
        con=c.getCinnection();//连接数据库
        String sql = "select * from user where user_id = " +"'" +id+ "'";
        try{
        	pstmt = (PreparedStatement) con.prepareStatement(sql);
            ResultSet res=pstmt.executeQuery();//结果集对象 res
            if(res.next()) {//判断是否存在
            	return 0;
            }
            else return 1;
        }catch (Exception e){
            e.printStackTrace();
            return -1;
        }finally
        {
            if(pstmt!= null) 
          	  pstmt.close(); 		
            if(con!= null) 
              con.close(); 
          }
        
    }
    public void regist(String id,String pwd,String name) throws SQLException {//插入数据
    	Connection con;
    	PreparedStatement pstmt = null;//声明预处理陈述对象
    	Conn c=new Conn();
        con=c.getCinnection();
        String sql="insert into user (user_id,user_pwd,user_name) value(?,?,?)";
        int i=0;
        try{
            pstmt = (PreparedStatement) con.prepareStatement(sql);
            pstmt.setString(1, id);
            pstmt.setString(2, pwd);
            pstmt.setString(3, name);
            i=pstmt.executeUpdate();
            
            System.out.println("插入成功");
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
