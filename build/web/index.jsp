

<%@page import="com.code.helper.ConnectionProvider"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Code Community</title>
          
              
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link href="CSS/MyStyle.css" rel="stylesheet" type="text/css"/>
        <style>
            .secondary_background{
               clip-path: polygon(20% 0%, 80% 0%, 100% 16%, 100% 88%, 80% 100%, 29% 90%, 0 100%, 0 15%);
            }
        </style>
    </head>
    <body>
     
        <!--NavBar-->
        <%@include file="NavBar.jsp" %>
        <div class="container-fluid">
            <div class="container">
                 <div class="jumbotron secondary_background">
                <h3 class="display-3">Welcome to World Of Programming </h3>
                <h3>Code Community</h3>
                <p>A programming language is any set of rules that converts strings, or graphical program elements in the case of visual programming languages, to various kinds of machine code output.</p>
                <a href="SignUp_Page.jsp"class="btn btn-outline-light btn-lg primary_background"><span class="fa fa-user-plus"></span> Start! its Free</a>
                <a href="LoginPage.jsp" class="btn btn-outline-light btn-lg primary_background"> <span class="fa fa-user-circle fa-spin"></span>  Login</a>
            
                 </div>
            </div>
        </div>
        
        <div class="container">
            
            <div class="row mb-4">
                
                <div class="col-md-4">
                    <div class="card card-bg">
                         <div class="card-body">
                            <h5 class="card-title ">Algorithms</h5>
                                <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                                     <a href="#" class="btn btn-outline-light btn-lg primary_background">Read More</a>
                         </div>
                      </div>
                </div>
                <div class="col-md-4">
                    <div class="card card-bg">
                         <div class="card-body">
                            <h5 class="card-title ">Data Structures</h5>
                                <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                                     <a href="#" class="btn btn-outline-light btn-lg primary_background">Read More</a>
                         </div>
                      </div>
                </div>
                <div class="col-md-4">
                    <div class="card card-bg">
                         <div class="card-body">
                            <h5 class="card-title ">Web Technologies</h5>
                                <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                                     <a href="#" class="btn btn-outline-light btn-lg primary_background">Read More</a>
                         </div>
                      </div>
                </div>
            </div>
        </div>
        <div class="container">
            
            <div class="row mb-4">
                
                <div class="col-md-4">
                    <div class="card card-bg">
                         <div class="card-body">
                            <h5 class="card-title ">Android Development</h5>
                                <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                                     <a href="#" class="btn btn-outline-light btn-lg primary_background">Read More</a>
                         </div>
                      </div>
                </div>
                <div class="col-md-4">
                    <div class="card card-bg">
                         <div class="card-body">
                            <h5 class="card-title ">Artificial Intelligence</h5>
                                <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                                     <a href="#" class="btn btn-outline-light btn-lg primary_background">Read More</a>
                         </div>
                      </div>
                </div>
                <div class="col-md-4">
                    <div class="card card-bg">
                         <div class="card-body">
                            <h5 class="card-title ">Machine Learning</h5>
                                <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                                     <a href="#" class="btn btn-outline-light btn-lg primary_background">Read More</a>
                         </div>
                      </div>
                </div>
            </div>
        </div>
         <%@include file="Footer.jsp" %>
      <!--JavaScript-->
      <script
  src="https://code.jquery.com/jquery-3.6.0.min.js"
  integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
  crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
 <script src="javascriptFiles/MyJS.js" type="text/javascript"></script>
    
    </body>
</html>
