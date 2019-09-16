package com.wwh.Biz;

import com.wwh.Dao.ManagerDao;
import com.wwh.Dao.ManagerDaoImpl;
import com.wwh.entity.Manager;
import com.wwh.entity.UpFile;
import com.wwh.mapper.ManagerMapper;
import com.wwh.mapper.UserMapper;
import com.wwh.tools.DBhelp;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
@Service("manbiz")
public class ManagerBizImpl implements ManagerBiz {
    private SqlSession session;
    @Resource
    private ManagerMapper managerMapper;
    private ManagerDao dao = new ManagerDaoImpl();
  //------------------用户登录
    @Override
    public Manager manLogin(String manid, String pwd) {
//        session= DBhelp.getSession();
//        managerMapper=session.getMapper(ManagerMapper.class);
        return managerMapper.ManLogin(manid, pwd);
    }

    //---------管理员列表
    @Override
    public List<Manager> findManList(int pageno)
    {

        return dao.findManList(pageno);
    }

    @Override
    public boolean delUser(String topid) {
        return dao.delUser(topid);
    }

    @Override
    public List<UpFile> fileList(String filetitle,String filetype,String time1,String time2,String userid,int pageno,int allpage) {
//
//        session=DBhelp.getSession();
//        managerMapper=session.getMapper(ManagerMapper.class);
        Map<String,Object> map = new HashMap<String,Object>();
        map.put("filetitle",filetitle);
        map.put("filetype",filetype);
        map.put("time1",time1);
        map.put("time2",time2);
        map.put("userid",userid);
        map.put("pageno",pageno);
        map.put("allpage",allpage);
        List<UpFile> list=managerMapper.fileList(map);
        return list;
    }
}
