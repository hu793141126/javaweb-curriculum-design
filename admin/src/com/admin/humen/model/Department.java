package com.admin.humen.model;

public class Department {
    private int id;
    private String departmentname;
    private String departmentcontroller;
    private String departmentduty;
    private int departmentnumbers;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getDepartmentname() {
        return departmentname;
    }

    public void setDepartmentname(String departmentname) {
        this.departmentname = departmentname;
    }

    public String getDepartmentcontroller() {
        return departmentcontroller;
    }

    public void setDepartmentcontroller(String departmentcontroller) {
        this.departmentcontroller = departmentcontroller;
    }

    public String getDepartmentduty() {
        return departmentduty;
    }

    public void setDepartmentduty(String departmentduty) {
        this.departmentduty = departmentduty;
    }

    public int getDepartmentnumbers() {
        return departmentnumbers;
    }

    public void setDepartmentnumbers(int departmentnumbers) {
        this.departmentnumbers = departmentnumbers;
    }
}
