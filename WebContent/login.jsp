

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>EStudyZone</title>
        <link href="css/generalStyle.css" rel="stylesheet"/>
          <link href="css/menu.css" rel="stylesheet"/>
        <script>
            
           
var img=['z.jpg','slide3.jpg','slide2.jpg','banner1.jpg','p.jpg'];
var i=0;
function slide()
{

var imgslide=document.getElementById("img1");
imgslide.src="images/"+img[i];
i++;

if(i===img.length)
{
i=0;
}
window.setTimeout("slide()",2000);
}
        </script>
    </head>
    <body onload="slide()" style="background-image:url('images/back.jpg'); background-repeat:no-repeat;background-size: cover;">
<form action="code/logincode.jsp" method="post">
       
            <div id="wrapper">
                
                    <div id="banner">
                        <img src="images/logo1.png" width="1000" height="150"/>
                        
                    </div>
                 <div id="slider">
                <img id="img1" style="width:1000px;height:200px;"/>
                </div>
               
                <div id="menu">
                      <ul>
     <li><a href="index.jsp">HOME</a></li>

     <li><a href="registration.jsp">STUDENT</a></li>
     <li><a href="consultantregistration.jsp">CONSULTANT</a></li>
     
     <li><a href="login.jsp">LOGIN</a></li>
     <li><a href="enquiry.jsp">ENQUIRY</a></li>
     
 </ul>
                </div>
               
                
                <div id="main" >
        <center>            <br/><br/><br/><br/><br/>           <div style="width:560px;height:460px;background-color:#ccccff;">
                          <br/><br/><br/><br/><br/><br/><br/>
                               <input type="text" name="userid" required="true" placeholder="User Name" style="width:340px; height: 45px;"/><br/>
                           <input type="password" name="password" required="true" placeholder="Password" style="width:340px; height: 45px; margin-top:4px;"/><br/><br/>
                           <br/> 
                           <input type="submit" value="LOGIN"  style="width:180px; height: 38px; border:1px solid  #000066;margin-top:20px;"/>
</center>        
                    </div>
              
                   <div id="footer">
                <div id="footer1"><br/>
	  <h3 align="center">Image Gallery</h3>
	 <center>
         <a href="footer4.jpg"><img src="images/footer4.jpg" height="50px" width="60px"/></a>
	 <a href="footer1.jpg"><img src="images/footer1.jpg" height="50px" width="60px"/></a>
	 <a href="footer2.jpg"><img src="images/footer2.jpg" height="50px" width="60px"/></a><br/>
	 <a href="footer3.jpg"><img src="images/footer3.jpg" height="50px" width="60px"/></a>
	 <a href="footer4.jpg"><img src="images/footer4.jpg" height="50px" width="60px"/></a>
         <a href="footer1.jpg"><img src="images/footer1.jpg" height="50px" width="60px"/></a>
	<br/>
	 
	 <a href="">More <a></center>
	  </div>
	 
	  <div id="footer2"><br/>
	 <center> <h3>Developed By: sanket jagtap</h3>
	  <p style="line-height:25px; text-align:center; ">To contact us kindly
	  email me at <a href="">sanketswork7@gmail.com</a><br/>
	  <a href="http//www.google.co.in">Help</a><br/>
	  <br/>
	  <br/> </p> </center>
	  
	  </div>
            </div>
            </div>
        </form>
    </body>
</html>

