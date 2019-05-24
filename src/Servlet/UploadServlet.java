package Servlet;

import java.io.IOException;
import java.util.Iterator;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileItemFactory;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;





/**
 * Servlet implementation class UploadServlet
 */
@WebServlet("/UploadServlet")
public class UploadServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UploadServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		request.setCharacterEncoding("utf-8");//编码统一
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=UTF-8");
		//上传	
		try {
				boolean isMultipart = ServletFileUpload.isMultipartContent(request);
				if(isMultipart) {//判断前台的form是否有Multipart
					FileItemFactory factory = new DiskFileItemFactory();
					ServletFileUpload upload = new ServletFileUpload(factory);
					//获取前台信息
					List<FileItem> items =upload.parseRequest(request);
					//遍历Items
					int uid=-1;
					String uname=null;
					Iterator<FileItem> iter=items.iterator();
					while(iter.hasNext()) {
						FileItem item=iter.next();
						String itemName=item.getFieldName();
						if(item.isFormField()) {//判度是否为普通字段
							if(itemName.equals("uid")){//根据属性name判断
								uid = Integer.parseInt(item.getString());
							}else if(itemName.equals("uname")) {
								uname= item.getString();
							}
							else {
								System.out.println("else...");
							}
						}else {   //文件字段
							//文件上传
							String fileName = item.getName();
							String ext = fileName.substring(fileName.indexOf(".")+1);
							if(!ext.equals("png")||ext.equals("gif")||ext.equals("jpg")) {
								System.out.println("类型有误上传失败");
								return ;
							}
							//获取文件内容并上传
							//定义文件路径
							//获取服务器路径
							String path = request.getSession().getServletContext().getRealPath("uploadtest");
							File file= new File(path,fileName);
							//控制上传文件大小
						
							// upload.setSizeMax(20*1024);//单位字节B--20kb
							item.write(file);//上传
							System.out.println(fileName+" success! ");
							return ;
						}
					}
				}
		} catch (FileUploadException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
