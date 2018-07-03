package com.admin.humen.control;

import com.admin.humen.model.StaffHandler;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "AddstaffServlet")
public class AddstaffServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        response.setCharacterEncoding("UTF-8");
        request.setCharacterEncoding("UTF-8");

        String staffname = request.getParameter("staffname");
        String staffsex = request.getParameter("staffsex");
        String staffdepartment = request.getParameter("staffdepartment");
        String staffage = request.getParameter("staffage");
        String staffsalary = request.getParameter("staffsalary");
        String staffphone= request.getParameter("staffphone");
        String  staffistrain= request.getParameter("staffistrain");
        StaffHandler staffHandler=new StaffHandler();
        String staffidvalue=staffHandler.getdepartmentidbyname(staffdepartment);
        if(staffidvalue!=null){
            int isadd=0;
            isadd=staffHandler.addstaff(staffidvalue,staffname,staffsex,staffage,staffphone,staffsalary,staffistrain);
            if(isadd==0){
                //插入内容错误
                request.getRequestDispatcher("staffhadler.jsp?error=addcontenterror").forward(request, response);
            }else{
                //成功插入
                request.getRequestDispatcher("staffhadler.jsp?success=addsuccess").forward(request, response);
            }
        }else{
            //找不到部门
            request.getRequestDispatcher("staffhadler.jsp?error=updatedepartmentwrong").forward(request, response);
        }
    }
}
