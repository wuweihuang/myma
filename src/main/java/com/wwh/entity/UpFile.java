package com.wwh.entity;

import org.springframework.stereotype.Component;

import javax.annotation.Resource;

@Component
public class UpFile {
    private String topid;
    private String userid;
    private String uptime;
    private String filetitle;
    private String filetype;
    private String zhuangtai;
    private String intergation;
    private String area;
    @Resource
    private ZhuangTai zhuangTai;

    public UpFile(String topid, String userid, String time, String filetitle, String filetype, String zhuangtai, String intergation, String area) {
        this.topid = topid;
        this.userid = userid;
        this.uptime = time;
        this.filetitle = filetitle;
        this.filetype = filetype;
        this.zhuangtai = zhuangtai;
        this.intergation = intergation;
        this.area = area;
    }

    public UpFile(String userid, String time, String filetitle, String filetype, String zhuangtai, String intergation, String area) {
        this.userid = userid;
        this.uptime = time;
        this.filetitle = filetitle;
        this.filetype = filetype;
        this.zhuangtai = zhuangtai;
        this.intergation = intergation;
        this.area = area;
    }

    public UpFile() {
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

    public String getUptime() {
        return uptime;
    }

    public void setUptime(String uptime) {
        this.uptime = uptime;
    }

    public String getFiletitle() {
        return filetitle;
    }

    public void setFiletitle(String filetitle) {
        this.filetitle = filetitle;
    }

    public String getFiletype() {
        return filetype;
    }

    public void setFiletype(String filetype) {
        this.filetype = filetype;
    }

    public String getZhuangtai() {
        return zhuangtai;
    }

    public void setZhuangtai(String zhuangtai) {
        this.zhuangtai = zhuangtai;
    }

    public String getIntergation() {
        return intergation;
    }

    public void setIntergation(String intergation) {
        this.intergation = intergation;
    }

    public String getArea() {
        return area;
    }

    public void setArea(String area) {
        this.area = area;
    }
}
