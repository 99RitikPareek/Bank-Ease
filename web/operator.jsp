<%@page import="java.sql.Connection"%>
 <%@page import="java.sql.DriverManager" %>
 <%@page import="java.sql.PreparedStatement"%>
 <%@page import="java.sql.ResultSet"%>
 
 <%
      int RESULT=0;
     String button=request.getParameter("btn");
     if(button != null && button.equals("SIGNIN"))

     {
     String operatorId=request.getParameter("oid");
     String operator_Password=request.getParameter("opass");
     String Branch=request.getParameter("branch");
     String BranchCode=request.getParameter("branchCode");
     
     Class.forName("com.mysql.cj.jdbc.Driver");
     Connection connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/ritik","root","Ritik909@");
     PreparedStatement st=connection.prepareStatement("select * from OperatorLogin where operatorId=? and operator_Password=? and branch=? and branchCode =?");
     st.setString(1,operatorId);
     st.setString(2,operator_Password);
     st.setString(3,Branch);
     st.setString(4,BranchCode);
     
     ResultSet rs=st.executeQuery();
     if(rs.next())
     {
     //session.setAttribute("OPERATOR_ID",operatorId);//session name,value
        response.sendRedirect("operatorDashboard.jsp");
     
 }
  else
  {
  RESULT=1;
 }
  
 }
 %>
 
 
 
 
 
<html>
    
    <head>
        <link href="style.css" rel="stylesheet">
        
    </head>
    <style>
        a{
            text-decoration: none;
            color:white;
            
        }body{
        background-image:url('images/backk.jpg');
        background-size: 100%;
             }
             .tabtheme{
                 font-size: 30px;
                 color:black;
                 text-transform:uppercase;
                 text-align: center;
                 font-family: arial;
                 background-color:white;
                 
                 height: 60px;
                 background-image:url('images/backk.jpg');
                 box-shadow: 5px 5px 5px black;
             }
             .box:hover
             {
                 background-color:black;
             }
        .imagetheme
        {
            box-shadow:3px 3px 3px black;
        }
        .formtheme
        {
        width:45%;
        height:500px;
        background-color:rgba(255,255,255,0.8);
        margin-left:650px;
        margin-top:110px;
        border-radius:20px;
        box-shadow:1px 1px 1px whitesmoke;
        }
        .signuptab{
            font-size:15px;
            padding-top:100px;
            font-family:arial;
        }
        .texttheme{
            color: black;
            align:center;
            margin-right:10px;
            width:350px;
            height:30px;
            border:inset;
        }
        .divtheme{
                 width:90%;
                 height:750px;
                 background-color:white;
                 margin-left:100px;
                 margin-top:40px;
                 box-shadow: 10px 10px 10px black;
             }
              h1{
                 color:black;
                 text-align: center;
                 font-family: arial;
                 font-size: 50px;
             }
             .buttontheme{
            width:100%;
            height:30px;
            background-color:black;
            color:white;
            font-family:arial;
            
        }
    </style>
    <body>
        
        
            <h1>WELCOME TO BANKEASE PORTAL</h1>
     <div  class="divtheme">
     
     <!--<table width="80%" class="tabtheme" align="center">--
         <tr>
             <td class ="box"><a href="home.jsp">home</a></td>
             <td class ="box"><a href="about.jsp"> about</a></td>
             <td class ="box"><a href="contact.jsp"> contact</a></td>
             <td class ="box"><a href="signin.jsp"> signin</a></td>
             !--<td class ="box"><a href="signup.jsp">signup</a></td>-->

         
     </table>
            
            <form action="">
            
            <table class="signuptab"align="center"cellspacing="20"px>
                <tr align="center">
                    <td colspan="2"><img src="images/loginimg.jpg" width="200pxheight=150px"></td>
                </tr>
                <%
                        if(RESULT==1)
                        {
                        %>
                        <font color="red"> INVALID PASSWORD</font>
                        <% }
                        %>
                
                <tr>
                <td>OperatorId*</td>
                </tr>
                
                <tr>
                    <td><input type="text"name="oid"class="texttheme"placeholder="Enter account no here" required="true"></td>
                </tr>
                
                <tr>
                    <td>Password*</td>
                </tr>
                     
                <tr>
                    <td><input type="password"name="opass"class="texttheme"placeholder="Enter password here"required="true"></td>
                </tr>
                
                <tr>
                    <td>Branch*</td>
                </tr>
                     
                <tr>
                    <td><input type="text"name="branch"class="texttheme"placeholder="Enter your branch here"required="true"></td>
                </tr>
                
                <tr>
                    <td>Branch code*</td>
                </tr>
                     
                <tr>
                    <td><input type="text"name="branchCode"class="texttheme"placeholder="Enter your branch code  here"required="true"></td>
                </tr>
                
                
                    <tr align="center">
                    <td colspan="2"><input type="submit" value="SIGNIN" class="buttontheme" name="btn">

                         <a href="signup.jsp" style="color:blue"></a> </td>
                    </tr>
            </table>
               </form>
         <!--<hr>--
         <marquee scrollamount="20px"  behavior="scroll"><h2 style="font-size:24px;font-family:arial">To clear cache,refresh this page pressing ctl + f5  </h2></marquee>
      <hr>   !--  
            
        </div>
    </body>
</html>




