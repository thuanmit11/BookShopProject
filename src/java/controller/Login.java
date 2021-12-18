/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dal.UserDAO;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.User;
import utils.Encrypt;

/**
 *
 * @author Seth_Etherald
 */
@WebServlet(name = "login", urlPatterns = {"/login"})
public class Login extends HttpServlet {
    //If someone try to load login with doGet, 
    //they will only be redirect back to login page
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getRequestDispatcher("signin.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        UserDAO dao = new UserDAO();
        String username = request.getParameter("loginUsername");
        String password = request.getParameter("loginPassword");
        //Hash the password right here before calling login from DAO
        User user = dao.login(username, Encrypt.md5(password));
        if (user == null) {
            request.setAttribute("loginMessage", "Wrong Username or Password");
            request.getRequestDispatcher("signin.jsp").forward(request, response);
        } else {
            HttpSession session = request.getSession();
            session.setAttribute("user", user);
            //Replace the string "home" with the servlet leading to homepage
            request.getRequestDispatcher("index.html").forward(request, response);
        }
    }
}
