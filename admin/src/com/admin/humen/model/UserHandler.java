package com.admin.humen.model;


import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

public class UserHandler {
    Connection connection;
    Statement statement;
    ResultSet resultset;

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
    public User getUserByUserName(String username)
    {
        User user = null;
        try {
            connection = new SqlConnection().getConnection();
            statement = connection.createStatement();
            resultset = statement.executeQuery("select * from users where username='"+username+"' limit 1");
            if(resultset.next())
            {
                user=new User();
                user.setUserUID(resultset.getInt(1));
                user.setUsername(resultset.getString(2));
                user.setUserpass(resultset.getString(3));
                user.setUserpower(resultset.getInt(4));
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
        return user;
    }
    public void changePwd(String username,String pwdnew){
        try {
            connection = new SqlConnection().getConnection();
            statement = connection.createStatement();
            statement.execute("UPDATE users  SET userpass='"+pwdnew+"' WHERE username='"+username+"'");
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
    }
}
