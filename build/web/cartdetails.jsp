<%@page import="java.io.FileOutputStream"%>
<%@page import="java.io.OutputStream"%>
<%@page import="java.io.File"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="action.Database"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.io.InputStream"%>
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
    <body style="background-image: url('images/user.jpg')">
        <div id="container" class="container">
            <div style="margin-left: 300px;">
                <a href="" rel="nofollow"><img src="images/templatemo_header.png" height="100" width="700"/></a>
            </div>
            <div> 
                <ul class="nav nav-justified">
                    <li class="active"><a href="uview.jsp">Home</a></li>
                    <li><a href="cartdetails.jsp">Cart</a></li>
                    <li><a href="search.jsp">Product Search</a></li>
                    <li><a href="index.jsp">Logout</a></li>
                </ul>
            </div><br />
            <div style="border:1px solid red;width: 700px;height: 400px;margin-left: 300px;border-radius: 40px;background-color: #0099FF">
                <div style="height: 60px;border-top-left-radius: 40px;border-top-right-radius: 40px">
                    <center> <h1 style="margin-top: 3px">Order Details</h1></center>
                </div>
                <div style="height: 338px;border-bottom-left-radius: 40px;border-bottom-right-radius: 40px">
                    <table style="margin-left: 100px">
                        <tr>
                            <th>Product Name</th>
                            <th>Product Item</th>
                            <th>Quantity</th>
                            <th>Total Price</th>
                        </tr>
                        <tr>
                            <%
                                String uname = session.getAttribute("n1").toString();
                                try 
                                {
                                Connection con = Database.getConnection();
                                Statement st = con.createStatement();
                                ResultSet rs = st.executeQuery("select * from cart where status='NO' AND name='" + uname + "'");
                                ResultSet rs1 = st.executeQuery("select * from cart where status='NO' AND name='" + uname + "'");
                                while (rs1.next()) {
                            %>
                            <td><%=rs1.getString("productname")%></td>
                            <td><%=rs1.getString("productitem")%></td>
                            <td><%=rs1.getString("quantity")%></td>
                            <td><%=rs1.getString("total")%></td>
                        </tr>
                        <%
                                    }
                                }
                             catch (Exception e) {
                                System.out.println("Exception Error in cartdetails " + e.getMessage());
                            }
                        %>

                    </table><br />
                    <a href="bank.jsp?<%=uname%>"><button class="button" style="margin-left: 300px">Buy Item</button></a>
                </div>
            </div>
        </div> <!-- /container -->
        <div>
            <p style="margin-left: 550px;color: red">Copyright � 2015&nbsp;<a href="" style="text-decoration: none;color: red">Designed by KK</a></p>
        </div>
    </body>
</html>