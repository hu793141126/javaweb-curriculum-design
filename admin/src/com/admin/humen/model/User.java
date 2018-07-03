package com.admin.humen.model;

public class User {
    private String username;
    private String userpass;
    private int userpower;
    private int userUID;

    public int getUserUID() {
        return userUID;
    }

    public void setUserUID(int userUID) {
        this.userUID = userUID;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getUserpass() {
        return userpass;
    }

    public void setUserpass(String userpass) {
        this.userpass = userpass;
    }

    public int getUserpower() {
        return userpower;
    }

    public void setUserpower(int userpower) {
        this.userpower = userpower;
    }


}
