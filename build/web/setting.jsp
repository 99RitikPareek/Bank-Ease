 <!--<html>--
 
    
    <head>
        <link href="style.css" rel="stylesheet">
        
    </head>
    <style>
        a{
            text-decoration:none;
            color:white;
        }
        .imagetheme
        {
            box-shadow:3px 3px 3px black;
        }
        .formtheme
         {
        width:100%;
        height:700px;
        background-color:rgba(255,255,255,0.8);
       /* margin-left:650px;*/
        margin-top:20px;
        border-radius:20px;
        box-shadow:1px 1px 1px black;
        }
        
        
        .signuptab{
            /*align:center;
            margin-top:70px;
            margin-left: 30px;
            padding-top:50px;
            padding-left:50px;*/
            font-size:15px;
            padding-top: 100px;
            font-family: arial;
        }
        
        .texttheme{
            width:350px;
            height:30px;
            border:outset;
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
        <%@include file="publicheader.jsp" %>
        <div class="formtheme">
            
            <form action="signinCode.jsp">
            
            <table class="signuptab"align="center"cellspacing="30px">
                <tr align="center">
                    <td colspan="2">
                </tr>
                
                <tr>
                <td>old password</td>
                </tr>
                
                <tr>
                    <td><input type="text"name="opass"class="texttheme"placeholder="Enter old no here" required="true"></td>
                </tr>
                
                <tr>
                    <td> new Password</td>
                </tr>
                     
                <tr>
                    <td><input type="password"name="npass"class="texttheme"placeholder="Enter new password here"required="true"></td>
                </tr>
                 
                <tr>
                    <td> confirm Password</td>
                </tr>
                
                <tr>
                    <td><input type="password"name="cnpass"class="texttheme"placeholder="Enter confirm password here"required="true"></td>
                </tr>
                
                
                    <tr align="center">
                        <td colspan="2"><input type="submit"value="CHANGE"class="buttontheme"</td>
                         
                    </tr>
            </table>
               </form>
            
        </div>
    </body>
</html>--<html>-->
        <html>
             
    <head>
        
    
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
             
             .title{
                 margin-left: 50px;
                 color:blue;
                 text-transform: uppercase;
                 font-family:arial;
                 font-size: 60px;
                 text-align: left;
             }   
             .titletab{
                 margin-left: 400px;
                 margin-top: 40px;
                 color: white;
                 font-size: 80px
             }
             .divtheme{
                 width:90%;
                 height:750px;
                 background-image:url('images/setting.jpg');
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
        .formtheme
         {
        width:100%;
        height:700px;
        background-color:rgba(255,255,255,0.8);
       /* margin-left:650px;*/
        margin-top:20px;
        border-radius:20px;
        box-shadow:1px 1px 1px black;
        }
        
        
        .signuptab{
            /*align:center;
            margin-top:70px;
            margin-left: 30px;
            padding-top:50px;
            padding-left:50px;*/
            font-size:15px;
            padding-top: 40px;
            font-family: arial;
        }
        
        .texttheme{
            width:350px;
            height:30px;
            border:outset;
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
     
     <table width="80%" class="tabtheme" align="center">
         <%@include file="publicheader.jsp" %>
     </table>
         
     <table border="0"  width="100%" align="center"  style="margin-top:50px;">
         <tr align="center">
               <td><table  cellspacing="30px"  style="border:outset">
        
                 <!--</table></td>--
             <td><img src="images/front.jpeg"  width="650px" height="500px"></td> 
              </table>!---->
        
         </div>
     <form action="customerSettingPassword.jsp">
         <h2>change your password</h2>
            
            <table class="signuptab"align="center"cellspacing="30px">
                <tr align="center">
                    <td colspan="2">
                </tr>
                
                <tr>
                    <td>AccountNo</td>
                    </tr>
                    
                    <tr>
                        <td><input type="text"  name="acc" class="texttheme"  value="<%=session.getAttribute("CALL_ID")%>" readonly="true"placeholder="Enter id here" required="true"></td>
                    </tr>
                
                <tr>
                <td>old password</td>
                </tr>
                
                <tr>
                    <td><input type="text"name="opass"class="texttheme"placeholder="Enter old no here" required="true"></td>
                </tr>
                
                <tr>
                    <td> new Password</td>
                </tr>
                     
                <tr>
                    <td><input type="password"name="npass"class="texttheme"placeholder="Enter new password here"required="true"></td>
                </tr>
                 
                <tr>
                    <td> confirm Password</td>
                </tr>
                
                <tr>
                    <td><input type="password"name="cnpass"class="texttheme"placeholder="Enter confirm password here"required="true"></td>
                </tr>
                
                
                    <tr align="center">
                        <td colspan="2"><input type="submit"value="CHANGE"class="buttontheme"></td>
                         
                    </tr>
            </table>
    </form>
     <hr>
         <marquee scrollamount="20px"  behavior="scroll"><h2 style="font-size:24px;font-family:arial">we are best for providing best services to our customers. Take experience of fast secure & reliable services with armforce banking   </h2></marquee>
      <hr>   
            
                
         
 </body>
</html>