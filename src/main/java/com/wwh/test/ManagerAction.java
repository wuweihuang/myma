package com.wwh.test;

import com.opensymphony.xwork2.ActionSupport;
import com.wwh.Biz.ManagerBiz;
import com.wwh.Biz.ManagerBizImpl;
import com.wwh.entity.Manager;
import com.wwh.entity.UpFile;
import com.wwh.entity.User;
import org.apache.struts2.ServletActionContext;
import org.springframework.stereotype.Controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.util.List;
@Controller
public class ManagerAction extends ActionSupport{
    private String topid;
    private User user = new User();
    private List<Manager> list=null;
    @Resource
    private ManagerBiz manbiz ;
    private String time1;
    private String time2;
    private UpFile file =new UpFile();
    private int pageno=1;
    private int allpage=5;
//---------------------查找管理员list
    public String findManList()
    {
        list=manbiz.findManList(pageno);
        if(null!=list)
        {
            HttpSession session=ServletActionContext.getRequest().getSession();
            session.setAttribute("Manager",list);
            return "success";
        }else
        {
            return "error";
        }
    }
    //---------------删除用户
    public String delUser()
    {
        boolean a = manbiz.delUser(topid);
        if(a)
        {
            return "ok";
        }else
        {
            return "no";
        }

    }
    //-----查找文件列表
    public String findFileList()
    {

        System.out.println(getTime1());
        System.out.println(getTime2());
        System.out.println(file.getFiletitle());
        List<UpFile> list=manbiz.fileList(file.getFiletitle(),file.getFiletype(),getTime1(),getTime2(),file.getUserid(),pageno,allpage);
        if(null!=list)
        {
            HttpSession session=ServletActionContext.getRequest().getSession();
            session.setAttribute("FileList",list);
            return "success";
        }else
        {
            return "error";
        }
    }

    //---------------------增加管理员
    public String addMan()
    {
        return "";
    }
    //---------------------删除管理员
    public String delMan()
    {
        return "";
    }
    //--------------------修改管理员
    public String fixMan()
    {
        return "";
    }

    public String getTopid() {
        return topid;
    }

    public void setTopid(String topid) {
        this.topid = topid;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public String getTime1() {
        return time1;
    }

    public void setTime1(String time1) {
        this.time1 = time1;
    }

    public String getTime2() {
        return time2;
    }

    public void setTime2(String time2) {
        this.time2 = time2;
    }

    public UpFile getFile() {
        return file;
    }

    public void setFile(UpFile file) {
        this.file = file;
    }
}
