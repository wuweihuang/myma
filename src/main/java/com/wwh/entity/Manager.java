package com.wwh.entity;


import java.util.ArrayList;
import java.util.List;

public class Manager {
    private String topid=null;
    private String manid=null;
    private String pwd=null;
    private String name=null;
    private String age=null;
    private String phone=null;
    private String del=null;
    private List<String> plist = new ArrayList<String>();
    public Manager(String manid, String pwd) {
        this.manid = manid;
        this.pwd = pwd;
    }

    public Manager(String topid, String manid, String pwd, String name, String age, String phone, String del, List<String> plist) {
        this.topid = topid;
        this.manid = manid;
        this.pwd = pwd;
        this.name = name;
        this.age = age;
        this.phone = phone;
        this.del = del;
        this.plist = plist;
    }

    public Manager() {
    }

    public String getTopid() {
        return topid;
    }

    public void setTopid(String topid) {
        this.topid = topid;
    }

    public String getManid() {
        return manid;
    }

    public void setManid(String manid) {
        this.manid = manid;
    }

    public String getPwd() {
        return pwd;
    }

    public void setPwd(String pwd) {
        this.pwd = pwd;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getAge() {
        return age;
    }

    public void setAge(String age) {
        this.age = age;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getDel() {
        return del;
    }

    public void setDel(String del) {
        this.del = del;
    }

    public List<String> getPlist() {
        return plist;
    }

    public void setPlist(List<String> plist) {
        this.plist = plist;
    }
}
