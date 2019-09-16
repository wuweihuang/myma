package com.wwh.Biz;

import com.wwh.entity.UpFile;
import com.wwh.entity.User;

import java.util.List;

public interface UserBiz {
    //-------用户登录
    public User userLogin(String userid,String pwd);
    //------------查找用户列表
    public List<User> findUserList(int pageno);
    //-------------验证注册用户是否存在
    public User regTest(String userid);
    //-------------------注册用户
    public int addUser(User user);
    //带条件查找用户列表
    public List<User> findUser(String time1,String time2,String username,int pageno,int allpage);

    //-------文档上传
    public int upFile(UpFile up);
}
