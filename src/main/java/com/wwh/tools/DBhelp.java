package com.wwh.tools;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import javax.annotation.Resource;
import java.io.IOException;
import java.io.Reader;

public class DBhelp {

    private static String sqlconf="SqlMapConfig.xml";
    private SqlSessionFactory sf;
    public static SqlSession getSession()
    {
        Reader reader=null;
        try {
            reader = Resources.getResourceAsReader(sqlconf);
        } catch (IOException e) {
            e.printStackTrace();
        }
//        连接工厂
        SqlSessionFactoryBuilder sfb= new SqlSessionFactoryBuilder();
        SqlSessionFactory sf = sfb.build(reader);

        return sf.openSession();
    }

}
