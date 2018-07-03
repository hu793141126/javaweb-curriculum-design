package com.admin.humen.model;
import  java.util.*;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
//处理员工显示信息界面
public class StaffInfoHandler {
        Connection connection;
        Statement statement;
        ResultSet resultset;
        public ArrayList<ArrayList> getstaffinfos() {
            ArrayList<ArrayList> staffinfos=new ArrayList<ArrayList>();

            try {
                connection = new SqlConnection().getConnection();
                statement = connection.createStatement();
                resultset = statement.executeQuery( "SELECT staff.`id`,department.`departmentname`,staff.`staffname`,staff.`staffsex`,staff.`staffage`,staff.`staffphone`,staff.`staffsalary`,staff.`istrain` FROM staff ,department  WHERE staff.`departmentid`=department.`id`");
                while (resultset.next())
                {
                    ArrayList info=new ArrayList();
                    info.add(resultset.getInt(1));
                    info.add(resultset.getString(2));
                    info.add(resultset.getString(3));
                    info.add(resultset.getString(4));
                    info.add(resultset.getInt(5));
                    info.add(resultset.getString(6));
                    info.add(resultset.getInt(7));
                    if(resultset.getInt(8)==1){
                        info.add(""+1);
                    }else {
                        info.add(""+0);
                    }
                    staffinfos.add(info);
                }


            } catch (SQLException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            } finally {
                try {
                    if (connection != null) {
                        connection.close();
                    }
                    if (statement != null) {
                        statement.close();
                    }
                    if (resultset != null) {
                        resultset.close();
                    }
                } catch (SQLException e) {
                    // TODO Auto-generated catch block
                    e.printStackTrace();
                }
            }
            return staffinfos;
        }
    }

