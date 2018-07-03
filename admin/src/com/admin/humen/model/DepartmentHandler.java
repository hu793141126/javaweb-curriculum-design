package com.admin.humen.model;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
public class DepartmentHandler {
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
}
