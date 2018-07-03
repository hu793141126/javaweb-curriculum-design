package com.admin.humen.model;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
public class StaffHandler {
    Connection connection;
    Statement statement;
    ResultSet resultset;
    public ArrayList<ArrayList> getsearchcontent(String type,String content){
        ArrayList<ArrayList> staffinfos=new ArrayList<ArrayList>();
        try {
            connection = new SqlConnection().getConnection();
            statement = connection.createStatement();
            if("id".equals(type)|| "departmentid".equals(type)) {
                resultset = statement.executeQuery("SELECT staff.`id`,department.`departmentname`,staff.`staffname`,staff.`staffsex`,staff.`staffage`,staff.`staffphone`,staff.`staffsalary`,staff.`istrain` FROM staff ,department  WHERE staff.`" + type + "`=" + content+" and  staff.`departmentid`=department.`id`");
            }else {
                resultset = statement.executeQuery("SELECT staff.`id`,department.`departmentname`,staff.`staffname`,staff.`staffsex`,staff.`staffage`,staff.`staffphone`,staff.`staffsalary`,staff.`istrain` FROM staff ,department  WHERE staff.`" + type + "`='" +content+"'and   staff.`departmentid`=department.`id`");
            }
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
    public int selectstaffbyclass(String selectclass,String selectcontent){
        int flag=0;
        try {
            connection = new SqlConnection().getConnection();
            statement = connection.createStatement();
            if("id".equals(selectclass)||"departmentid".equals(selectclass)) {
                resultset = statement.executeQuery("select  *from  staff where " + selectclass + "=" + selectcontent);
            }else {
                resultset = statement.executeQuery("select  *from  staff where " + selectclass + "='" + selectcontent+"'");
            }
            if(resultset.next()){
                flag=1;
            }
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            flag=0;
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
        return flag;
    }
    public int addstaff(String staffidvalue,String staffname,String staffsex,String staffage,String staffphone,String staffsalary,String staffistrain){
        int flag=0;
        try {
            connection = new SqlConnection().getConnection();
            statement = connection.createStatement();
            statement.execute("INSERT INTO staff (departmentid,staffname,staffsex,staffage,staffphone,staffsalary,istrain) VALUES ("+staffidvalue+",'"+staffname+"','"+staffsex+"',"+staffage+",'"+staffphone+"',"+staffsalary+","+staffistrain+");");
            flag=1;
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            flag=0;
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
        return flag;
    }
    public int deletestaffbyid(String staffid){
        int flag=0;
        try {
            connection = new SqlConnection().getConnection();
            statement = connection.createStatement();
            statement.execute("DELETE  FROM staff WHERE id="+staffid+";");
            flag=1;

        } catch (SQLException e) {
            flag=0;
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
        return flag;
    }
    public String getdepartmentidbyname(String departmentname){
        String id=null;
        try {
            connection = new SqlConnection().getConnection();
            statement = connection.createStatement();
            resultset = statement.executeQuery("select department.`id`from department where department.`departmentname`='"+departmentname+"'");
            if(resultset.next())
            {
                id=""+resultset.getInt(1);
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
        return id;
    }
    public int updatestaff(String staffid,String staffidvalue,String staffname,String staffsex,String staffage,String staffphone,String staffsalary,String staffistrain){
        int flag=0;
        try {
            connection = new SqlConnection().getConnection();
            statement = connection.createStatement();
            statement.execute(" UPDATE staff SET departmentid="+staffidvalue+",staffage="+staffage+",staffphone='"+staffphone+"',staffsalary="+staffsalary+",istrain="+staffistrain+" WHERE id="+staffid+";");
            flag=1;
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            flag=0;
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
        return flag;
    }
    public boolean checkUser(String username,String pwd) {
        boolean isMember = false;
        try {
            connection = new SqlConnection().getConnection();
            statement = connection.createStatement();
            resultset = statement.executeQuery("select * from users where username='"+username+"' limit 1");
            if(resultset.next())
            {
                if(pwd.equals(resultset.getString(3)))
                {
                    isMember = true;
                }

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
        return isMember;
    }
}
