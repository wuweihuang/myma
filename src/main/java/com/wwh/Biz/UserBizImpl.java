package com.wwh.Biz;

import com.wwh.Dao.UserDao;
import com.wwh.Dao.UserDaoImpl;
import com.wwh.entity.UpFile;
import com.wwh.entity.User;
import com.wwh.mapper.UserMapper;
import com.wwh.tools.DBhelp;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
@Service("biz")
public class UserBizImpl implements UserBiz {
    private SqlSession session;
    @Resource
    private UserMapper userMapper;
    private UserDao dao = new UserDaoImpl();
    //-------用户登录
    @Override
    public User userLogin(String userid, String pwd) {

//        session = DBhelp.getSession();
//        userMapper=session.getMapper(UserMapper.class);

        return userMapper.userLogin(userid,pwd);
    }

    //------------查找用户列表
    @Override
    public List<User> findUserList(int pageno) {

        //根据映射器来实现逻辑，Dao无用，可删除
//        SqlSession session = DBhelp.getSession();
//        UserMapper userMapper = session.getMapper(UserMapper.class);
//        return userMapper.findList();
        return dao.findUserList(pageno);
    }

    //-------------验证注册用户是否存在
    @Override
    public User regTest(String userid) {
//        session = DBhelp.getSession();
//        userMapper = session.getMapper(UserMapper.class);
        return userMapper.regTest(userid);
    }

    //-------------------注册用户
    @Override
    public int addUser(User user) {
//        session=DBhelp.getSession();
//        userMapper = session.getMapper(UserMapper.class);
        int a = 0;
        try {
            a = userMapper.addUser(new UpFile());
            session.commit();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return a;
    }
    //带条件查找用户列表
    @Override
    public List findUser(String time1,String time2,String username, int pageno,int allpage) {
//        session=DBhelp.getSession();
//        userMapper = session.getMapper(UserMapper.class);
        Map<String,Object> map = new HashMap<String,Object>();
        map.put("time1",time1);
        map.put("time2",time2);
        map.put("username",username);
        map.put("pageno",pageno);
        map.put("allpage",allpage);
        return userMapper.findUser(map);
    }
    //---------------文件上传
    @Override
    public int upFile(UpFile up) {
        SqlSession session = DBhelp.getSession();
        int a = session.insert("file",up);
        session.commit();
        return a;
    }
}
