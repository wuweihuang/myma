package com.wwh.entity;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import javax.annotation.Resource;
@Component
public class Person {
    private String name;
//    第一种
    @Resource
//    set/get方式
//    //第二种构造注入，有构造方法的话可以选择这个
//    @Autowired
    private Computer computer;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Computer getComputer() {
        return computer;
    }

    public void setComputer(Computer computer) {
        this.computer = computer;
    }
}
