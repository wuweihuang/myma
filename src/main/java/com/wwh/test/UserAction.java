package com.wwh.test;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.wwh.Biz.UserBiz;
import com.wwh.entity.User;
import com.wwh.log.Log;
import org.apache.struts2.ServletActionContext;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Component
@Controller
@RequestMapping("/admin")
public class UserAction{
    @Resource
    private UserBiz biz;
    private User user = new User();
    private int pageno=0;
    private int allpage=5;
    private String time1;
    private String time2;

    //----------用户登录
    @Log(operationType="用户登录",operationName="嘿嘿嘿")
    @RequestMapping(value = "/userLogin.action")
   public ModelAndView userLogin(HttpServletRequest request, User user)
   {
        User u = biz.userLogin(user.getUserid(),user.getPwd());
        request.getSession().setAttribute("user",u);
         ModelAndView mav = new ModelAndView();
         mav.setViewName("Wellcome");

         return mav;
   }

    //---------查找用户列表
//    public String findUserList()
//    {
//
//        List<User> list = biz.findUserList(pageno);
//        if(null!=list)
//        {
//
//           HttpSession session =  ServletActionContext.getRequest().getSession();
//           session.setAttribute("UserList",list);
//           return "success";
//        }else {
//            return "error";
//        }
//    }
//------------------判断注册账户是否存在
    @RequestMapping(value = "/userReg.action",method= RequestMethod.POST, produces="application/json;charset=utf-8")
    public @ResponseBody String userReg(String userid)
    {
        User u = biz.regTest(userid);
        if(null==u)
        {
            return "1";
        }else
        {
            return "0";
        }
    }
////--------------------注册用户
//    public String addUser()
//    {
//        boolean flag= biz.addUser(user);
//        if(flag)
//        {
//            return "ok";
//        }else{
//            return "no";
//        }
//    }
    //-------条件查找
    @RequestMapping(value = "/find.action")
    public ModelAndView find(HttpServletRequest request)
    {
        List<User> plist = biz.findUser(getTime1(),getTime2(),user.getUsername(),pageno,allpage);

        request.getSession().setAttribute("UserList",plist);
        ModelAndView mav = new ModelAndView();
        mav.setViewName("UserList");

        return mav;

    }

    public String getTime1() {
        return time1;
    }

    public void setTime1(String time1) {
        this.time1 = time1;
    }

    public String getTime2() {
        return time2;
    }

    public void setTime2(String time2) {
        this.time2 = time2;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

}
