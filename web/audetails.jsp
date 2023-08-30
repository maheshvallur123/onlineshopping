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
                    <li><a href="pviewdetails.jsp">Product  Details</a></li>
                    <li><a href="block.jsp">Block List</a></li>
                    <li><a href="arating.jsp">Rating</a></li>
                    <li><a href="index.jsp">Logout</a></li>
                </ul>
            </div><br />
            <div class="abstract" style="background: yellowgreen">
                <center><h1 style="color: red">User Details</h1></center>
                <table style="margin-left: 350px;margin-top: -10px">
                    <tr>
                        <th>User ID</th>
                        <th>Name</th>
                        <th>Email</th>
                        <th>Date of Birth</th>
                        <th>Location</th>
                        <th>Contact No</th>
                    </tr>
                    
                    <%
                        try {
                            Connection con = Database.getConnection();
                            Statement st = con.createStatement();
                            ResultSet rs = st.executeQuery("select * from user");
                            while (rs.next()) {%>
                    <tr>
                        <td><%=rs.getString("id")%></td>
                        <td><%=rs.getString("name")%></td>
                        <td><%=rs.getString("email")%></td>
                        <td><%=rs.getString("dob")%></td>
                        <td><%=rs.getString("location")%></td>
                        <td><%=rs.getString("contactno")%></td>
                    </tr>
                    <% }
                        } catch (Exception e) {
                            e.printStackTrace();
                            System.out.println("Admin user details Page" + e.getMessage());
                        }
                    %>
                </table>
            </div>
        </div> <!-- /container -->
        <div>
            <p style="margin-left: 550px;color: red">Copyright © 2015&nbsp;<a href="" style="text-decoration: none;color: red">Designed by KK</a></p>
        </div>
    </body>
</html>