package com.wwh.Dao;

import com.wwh.entity.User;
import com.wwh.tools.DBhelper;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class UserDaoImpl implements UserDao {
    private String sql=null;
    private QueryRunner qr=null;

    //-------用户登录
    @Override
    public User userLogin(String userid, String pwd) {
        User u = null;
        try {
            sql="select * from tbluser where userid=? and pwd=?";
            qr=DBhelper.getQueryruRunner();
            Object [] obj = new Object[] {userid,pwd};
            u=qr.query(sql,new BeanHandler<>(User.class),obj);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return u;
    }

    //------------查找用户列表
    @Override
    public List<User> findUserList(int pageno) {
       List<User> list=null;
        try {
            sql="select * from tbluser where del='0'";
            qr= DBhelper.getQueryruRunner();
            list=qr.query(sql,new BeanListHandler<>(User.class));
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return list;
    }
    //-------------验证注册用户是否存在
    @Override
    public User regTest(String userid) {
        User u = null;
        try {
            sql="select * from tbluser where userid="+userid;
            qr=DBhelper.getQueryruRunner();
            u=qr.query(sql,new BeanHandler<>(User.class));

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return u;
    }
    //-------------------注册用户
    @Override
    public boolean addUser(User user) {
        boolean b=false;
        //注册时间
        SimpleDateFormat sd = new SimpleDateFormat("yyyy-MM-dd");
        String time4 = sd.format(new Date());
        try {
            sql="insert into tbluser(userid,pwd,username,phone,edu,job,email,regtime) value(?,?,?,?,?,?,?,?)";
            qr = DBhelper.getQueryruRunner();
            Object[] obj = new Object[]{user.getUserid(),user.getPwd(),user.getUsername(),user.getPhone(),user.getEdu(),user.getJob(),user.getEmail(),time4};
            int a = qr.update(sql,obj);
            if(a>0)
            {
                b=true;
            }else
            {
                b=false;
            }
        } catch (SQLException e) {
            b=false;
            e.printStackTrace();
        }
        return b;
    }
    //带条件查找用户列表
    @Override
    public List findUser(String time1,String time2, String username, int pageno){
        List<User> list = new ArrayList<>();
        try {
            qr = DBhelper.getQueryruRunner();
            List params = new ArrayList();
            sql = "select * from tbluser where 1=1";
            if (!(null==time1||"".equals(time1))) {
                sql += " and regtime>=?";
                params.add(time1);
            }
            if (!(null==time2||"".equals(time2)))
            {
                sql += " and regtime<=?";
                params.add(time2);
            }
            if(!(null==username||"".equals(username)))
            {
                sql+=" and username=?";
                params.add(username);
            }
            sql+= " and del='0' LIMIT "+(pageno-1)*5+","+5;

            System.out.println(sql);
            list = qr.query(sql,new BeanListHandler<>(User.class),params.toArray());
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return list;
    }
}
