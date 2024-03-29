package cn.anhui.karate.web.servlet;

import cn.anhui.karate.domain.NotificationBean;
import cn.anhui.karate.service.NotificationBeanService;
import cn.anhui.karate.service.impl.NotificationBeanServiceImpl;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.apache.commons.io.FileUtils;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.*;

@WebServlet("/TrainUploadServlet")
public class TrainUploadServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        NotificationBeanService service=new NotificationBeanServiceImpl();
        //判断表单个是否有多个部分组成,将整个请求做做为判断
        boolean isMultipart = ServletFileUpload.isMultipartContent(request);
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
        ArrayList<NotificationBean> newsList = new ArrayList<NotificationBean>();
        String fieldName = "";
        //判断是表单是否为多部分组成
        if (isMultipart == true) {
            //1、创建一个DiskFileItemFactory工厂
            DiskFileItemFactory factory = new DiskFileItemFactory(10 * 1024, new File("f:/temp"));
            //2、创建一个文件上传解析器
            ServletFileUpload upload = new ServletFileUpload(factory);
            upload.setHeaderEncoding("utf-8");
            try {
                List<FileItem> list = upload.parseRequest(request);
                NotificationBean bean = null;
                for (FileItem item : list) {
                    if (item.isFormField()) {
                        //得到集合元素
                        fieldName = item.getFieldName();
                        //判断
                        if (fieldName.equals("title")) {
                            //如果是标题，就设置新闻标题，并将字符集设置为utf-8
                            bean.setTitle(item.getString("utf-8"));
                            //如果是内容，设置字符编码
                        }
                    } else {
                        bean = new NotificationBean();
                        String uuid= UUID.randomUUID().toString();
                        String name = item.getName();
                        //产生随机文件名，防止文件名重复
                        name=uuid+name.substring(name.lastIndexOf("."));
                        //得到web应用中的某个目录的决定路径
                        String baseDir = "F:/文件/newKarate/karate/web/notification/trainImage";
                        String subDir = makeDirectory(name);
                        String finalDir = baseDir + "/" + subDir;
                        FileUtils.copyInputStreamToFile(item.getInputStream(), new File(finalDir + name));
                        //删除临时文件
                        item.delete();
                        bean.setName(name);
                        bean.setPublishTime(sdf.format(new Date()));
                        bean.setFilepath("notification/trainImage" + "/" + subDir + name);
                    }

                }
                newsList.add(bean);
                //保存到数据库
                service.saveTrainNews(bean);
                //把完成的文件信息转发到jsp页面显示
                request.setAttribute("newsList", newsList);
                request.getRequestDispatcher("/trainUploadSuccess.jsp").forward(request, response);
            } catch (FileUploadException e) {
                e.printStackTrace();
            }
        }

    }

    private String makeDirectory(String fileName){
        Calendar now= Calendar.getInstance();
        //获取年月日
        int year=now.get(Calendar.YEAR);
        int month=now.get(Calendar.MONTH)+1;
        int day=now.get(Calendar.DAY_OF_MONTH);
        return year+"/"+month+"/"+day+"/";
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);
    }
}
