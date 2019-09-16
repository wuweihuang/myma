package com.wwh.Dao;

import com.wwh.entity.User;

import java.util.List;

public interface UserDao {
    //-------用户登录
    public User userLogin(String userid,String pwd);
    //------------查找用户列表
    public List<User> findUserList(int pageno);
    //-------------验证注册用户是否存在
    public User regTest(String userid);
    //-------------------注册用户
    public boolean addUser(User user);
    //带条件查找用户列表
    public List findUser(String time1,String time2,String username,int pageno);
}
