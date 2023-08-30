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
                    <li><a href="block.jsp">Blocked List</a></li>
                    <li><a href="arating.jsp">Rating</a></li>
                    <li><a href="index.jsp">Logout</a></li>
                </ul>
            </div><br />
            <div style="background: yellowgreen;border: 1px solid red;border-radius: 20px;width: 500px;height: 400px;margin-left: 430px;">
                <center><h1 style="color: red">Add Items Details</h1></center>
                <form action="Upload" method="post" enctype="multipart/form-data" style="margin-left: 50px">
                    <label style="font-size: 20px">Product Name</label>&nbsp;&nbsp;
                    <select name="pname" style="width: 200px;height: 30px;font-size: 20px">
                        <option selected="">Select</option>
                        <option>Mobiles</option>
                        <option>Computers</option>
                        <option>Watches</option>
                        <option>Camera</option>
                    </select><br /><br />
                    <label style="font-size: 20px">Product Item</label>&nbsp;&nbsp;<input type="text" name="pitem"style="width: 200px;height: 20px;font-size: 20px;margin-left: 17px"/><br /><br />
                    <label style="font-size: 20px">Brand Name</label>&nbsp;&nbsp;<input type="text" name="bname" style="width: 200px;height: 20px;font-size: 20px;margin-left: 18px"/><br /><br />
                    <label style="font-size: 20px">Price</label>&nbsp;&nbsp;<input type="text" name="price"style="width: 200px;height: 20px;font-size: 20px;margin-left: 83px"/><br /><br />
                    <label style="font-size: 20px">Date</label>&nbsp;&nbsp;<input type="date" name="date" style="width: 200px;height: 20px;font-size: 20px;margin-left: 86px"/><br /><br />
                    <label style="font-size: 20px">Product Image</label><input type="file" name="image" style="width: 280px;height: 30px;font-size: 20px;margin-left: 5px"/><br />
                    <input type="submit" value="Add" style="width: 130px;height: 35px;margin-left: 80px;border-radius: 8px;font-size: 20px;background: yellowgreen;margin-top: 10px"/>&nbsp;&nbsp;
                    <input type="reset" value="Reset" style="width: 130px;height: 35px;border-radius: 8px;font-size: 20px;background: yellowgreen"/>
                </form>
            </div>
        </div> <!-- /container -->
        <div>
            <p style="margin-left: 550px;color: red">Copyright © 2015&nbsp;<a href="" style="text-decoration: none;color: red">Designed by KK</a></p>
        </div>
    </body>
</html>