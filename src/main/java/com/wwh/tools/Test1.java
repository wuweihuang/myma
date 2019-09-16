package com.wwh.tools;

import com.wwh.entity.Computer;
import com.wwh.entity.Person;
import com.wwh.entity.UpFile;
import com.wwh.entity.User;
import com.wwh.mapper.UserMapper;
import com.wwh.test.UserAction;
import org.apache.ibatis.session.SqlSession;
import org.junit.jupiter.api.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.applet.Applet;
import java.applet.AppletContext;
import java.applet.AudioClip;
import java.awt.*;
import java.io.IOException;
import java.io.InputStream;
import java.net.URL;
import java.util.Enumeration;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

//代码测试的类
public class Test1 {

//    查询
    @Test
    public  void findUserAll()
    {
        //得到数据库连接
        SqlSession session = DBhelp.getSession();
        List<User> list = session.selectList("findUserAll");
        System.out.println(list.size());
        session.commit();
        session.close();
    }

//    增加
    @Test
    public void addUser(){

        SqlSession session = DBhelp.getSession();
        User user = new User("900","900","啊啊啊");
        System.out.println(user);
        session.insert("addUser",user);
        session.commit();
        session.close();
    }

@Test
    public void check()
    {
        SqlSession session = DBhelp.getSession();
        UserMapper userMapper = session.getMapper(UserMapper.class);
        System.out.println(userMapper.check(new Integer(100)).getArea());

    }
    @Test
    public void findc()
    {
        SqlSession session = DBhelp.getSession();
        UserMapper userMapper = session.getMapper(UserMapper.class);
        List<UpFile> u = userMapper.findc(1);
        for (UpFile up :u) {
            System.out.println(up.getUserid());
        }
    }

//    spring测试
    public static void main(String[] args) {
        //引用配置文件
        ApplicationContext ac = new ClassPathXmlApplicationContext("applicationContext-add.xml");
//        Computer c=ac.getBean("computer", Computer.class);
//       List<String> list=c.getList();
//        for (String str:list) {
//            System.out.println(str);
//        }
//        Map<String,String> map = c.getMap();
//        System.out.println(map.get("1"));
//        System.out.println(c.getCpu());
//
//        Person p =ac.getBean("person",Person.class);
//        System.out.println(p.getComputer().getCpu());

//        UserAction u  = ac.getBean("userAction",UserAction.class);
//        System.out.println(u.userLogin());
    }
}
