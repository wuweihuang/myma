package com.wwh.interceptor;


import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.Interceptor;

public class FirstInterceptor implements Interceptor {
    @Override
    public void destroy() {

    }

    @Override
    public void init() {

    }

    @Override
    public String intercept(ActionInvocation actionInvocation) throws Exception {

        Object obj=actionInvocation.getInvocationContext().getSession().get("man");
        if(null!=obj)
        {
            actionInvocation.invoke();
        }
        return "error";
    }
}
