<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="action.Database"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Online Shopping Feedback</title>
        <meta name="description" content="">
        <meta name="author" content="templatemo">
        <link href="css/style.css" rel="stylesheet">
    </head>
    <body style="background-image: url('images/bg3.jpg');">
        <div id="container" class="container">
            <div style="margin-left: 300px;">
                <a href="" rel="nofollow"><img src="images/templatemo_header.png" height="100" width="700"/></a>
            </div>
            <div>
                <ul class="nav nav-justified">
                    <li><a href="ahome.jsp">Home</a></li>
                    <li><a href="additems.jsp">Add New Item</a></li>
                    <li><a href="pviewdetails.jsp">Product Details</a></li>
                    <li><a href="block.jsp">Blocked List</a></li>
                    <li><a href="arating.jsp">Rating</a></li>
                    <li><a href="index.jsp">Logout</a></li>
                </ul>
            </div><br />
            <div class="abstract" style="background: yellowgreen">
                <center><h1 style="color: red">Product Rating Details</h1></center>
                <table style="margin-left: 150px;margin-top: -10px">
                    <tr>
                        <th>User Name</th>
                        <th>Product Item</th>
                        <th>Rating Status</th>
                        <th>Rating</th>
                        <th>Comments</th>
                        <th>Ip Address</th>
                        <th>Feedback Time</th>
                        <th>Drop</th>
                        <th>Status</th>
                    </tr>
                    
                    <%
                        try {
                            Connection con = Database.getConnection();
                            Statement st = con.createStatement();
                            ResultSet rs = st.executeQuery("select * from feed");
                            while (rs.next()) {%>
                    <tr>
                        <td><%=rs.getString("name")%></td>
                        <td><%=rs.getString("feedback")%></td>
                        <td><%=rs.getString("rating")%></td>
                        <td><%=rs.getString("ratingvalues")%></td>
                        <td><%=rs.getString("comments")%></td>
                        <td><%=rs.getString("ipaddr")%></td>
                        <td><%=rs.getString("date_time")%></td>
                        <td><a href="rdelete.jsp?<%=rs.getString("name")%>,<%=rs.getString("feedback")%>" style="text-decoration: none">Delete</a></td>
                        <td><a href="redit.jsp?<%=rs.getString("name")%>,<%=rs.getString("feedback")%>" style="text-decoration: none">Edit</a></td>
                    </tr>
                    <% }
                        } catch (Exception e) {
                            e.printStackTrace();
                            System.out.println("Admin product details Page" + e.getMessage());
                        }
                    %>
                </table>
            </div>
        </div> <!-- /container -->
        <div>
            <p style="margin-left: 550px;color: red">Copyright � 2015&nbsp;<a href="" style="text-decoration: none;color: red">Designed by KK</a></p>
        </div>
    </body>
</html>