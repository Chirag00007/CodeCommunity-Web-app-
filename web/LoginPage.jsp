
<%@page import="com.code.entities.Message"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
              clip-path: polygon(0% 15%, 7% 30%, 15% 0%, 85% 0%, 89% 29%, 100% 15%, 100% 85%, 91% 71%, 85% 100%, 15% 100%, 6% 74%, 0% 85%);
            }
        </style>
    </head>
    <body>
         <%@include file="NavBar.jsp" %>
<!--        <main class="d-flex align-items-center" style="height: 100vh">
            <div class="container">
                
                <div class="row">
                    <div class="col-md-4 offset-md4">
                        
                        <div class="card">
                            <div class="class-header">
                                <p>Login Here</p>
                            </div>
                            <div class="card-body">
                                <form>
                                <div class="form-group">
                                  <label for="exampleInputEmail1">Email address</label>
                                  <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email">
                                  <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
                                </div>
                                <div class="form-group">
                                  <label for="exampleInputPassword1">Password</label>
                                  <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
                                </div>
                                <div class="form-check">
                                  <input type="checkbox" class="form-check-input" id="exampleCheck1">
                                  <label class="form-check-label" for="exampleCheck1">Check me out</label>
                                </div>
                                <button type="submit" class="btn btn-primary">Submit</button>
                              </form>
                            </div>
                        </div>
                    </div>
                    
                </div>
                    
            </div>
        </main>-->
        
<!--<div class="container-fluid">
            <div class="container">
                 <div class="jumbotron secondary_background">
                     <h3 class="display-3 text-center"><span class="fa fa-user"></span>Login Here </h3>
                     
                     <form action="LoginServlet" method="post">
                <div class="form-group">
                  <label for="exampleInputEmail1">Email address</label>
                  <input type="email" name="email"class="form-control " id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email">
                  <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
                </div>
                <div class="form-group">
                  <label for="exampleInputPassword1">Password</label>
                  <input type="password" name="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
                </div>
                <div class="container text-center">
                    <button type="submit" class="btn btn-primary"><span class="fa fa-user"></span> Login </button>
                    <a href="SignUp_Page.jsp" class="btn btn-primary"><span class="fa fa-user-plus"></span> Sign Up</a>
                </div> 
                
              </form>
                               </div>
                          </div>
                      </div>-->
                     <main class="secondary_background">
                              <div class="container">
                
                                  <div class="col-md-6 offset-md-3">
                                                <div class="card">
                                                <div class="card-header text-center">
                                                      <span class="fa fa-3x fa-user-circle"></span>
                                <br>
                                Login Here
                            </div>
                    <%
                   Message m = (Message)  session.getAttribute("msg");
                     if(m!=null)
                     {
                     %>
                     <div class="alert <%= m.getCssClass() %>" role="alert">
                         
                       <%= m.getContent() %>
                      </div>
                     <%
                     session.removeAttribute("msg");
                     }
                     %>
                            <div class="card-body">
                                <form action="LoginServlet" method="post">
                         <div class="form-group">
                  <label for="exampleInputEmail1">Email address</label>
                  <input type="email" name="email" class="form-control " required="required" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email">
                  <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
                </div>
                       <div class="form-group">
                  <label for="exampleInputPassword1">Password</label>
                  <input type="password" name="password" class="form-control" required="required" id="exampleInputPassword1" placeholder="Password">
                </div>
               <button  class="btn btn-outline-light btn-lg primary_background" type="submit" style="margin-left:100px"><span class="fa fa-user-circle fa-spin"></span> Login</button>                     
               <a href="SignUp_Page.jsp" id="submit-btn"   class="btn btn-outline-light btn-lg primary_background"><span class="fa fa-user-plus"></span> Sign Up</a>
                                    
                    </form>
                            </div>
                            <div class="card-footer">
                                
                            </div>
                        </div>
                   
                </div>
            </div>
            
        </main>

        <script
  src="https://code.jquery.com/jquery-3.6.0.min.js"
  integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
  crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
 <script src="javascriptFiles/MyJS.js" type="text/javascript"></script>
    </body>
</html>
