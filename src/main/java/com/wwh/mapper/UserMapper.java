package com.wwh.mapper;

import com.wwh.entity.UpFile;
import com.wwh.entity.User;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;
@Repository
public interface UserMapper {
    //----查找列表
    public List<User> findList();
    //---------新增
    public void addUser(User user);
    //-----用户登录
    //---登录或者少参数可以使用注解来写，多的参数可以使用map或者实体类
    public User userLogin(@Param("userid") String userid, @Param("pwd") String pwd);
    //---------带条件查找用户列表
    public List<User> findUser(Map<String,Object> map);
    //-------------验证注册用户是否存在
    public User regTest(@Param("userid") String userid);
    //-------------------注册用户
    public int addUser(UpFile upFile);
    //-----------多表查询
    public UpFile check(Integer id);
    //-------一对多
    public List<UpFile> findc(Integer id);

}
