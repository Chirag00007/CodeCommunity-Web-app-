/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.code.servlets;

import code.code.dao.UserDao;
import com.code.entities.Message;
import com.code.entities.UserSignUp;
import com.code.helper.ConnectionProvider;
import com.code.helper.Helper;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

/**
 *
 * @author CHIRAG VOHRA
 */
@MultipartConfig
public class EditServlet extends HttpServlet {

    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
       response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet EditServlet</title>");            
            out.println("</head>");
            out.println("<body>");
            
            String userEmail = request.getParameter("user_email");
            String userName = request.getParameter("user_name");
            String userPassword = request.getParameter("user_password");
            String about = request.getParameter("user_about");
            Part part = request.getPart("user_image");
            
            String imageName=part.getSubmittedFileName();
            
            // get the user from the session;
            
            HttpSession s=request.getSession();
           UserSignUp user=(UserSignUp)s.getAttribute("currentUser");
            user.setEmail(userEmail);
            user.setName(userName);
            user.setAbout(about);
            user.setPassword(userPassword);
            String oldFile = user.getProfile();
            user.setProfile(imageName);
            
            UserDao userDao=new UserDao(ConnectionProvider.getConnection());
          boolean ans =   userDao.updateUser(user);
           if(ans){
               
               String path = request.getRealPath("/")+"pics" + File.separator + user.getProfile();
               String pathOldFile = request.getRealPath("/")+"pics" + File.separator + oldFile;
               Helper.deletFile(pathOldFile);
                  
                  if(Helper.saveFile(part.getInputStream(), path)){
                       Message msg = new Message("Profile Details Updated","success","alert-success");
              // HttpSession s = request.getSession();
                           s.setAttribute("msg", msg);
                  }
                  else{
                      Message msg = new Message("Something went wrong!  Try again","error","alert-danger");
               //HttpSession s = request.getSession();
               s.setAttribute("msg", msg);
                  }
                  response.sendRedirect("profile.jsp");
            
           } 
           else{
               Message msg = new Message("Something went wrong!  Try again","error","alert-danger");
               //HttpSession s = request.getSession();
               s.setAttribute("msg", msg);
           }
            out.println("</body>");
            out.println("</html>");
        }
    }
    }

    
    

