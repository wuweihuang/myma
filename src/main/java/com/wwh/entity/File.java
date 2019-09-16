package com.wwh.entity;

public class File {
    //-----------文档交互类
    private String topid=null;
    private String time=null;
    private String who=null;
    private String filename=null;
    private String filesize=null;
    private String filetype=null;
    private String downji=null;
    private String checktype=null;


    public File(String topid, String time, String who, String filename, String filesize, String filetype, String downji, String checktype) {
        this.topid = topid;
        this.time = time;
        this.who = who;
        this.filename = filename;
        this.filesize = filesize;
        this.filetype = filetype;
        this.downji = downji;
        this.checktype = checktype;
    }

    public File() {
    }

    public String getTopid() {
        return topid;
    }

    public void setTopid(String topid) {
        this.topid = topid;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }

    public String getWho() {
        return who;
    }

    public void setWho(String who) {
        this.who = who;
    }

    public String getFilename() {
        return filename;
    }

    public void setFilename(String filename) {
        this.filename = filename;
    }

    public String getFilesize() {
        return filesize;
    }

    public void setFilesize(String filesize) {
        this.filesize = filesize;
    }

    public String getFiletype() {
        return filetype;
    }

    public void setFiletype(String filetype) {
        this.filetype = filetype;
    }

    public String getDownji() {
        return downji;
    }

    public void setDownji(String downji) {
        this.downji = downji;
    }

    public String getChecktype() {
        return checktype;
    }

    public void setChecktype(String checktype) {
        this.checktype = checktype;
    }
}
