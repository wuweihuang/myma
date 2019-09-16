package com.wwh.entity;

import org.springframework.stereotype.Component;

import java.util.List;

@Component
public class ZhuangTai {
    private String id;
    private String name;
    private List<UpFile> up;
    public ZhuangTai(String id, String name) {
        this.id = id;
        this.name = name;
    }

    public ZhuangTai() {
    }

    public List<UpFile> getUp() {
        return up;
    }

    public void setUp(List<UpFile> up) {
        this.up = up;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
}
