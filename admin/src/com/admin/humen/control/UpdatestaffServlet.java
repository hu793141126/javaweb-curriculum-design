package com.admin.humen.control;

import com.admin.humen.model.StaffHandler;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "UpdatestaffServlet")
public class UpdatestaffServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        response.setCharacterEncoding("UTF-8");
        request.setCharacterEncoding("UTF-8");
        String staffid = request.getParameter("staffid1");
        String staffname = request.getParameter("staffname1");
        String staffsex = request.getParameter("staffsex1");
        String staffdepartment = request.getParameter("staffdepartment1");
        String staffage = request.getParameter("staffage1");
        String staffsalary = request.getParameter("staffsalary1");
        String staffphone= request.getParameter("staffphone1");
        String  staffistrain= request.getParameter("staffistrain1");
        StaffHandler staffHandler=new StaffHandler();
        String staffidvalue=staffHandler.getdepartmentidbyname(staffdepartment);
        System.out.println(""+staffid+staffname+staffsex+"0.0"+staffdepartment+staffage+staffsalary+staffphone+staffistrain);
        if(staffidvalue!=null){
            int isupdate=0;
            isupdate=staffHandler.updatestaff(staffid,staffidvalue,staffname,staffsex,staffage,staffphone,staffsalary,staffistrain);
            System.out.println("//1:"+staffidvalue+"//2:"+isupdate);
            if(isupdate==0){
                //插入内容错误
                request.getRequestDispatcher("staffhadler.jsp?error=updatecontenterror").forward(request, response);
            }else{
                //成功插入
                request.getRequestDispatcher("staffhadler.jsp?success=updatesuccess").forward(request, response);
            }
        }else{
            //找不到部门
            request.getRequestDispatcher("staffhadler.jsp?error=updatedepartmentwrong").forward(request, response);
        }
    }
}
