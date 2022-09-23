/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.code.servlets;

import code.code.dao.PostDao;
import com.code.entities.Post;
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
public class AddPostServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void service(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
           
            int cid= Integer.parseInt(request.getParameter("cid"));
            String pTitle= request.getParameter("pTitle");
          
            String pContent= request.getParameter("pContent");
            String pCode= request.getParameter("pCode");
            Part part=request.getPart("pic");
            String picName = part.getSubmittedFileName();
            HttpSession session = request.getSession();
            UserSignUp user =(UserSignUp) session.getAttribute("currentUser");
            
           
            
           Post p = new Post(pTitle, pContent, pCode,part.getSubmittedFileName(), null, cid, user.getId());
            PostDao dao = new PostDao(ConnectionProvider.getConnection());
            if(dao.savePost(p))
            {
                
                String name = request.getRealPath("/")+ "blog_pics" + File.separator + part.getSubmittedFileName();
                Helper.saveFile(part.getInputStream(), name);
//                out.println("done");
              
            }
            else{
                out.println("not done");
            }
        }
    }
}
    