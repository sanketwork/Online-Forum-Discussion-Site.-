
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <link href="css/adminstyle.css" rel="stylesheet"/>
          <link href="css/menu.css" rel="stylesheet"/>
    </head>
    <body style="background-image:url('images/back.jpg'); background-repeat:no-repeat;background-size: cover; ">
          <form action="admincode/admin changepasswordcode.jsp" method="post"v>
            <%
            if(session.getAttribute("adminid")=="" ||session.getAttribute("adminid")==null)
            {
                response.sendRedirect("../login.jsp");
            }
            else
            {
            %>
        <div id="wrapper">
            <div id="header">
               
                      <img src="images/logo1.png" width="1000" height="150"/>
               
              
            </div>
            <div id="menu">
                 <ul>
                     <li title="HOME PAGE"><a href="adminhome.jsp">HOME</a></li>
                        <li><a href="usermanagement.jsp">USER MANAGEMENT</a></li>
                        <li><a href="#">RESPONSE</a>
                       <ul>
                           <li title="COMPLAIN MANAGEMENT"><a href="complainmanagement.jsp">COMPLAIN</a></li>
     <li title="FEEDBACK MANAGEMENT"><a href="feedbackmanagement.jsp">FEEDBACK</a></li>
     <li title="ENQUIRY MANAGEMENT"><a href="enquirymanagement.jsp">ENQUIRY</a></li>
     <li title="REVIEW MANAGEMENT"><a href="reviewmanagement.jsp">REVIEW</a></li>
         </ul></li>
         <li title="UPLOAD MATERIAL"><a href="studymaterialupload.jsp">UPLOAD</a></li>
        <li><a href="#">SETTINGS</a>
         <ul>
             <li><a href="adminchangepassword.jsp">CHANGE PASSWORD</a></li>
     <li><a href="adminlogout.jsp">LOGOUT</a></li>
         </ul>
         </li>            
    </ul>
     
            </div>
            <div id="main" style="background-image:url('images/1.jpg'); background-repeat:no-repeat;background-size: cover; ">
                   <br/><br/><br/><br/><br/>
                        <div style="width:560px;height:460px;background-color:#ccccff; margin:0 auto">
                          <br/><br/><br/><br/><br/><h2 style="text-align:center;">CHANGE PASSWORD</h2>
                                  <br/><br/>         <br/><br/> 
                                <table cellspacing="8px;" cellpadding="8px;" style="margin:0 auto;">
                                    <tr><td> Old Password :</td><td><input type="password" name="oldpassword" required="true" placeholder="Old Password " style="width:340px; height: 40px;"/></td></tr>
                             <tr><td>New Password : </td><td><input type="password" name="newpassword" required="true"  placeholder="New Password " style="width:340px; height: 40px;"/></td></tr>
                             <tr><td>Confirm Password :  </td><td><input type="password" name="confirmpassword" required="true"  placeholder="Confirm Password " style="width:340px; height: 40px;"/></td></tr>                           
                            <tr><td>&nbsp;</td><td><input type="submit" value="CHANGE PASSWORD"  style="width:160px; height: 38px;"/></td></tr>
                                </table>
                             
                    </div>
            </div>
               <div id="footer">
                    <div id="lfooter">
                    Copyright &copy; to E-Study Zone
                </div>
                <div id="rfooter">
                    Developed By:Aradhana Kushwaha
                </div>
               </div>
        </div>
        
                <%
            }
                %>
                 </form>
    </body>
</html>
