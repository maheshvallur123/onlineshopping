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
    <body style="background-image: url('images/bg1.jpg')">
        <div id="container" class="container">
            <div style="margin-left: 300px;">
                <a href="" rel="nofollow"><img src="images/templatemo_header.png" height="100" width="700"/></a>
            </div>
            <div>
                <ul class="nav nav-justified">
                    <li class="active"><a href="index.jsp">Home</a></li>
                    <li><a href="alogin.jsp">Admin</a></li>
                    <li><a href="ulogin.jsp">User</a></li>
                </ul>
            </div><br />
            <div style="border:1px solid blue;height: 405px; width: 600px;border-radius: 30px;margin-left: 430px;background-image: url('images/reg.jpg')"><br />
                <form action="regaction.jsp" method="get">
                   <div style="float: left;margin-left: 20px;width: 350px;height: 385px;margin-top: -13px;border-radius: 20px;color: white"><br />
                       <label style="font-size: 20px">Name</label>&nbsp;&nbsp;<input type="text" class="textbox1" style="margin-left: 47px" name="name" required=""/><br /><br />
                       <label style="font-size: 20px">Email ID</label>&nbsp;&nbsp;<input type="email" class="textbox1" style="margin-left: 23px" name="email" required=""/><br /><br />
                       <label style="font-size: 20px">Password</label>&nbsp;&nbsp;<input type="password" class="textbox1" style="margin-left: 12px" name="pass" required=""/><br /><br />
                       <label style="font-size: 20px">D.O.B</label>&nbsp;&nbsp;<input type="date" style="margin-left: 46px;width: 200px;height: 25px;font-size: 20px" name="dob" required=""/><br /><br />
                       <label style="font-size: 20px;">Location</label>&nbsp;&nbsp;<input type="text" class="textbox1" style="margin-left: 25px" name="loc" required=""/><br /><br />
                       <label style="font-size: 20px">Contact No</label>&nbsp;&nbsp;<input type="text" class="textbox1" name="cno" required=""/><br /><br />
                        <label style="font-size: 20px">Bank Name</label>&nbsp;
                        <select style="width: 200px;height: 25px;font-size: 20px" required="" name="bank">
                            <option selected="">Select</option>   
                            <option value="ICIC">ICIC</option>   
                            <option value="KOTAK">KOTAK</option>   
                            <option value="CITIBANK">CITIBANK</option>   
                            <option value="SBI">SBI</option>   
                            <option value="HDFC">HDFC</option>   
                            <option value="AXIS">AXIS</option>   
                        </select><br /><br />
                        <label style="font-size: 20px">Credit card</label>&nbsp;&nbsp;<input type="text" class="textbox1" style="margin-left: 4px;" name="card" required=""/>
                    </div>
                    <img src="images/reg1.png" alt="registration" width="250px" height="120px" style="transform:rotate(300deg);-ms-transform:rotate(300deg);-moz-transform:rotate(300deg);-webkit-transform:rotate(300deg);-o-transform: rotate(300deg);margin-left: -70px;margin-top: 100px"/>
                    <div style="float: right;margin-top: -227px">
                        <div style="margin-top: -235px;margin-right: 5px;">
                            <input type="submit" value="SignUp"  class="c2c_btn c2c_btn_rounded" />
                        </div>
                        <div style="margin-top: 8px">
                            <input type="Reset" value="Clear"  class="c2c_btn1 c2c_btn_rounded1"/>
                        </div>
                        <div style="margin-top: 9px"> 
                            <a href="index.jsp"><input type="button" value="Exit"  class="c2c_btn3 c2c_btn_rounded3"/></a>
                        </div>
                    </div>
                </form>
            </div>
        </div> <!-- /container -->
        <div>
            <p style="margin-left: 550px;color: red">Copyright © 2015&nbsp;<a href="" style="text-decoration: none;color: red">Designed by KK</a></p>
        </div>
    </body>
</html>