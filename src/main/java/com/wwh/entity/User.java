package com.wwh.entity;

public class User {

    private String topid=null;
    private String userid=null;
    private String pwd=null;
    private String username=null;
    private String phone=null;
    private String email=null;
    private String del=null;
    private String sex=null;
    private String edu =null;
    private String job=null;
    private String integration=null;
    private String regtime=null;
    private String upfile=null;
    private String downfile=null;

    public User(String topid, String userid, String pwd, String username, String phone, String email, String del, String sex, String edu, String job, String integration, String regtime, String upfile, String downfile) {
        this.topid = topid;
        this.userid = userid;
        this.pwd = pwd;
        this.username = username;
        this.phone = phone;
        this.email = email;
        this.del = del;
        this.sex = sex;
        this.edu = edu;
        this.job = job;
        this.integration = integration;
        this.regtime = regtime;
        this.upfile = upfile;
        this.downfile = downfile;
    }

    public User(String userid) {
        this.userid = userid;
    }

    public User(String userid, String pwd, String username) {
        this.userid = userid;
        this.pwd = pwd;
        this.username = username;
    }

    public User() {
    }

    public String getUpfile() {
        return upfile;
    }

    public void setUpfile(String upfile) {
        this.upfile = upfile;
    }

    public String getDownfile() {
        return downfile;
    }

    public void setDownfile(String downfile) {
        this.downfile = downfile;
    }

    public String getRegtime() {
        return regtime;
    }

    public void setRegtime(String regtime) {
        this.regtime = regtime;
    }

    public String getDel() {
        return del;
    }

    public void setDel(String del) {
        this.del = del;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public String getEdu() {
        return edu;
    }

    public void setEdu(String edu) {
        this.edu = edu;
    }

    public String getJob() {
        return job;
    }

    public void setJob(String job) {
        this.job = job;
    }

    public String getIntegration() {
        return integration;
    }

    public void setIntegration(String integration) {
        this.integration = integration;
    }

    public String getTopid() {
        return topid;
    }

    public void setTopid(String topid) {
        this.topid = topid;
    }

    public String getUserid() {
        return userid;
    }

    public void setUserid(String userid) {
        this.userid = userid;
    }

    public String getPwd() {
        return pwd;
    }

    public void setPwd(String pwd) {
        this.pwd = pwd;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }
}
