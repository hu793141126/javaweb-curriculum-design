package com.admin.humen.control;

import com.admin.humen.model.User;
import com.admin.humen.model.UserHandler;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "ChangepwdServlet")
public class ChangepwdServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        HttpSession session = request.getSession();
        User user=(User) session.getAttribute("user");
        String pwdold = request.getParameter("pwdold");
        String pwdnew = request.getParameter("pwdnew");
        String pwdrept =request.getParameter("pwdrept");
        String username =user.getUsername();
        UserHandler userHandler = new UserHandler();
        if(userHandler.checkUser(username,pwdold)){
            if (pwdnew.equals(pwdrept)) {
                userHandler.changePwd(username,pwdnew);
                request.getRequestDispatcher("changepwd.jsp?changepwdsuccess=changepwdsuccess").forward(request, response);
            }else{
                request.getRequestDispatcher("changepwd.jsp?repeterror=repeterror").forward(request, response);
            }
        }else{
                request.getRequestDispatcher("changepwd.jsp?pwdolderror=pwdolderror").forward(request, response);
        }
    }
}
