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
                    <li><a href="udetails.jsp">Profile</a></li>
                    <li><a href="cartdetails.jsp">Cart</a></li>
                    <li><a href="search.jsp">Product Search</a></li>
                    <li><a href="index.jsp">Logout</a></li>
                </ul>
            </div><br />
            <div style="border:1px solid red;width: 1250px;height: 400px;margin-left: 30px;border-radius: 40px;background-color: white"><br />
                <img src="images/bg5.jpg" width="400px"height="350px" style="margin: 5px;background: transparent"/>
                <div style="margin-top: -330px;background: #FFFFFF">
                    <center><h1 style="font-size: 40px;font-family: Times New Roman;color: red">Search The Product Here..</h1></center>
                    <center> <form action="sview.jsp" method="post">
                            <input type="text" name="focus" required class="search-box" placeholder="Enter Your Product Name" />
                            <button class="close-icon" type="reset"></button><br /><br />
                            <input type="submit" value="Seach" style="width: 120px;height: 30px;border-radius: 10px;background: transparent"/>
                        </form>
                    </center>
                </div> 
                <img src="images/bg6.jpg" width="400px"height="360px" style="margin: 5px;background: transparent;float: right;margin-top: -230px;"/>  
            </div>
        </div> <!-- /container -->
        <div>
            <p style="margin-left: 550px;color: red">Copyright � 2015&nbsp;<a href="" style="text-decoration: none;color: red">Designed by KK</a></p>
        </div>
    </body>
</html>