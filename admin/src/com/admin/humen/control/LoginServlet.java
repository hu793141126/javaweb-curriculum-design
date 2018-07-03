package com.admin.humen.control;

import com.admin.humen.model.UserHandler;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "LoginServlet")
public class LoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        String username = request.getParameter("username");
        String password = request.getParameter("userpass");
        UserHandler userHandler = new UserHandler();
        if(userHandler.checkUser(username, password))
        {
            HttpSession session = request.getSession();
            session.setAttribute("user", userHandler.getUserByUserName(username));
            request.getRequestDispatcher("home.jsp").forward(request, response);
        }else
        {
            request.getRequestDispatcher("index.jsp?error=wrong").forward(request, response);
        }
    }
}
