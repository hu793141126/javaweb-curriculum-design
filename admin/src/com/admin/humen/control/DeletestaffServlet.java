package com.admin.humen.control;

import com.admin.humen.model.StaffHandler;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "DeletestaffServlet")
public class DeletestaffServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        response.setCharacterEncoding("UTF-8");
        request.setCharacterEncoding("UTF-8");
        String staffid = request.getParameter("uidstaff");
        StaffHandler staffHandler=new StaffHandler();
        int isdelete=staffHandler.deletestaffbyid(staffid);
        if(isdelete==0){
            request.getRequestDispatcher("staffhadler.jsp").forward(request, response);
        }else {
            request.getRequestDispatcher("staffhadler.jsp?deletesuccess=deletesuccess").forward(request, response);
        }
    }
}
