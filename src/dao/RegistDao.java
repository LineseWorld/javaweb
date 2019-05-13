package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

public class RegistDao {
    
    public int judge(String id) {//判断id 是否重复
    	Connection con;//声明连接对像
    	PreparedStatement pstmt;//声明预处理陈述对象
    	Conn c=new Conn();
        con=c.getCinnection();//连接数据库
        String sql = "select * from user where user_id = " +"'" +id+ "'";
        System.out.println("-----");
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
        }
        
    }
    public void regist(String id,String pwd,String name) {//插入数据
    	Connection con;
    	PreparedStatement pstmt;//声明预处理陈述对象
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
            pstmt.close();
            con.close();
            System.out.println("插入成功");
        }catch (Exception e){
            e.printStackTrace();
        }
    }
}
