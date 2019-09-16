package com.wwh.Biz;

import com.wwh.entity.Manager;
import com.wwh.entity.UpFile;

import java.util.List;

public interface ManagerBiz {
    //----------用户登录
    public Manager manLogin(String manid, String pwd);
    //---------管理员列表
    public List<Manager> findManList(int pageno);
    //----------删除用户
    public boolean delUser(String topid);
    //--------文件列表
    public List<UpFile> fileList(String filetitle,String filetype,String time1,String time2,String userid,int pageno,int allpage);
}
