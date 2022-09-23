
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page isErrorPage="true" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sorry! Something went wrong....</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link href="CSS/MyStyle.css" rel="stylesheet" type="text/css"/>
        <style>
            .secondary_background{
               clip-path: polygon(30% 0%, 70% 0%, 94% 15%, 100% 70%, 100% 100%, 6% 91%, 0 50%, 4% 15%);

            }
        </style>
    </head>
    <body>
        <%@include file="NavBar.jsp" %>
        <div class="container text-center">
            <img src="Images/err.png" class="img-fluid">
            <h3 class="display-3">Sorry! Something went wrong...</h3>
            <h3 class="display-3"> <%= exception %></h3>
             <br>
            <a href="index.jsp" class="btn btn-outline-light btn-lg primary_background mt-3">Home</a>
        </div>
       
    </body>
</html>
