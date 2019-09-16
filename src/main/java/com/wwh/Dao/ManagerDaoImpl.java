package com.wwh.Dao;

import com.wwh.entity.Manager;
import com.wwh.tools.DBhelper;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import java.sql.SQLException;
import java.util.List;

public class ManagerDaoImpl implements ManagerDao {


    private String sql=null;
    //------------------管理员登录
    @Override
    public Manager manLogin(String manid, String pwd){
        Manager man = null;
        try {
           sql="select * from Manager where manid=? and pwd=?";
            QueryRunner qr= DBhelper.getQueryruRunner();
            Object [] obj = new Object[]{manid,pwd};
            man = qr.query(sql,new BeanHandler<>(Manager.class),obj);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return man;
    }
    //---------管理员列表
    @Override
    public List<Manager> findManList(int pageno) {
        List<Manager> list = null;
        try {
            sql="select * from manager where del='0'";
            QueryRunner qr = DBhelper.getQueryruRunner();
            list=qr.query(sql,new BeanListHandler<>(Manager.class));
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return list;
    }

    @Override
    public boolean delUser(String topid) {
        boolean b=false;
        try {
            sql="update tbluser set del='1' where topid="+topid;
            QueryRunner qr = DBhelper.getQueryruRunner();
            int a = qr.update(sql);
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


}
