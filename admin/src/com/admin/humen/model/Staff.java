package com.admin.humen.model;

public class Staff {
    private int id;
    private int departmentid;
    private String staffname;
    private String staffsex;
    private  int staffage;
    private String staffphone;
    private  int staffsalary;
    private  int istrain;
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getDepartmentid() {
        return departmentid;
    }

    public void setDepartmentid(int departmentid) {
        this.departmentid = departmentid;
    }

    public String getStaffname() {
        return staffname;
    }

    public void setStaffname(String staffname) {
        this.staffname = staffname;
    }

    public String getStaffsex() {
        return staffsex;
    }

    public void setStaffsex(String staffsex) {
        this.staffsex = staffsex;
    }

    public int getStaffage() {
        return staffage;
    }

    public void setStaffage(int staffage) {
        this.staffage = staffage;
    }

    public String getStaffphone() {
        return staffphone;
    }

    public void setStaffphone(String staffphone) {
        this.staffphone = staffphone;
    }

    public int getStaffsalary() {
        return staffsalary;
    }

    public void setStaffsalary(int staffsalary) {
        this.staffsalary = staffsalary;
    }

    public int getIstrain() {
        return istrain;
    }

    public void setIstrain(int istrain) {
        this.istrain = istrain;
    }
}
