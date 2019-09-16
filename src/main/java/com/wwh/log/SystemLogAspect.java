package com.wwh.log;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.After;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.stereotype.Component;

/**
 * @author zx
 * @desc 切点类
 */
//切面扫描@Aspect
@Aspect
@Component
public class SystemLogAspect {

// 设置一个切点
    @Pointcut("execution (* com.wwh.test..*.*(..))")
    public void logPoint(){}

    //后置增强方法
    @After("logPoint()")
    public void after(JoinPoint joinPoint)
    {
        System.out.println("后置增强方法");
    }
}
