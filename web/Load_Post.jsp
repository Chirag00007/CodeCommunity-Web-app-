<%@page import="com.code.entities.UserSignUp"%>
<%@page import="code.code.dao.LikeDao"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="com.code.entities.Post"%>
<%@page import="com.code.helper.ConnectionProvider"%>
<%@page import="code.code.dao.PostDao"%>
<%
    UserSignUp user = (UserSignUp) session.getAttribute("currentUser");
    if (user == null) {
        response.sendRedirect("LoginPage.jsp");
    }
%>
<div class="row">    
    <%
        Thread.sleep(1000);
        PostDao d = new PostDao(ConnectionProvider.getConnection());

        int cid = Integer.parseInt(request.getParameter("cid"));
        // out.println(cid);

        List<Post> posts = null;

        if (cid == 0) {
            posts = d.getAllPosts();
        } else {
            posts = d.getPostbyCatId(cid);

        }

        if (posts.size() == 0) {
            out.println("<h3 class='display-3 text-center'>No Post in this Category</h3>");
            return;
        }
        for (Post p : posts) {

    %>



    <div class="col-md-6 mt-2">

        <div class="card">

            <img class="card-img-top" src="blog_pics/<%= p.getpPic()%>" alt="Loading...">

            <div class="card-body">

                <b>  <%=p.getpTitle()%> </b>
                <p> <%= p.getpContent()%> </p>
                <pre> <%= p.getpCode()%> </pre>

            </div>
            <div class="card-footer text-center primary_background" style="color: grey">
                <%
                    LikeDao ld = new LikeDao(ConnectionProvider.getConnection());
                %>
                <a href="show_blog_page.jsp?post_id=<%= p.getpId()%>" class="btn btn-outline-light btn-sm primary_background" style="border-radius: 6px;">Read more...</a>
                <a href="#" onclick="doLikea(<%=p.getpId()%>,<%=user.getId()%>)" class="btn btn-outline-light btn-sm primary_background" style="border-radius: 6px;"><i class="fa fa-thumbs-o-up"></i><span class="like-counter"><%=ld.countLikeOnPost(p.getpId())%></span></a>
                <a href="#" class="btn btn-outline-light btn-sm primary_background" style="border-radius: 6px;"><i class="fa fa-commenting-o"></i><span>3</span></a>
            </div>  
        </div>

    </div>
    <%
        }
    %>
</div>
<script>
    
function doLikea(uid, pid) {
                console.log(uid + "," + pid)
                const d={
                    uid:uid,
                    pid:pid,
                    operation:'like',
                   
                }
                $.ajax({
                    url : "LikeServlet",
                  
                    data : d,
                    success: function (data, textStatus, jqXHR) {
                       console.log(data); 
                       if(data.trim()=='true'){
                           let c = $(".like-counter").html();
                           c++;
                           $('.like-counter').html(c);
                       }
                    },
                    error: function (jqXHR, textStatus, errorThrown) {
                        console.log(data);
                    }
                })

            }
</script>