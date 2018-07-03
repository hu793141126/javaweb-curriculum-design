package com.admin.humen.control;

import com.admin.humen.model.StaffHandler;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "SerachstaffServlet")
public class SerachstaffServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int isserch=0;
        String departmentid=null;
        String type=null;
        String content=null;
        response.setContentType("text/html");
        response.setCharacterEncoding("UTF-8");
        request.setCharacterEncoding("UTF-8");
        String selectclass=request.getParameter("selectclass");
        String selectcontent=request.getParameter("selectcontent");
        StaffHandler staffHandler=new StaffHandler();
        if("departmentname".equals(selectclass)){
            departmentid=staffHandler.getdepartmentidbyname(selectcontent);
            isserch=staffHandler.selectstaffbyclass("departmentid",departmentid);
            type="departmentid";
            content=departmentid;
        }else{
            type=selectclass;
            content=selectcontent;
            isserch=staffHandler.selectstaffbyclass(selectclass,selectcontent);
        }
        if(isserch==0){
            request.getRequestDispatcher("staffhadler.jsp?checksearch=no").forward(request, response);
        }else{
            request.getRequestDispatcher("staffhadler.jsp?checksearch=yes&type="+type+"&content="+content).forward(request, response);
        }
    }
}
