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
                <center><h1 style="color: red;margin-top: -10px">Product Details</h1></center>
                <table style="margin-left: 280px;margin-top: -20px">
                    <tr>
                        <th>Product Name</th>
                        <th>Product Item</th>
                        <th>Brand Name</th>
                        <th>Price</th>
                        <th>Validity</th>
                        <th>Delete</th>
                        <th>Update</th>
                    </tr>
                    <tr>
                    <%
                        try {
                            Connection con = Database.getConnection();
                            Statement st = con.createStatement();
                            ResultSet rs = st.executeQuery("select * from product");
                            while (rs.next()) {%>
                        <td><%=rs.getString("pname")%></td>
                        <td><%=rs.getString("pitems")%></td>
                        <td><%=rs.getString("bname")%></td>
                        <td><%=rs.getString("price")%></td>
                        <td><%=rs.getString("validity")%></td>
                        <td><a href="pdelete.jsp?<%=rs.getString("pitems")%>,<%=rs.getString("bname")%>" style="text-decoration: none">Remove</a></td>
                        <td><a href="pedit.jsp?<%=rs.getString("pitems")%>,<%=rs.getString("bname")%>" style="text-decoration: none">Edit</a></td>
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