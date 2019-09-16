package com.wwh.tools;

import org.springframework.aop.AfterReturningAdvice;
import org.springframework.aop.MethodBeforeAdvice;

import java.lang.reflect.Method;
/**
 * 定义一个睡眠的通知（增强） 同时实现前置 和后置
 */
public class SleepHelper implements MethodBeforeAdvice, AfterReturningAdvice {
    @Override
    public void afterReturning(Object o, Method method, Object[] objects, Object o1) throws Throwable {
        //      方法后执行的操作
        //    这里可以写日志的操作类型
        //     一些功能方法触发后统一调用的公共方法
        System.out.println("起来写日报！");
    }

    @Override
    public void before(Method method, Object[] objects, Object o) throws Throwable {
        //方法执行前的操作
        System.out.println("作业交了吗？");
    }
}
