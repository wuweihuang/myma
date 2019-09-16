package com.wwh.entity;

import org.springframework.stereotype.Component;

import java.util.List;
import java.util.Map;
import java.util.Set;
@Component
public class Computer {
    private String cpu="222";
    private String price;
    private List<String> list;
    private Map<String,String> map;
    private Set<String> set;
    public Computer(String cpu, String price) {
        this.cpu = cpu;
        this.price = price;
    }

    public Computer() {
    }

    public Set<String> getSet() {
        return set;
    }

    public void setSet(Set<String> set) {
        this.set = set;
    }

    public List<String> getList() {
        return list;
    }

    public void setList(List<String> list) {
        this.list = list;
    }

    public Map<String, String> getMap() {
        return map;
    }

    public void setMap(Map<String, String> map) {
        this.map = map;
    }

    public String getCpu() {
        return cpu;
    }

    public void setCpu(String cpu) {
        this.cpu = cpu;
    }

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }
}
