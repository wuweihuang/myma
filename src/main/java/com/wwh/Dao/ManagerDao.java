package com.wwh.Dao;

import com.wwh.entity.Manager;

import java.util.List;

public interface ManagerDao {
    //----------管理员登录
    public Manager manLogin(String manid, String pwd);
    //---------管理员列表
    public List<Manager> findManList(int pageno);
    //----------删除用户
    public boolean delUser(String topid);

}
