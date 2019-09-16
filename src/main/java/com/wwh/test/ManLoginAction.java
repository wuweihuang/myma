package com.wwh.test;

import com.wwh.Biz.ManagerBiz;
import com.wwh.Biz.ManagerBizImpl;
import com.wwh.entity.Manager;
import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.SessionAware;
import org.springframework.stereotype.Controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.util.Map;
@Controller
public class ManLoginAction implements SessionAware {
    private Manager man;
    @Resource
    private ManagerBiz manbiz;
    private Map<String, Object> session=null;
    public String execute()
    {
        man = manbiz.manLogin(man.getManid(),man.getPwd());
        if(null!=man)
        {
            //---------用户对象存在session
//            Map<String,Object> session=ActionContext.getContext().getSession();
//            session.put("man",man);
            //----------------servlet
           HttpSession session = ServletActionContext.getRequest().getSession();
           session.setAttribute("man",man);
           //---------------让ACTION实现SessionAware接口
//            session.put("man",man);
            return "success";
        }else
        {
            return "error";
        }
    }

    public Manager getMan() {
        return man;
    }

    public void setMan(Manager man) {
        this.man = man;
    }

    @Override
    public void setSession(Map<String, Object> map) {
        session=map;
    }
}
