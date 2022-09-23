

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Code Commmunity</title>
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
        <main class="secondary_background">
            <div class="container">

                <div class="col-md-6 offset-md-3">

                    <div class="card">


                        <div class="card-header text-center">
                            <span class="fa fa-3x fa-user-circle"></span>
                            <br>
                            Register here
                        </div>
                        <div class="card-body">
                            <form id="reg-form"action="RegisterServlet" method="post">
                                <div class="form-group">
                                    <label for="user_name">User Name</label>
                                    <input type="text" name="user_name" required="required" class="form-control" id="user_name" aria-describedby="emailHelp" placeholder="Enter Name">
                                    <!--<small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>-->


                                </div>
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Email address</label>
                                    <input type="email" name="user_email" required="required" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email">
                                    <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
                                </div>




                                <div class="form-group">
                                    <label for="exampleInputPassword1">Password</label>
                                    <input type="password" name="user_password" required="required" class="form-control" id="exampleInputPassword1" placeholder="Password">
                                </div>                 
                                <div class="form-group">
                                    <label for="gender">Select Gender</label>
                                    <input type="radio"  id="gender" name="gender" value="male"> Male
                                    <input type="radio"  id="gender" name="gender" value="female"> Female
                                </div> 
                                <div class="form-group">
                                    <textarea class="form-control" name="user_about" id="about" placeholder="Enter Something About Yourself"></textarea>
                                </div> 

                                <div class="form-check">
                                    <input type="checkbox" name="check" class="form-check-input" id="exampleCheck1">
                                    <label class="form-check-label" for="exampleCheck1">Terms and Conditions</label>
                                </div>

                                <br>       
                                <div class="container text-center" id="loader" style="display: none">
                                    <span class="fa fa-refresh fa-spin fa-3x"></span>
                                    <h4>Please wait</h4>
                                </div>



                                <button id="submit-btn" type="submit" style="margin-left:100px" class="btn btn-outline-light btn-lg primary_background"><span class="fa fa-user-plus"></span> Sign Up</button>
                                <a href="LoginPage.jsp"  class="btn btn-outline-light btn-lg primary_background"><span class="fa fa-user-circle fa-spin"></span> Login</a>
                            </form>
                        </div>
                        <div class="card-footer">

                        </div>
                    </div>

                </div>
            </div>

        </main>
        <%@include file="Footer.jsp" %>



        <script
            src="https://code.jquery.com/jquery-3.6.0.min.js"
            integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
        crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
        <script src="javascriptFiles/MyJS.js" type="text/javascript"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"></script>
        <script>
            $(document).ready(function () {
                console.log("loaded...")

                $('#reg-form').on('submit', function (event) {
                    event.preventDefault();

                    let form = new FormData(this);
                    $("#submit-btn").hide();
                    $("#loader").show();
                    $.ajax({
                        url: "RegisterServlet",
                        type: 'Post',
                        data: form,
                        success: function (data, textStatus, jqXHR) {
                            console.log(data);

                            if (data.trim() === 'done') {
                                $("#submit-btn").show();
                                $("#loader").hide();

                                swal("Registered successfully!. Redirecting to Login page ")
                                        .then((value) => {
                                            window.location = "LoginPage.jsp";
                                        });
                            } else {
                                swal("OOPs Something went wrong! Please try again")
                                        .then((value) => {
                                            window.location = "SignUp_Page.jsp";
                                        });
                            }
                        },
                        error: function (jqXHR, textStatus, errorThrown) {
                            $("#submit-btn").show();
                            $("#loader").hide();
                            swal("Something went wrong. Try again");


                        },
                        processData: false,
                        contentType: false
                    });

                });

            });




        </script>
    </body>
</html>
