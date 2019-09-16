package com.wwh.test;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.wwh.Biz.UserBiz;
import com.wwh.Biz.UserBizImpl;
import com.wwh.entity.UpFile;
import com.wwh.entity.User;
import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;
import org.springframework.stereotype.Controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Map;
@Controller
public class Upload  extends ActionSupport {
    //得到上传的文件
    private File uploadImage;
    //得到文件的类型 (命名：文件属性名+ContentType)
    private String uploadImageContentType;
    //得到文件的名称(命名：文件属性名+FileName)
    private String uploadImageFileName;
    private User user;
    private UpFile upFile;
    @Resource
    private UserBiz biz;
    @Override
    public String execute() {
        
        //获取要保存文件夹的物理路径(绝对路径)
        String realPath = ServletActionContext.getServletContext().getRealPath("/upload");
        File file = new File(realPath);
       //获得文件后缀名
        String type=uploadImageFileName.substring(uploadImageFileName.lastIndexOf("."));
        //测试此抽象路径名表示的文件或目录是否存在。若不存在，创建此抽象路径名指定的目录，包括所有必需但不存在的父目录。
        if (!file.exists()) {
            file.mkdirs();
        }
        try {   //保存文件
            FileUtils.copyFile(uploadImage, new File(file, uploadImageFileName));
        } catch (IOException e) {
            e.printStackTrace();
        }
        //----获取时间
        SimpleDateFormat sd = new SimpleDateFormat("yyyy-MM-dd");
        String time = sd.format(new Date());
        //-----------获取登录后的用户id
        Map<String,Object> session = ActionContext.getContext().getSession();
        User u = (User) session.get("user");


        UpFile up = new UpFile(u.getUserid(),time,upFile.getFiletitle(),type, "未审核", "30", upFile.getArea());

        int a = biz.upFile(up);

        if(a>0)
        {
            return SUCCESS;
        }else
        {
            return ERROR;
        }
    }

    public File getUploadImage() {
        return uploadImage;
    }

    public void setUploadImage(File uploadImage) {
        this.uploadImage = uploadImage;
    }

    public String getUploadImageContentType() {
        return uploadImageContentType;
    }

    public void setUploadImageContentType(String uploadImageContentType) {
        this.uploadImageContentType = uploadImageContentType;
    }

    public String getUploadImageFileName() {
        return uploadImageFileName;
    }

    public void setUploadImageFileName(String uploadImageFileName) {
        this.uploadImageFileName = uploadImageFileName;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public UpFile getUpFile() {
        return upFile;
    }

    public void setUpFile(UpFile upFile) {
        this.upFile = upFile;
    }
}
