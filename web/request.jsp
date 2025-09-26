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
        .imagetheme
        {
            box-shadow:3px 3px 3px black;
        }
       /* .formtheme
        {
        width:45%;
        height:500px;
        background-color:rgba(255,255,255,0.8);
        margin-left:650px;
        margin-top:110px;
        border-radius:20px;
        box-shadow:1px 1px 1px whitesmoke;
        }*/
        
        .signuptab{
            /*margin-left: 20px;*/
            padding-top:20px;
            font-size:15px;
            font-family:arial;
        }
        
        .texttheme{
            /*margin-right:10px;*/
            align:center;
            width:350px;
            height:30px;
            border:outset;
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
        <table width="80%" class="tabtheme" align="center">
         <%@include file="RequestHeader.jsp" %>
     </table>
         
        
        <div class="formtheme">
            
            
            
        <form action="RequestCode.jsp"%>
            
        
        <table class="signuptab"align="center" cellspacing="10px">
            <tr align="center">
                <td colspan="2"><H1>REQUEST Form</H1></td>
            </tr>
           
            
            <tr>
                <td>Account No.</td>
                <td><input type="text"name="acc"class="texttheme"placeholder=" Enter registered account no here"required="true"></td>
            </tr>
            
            <tr>
                <td>Amount</td>
                <td><input type="password"name="amnt"class="texttheme"placeholder="Enter password here"required="true"></td>
            </tr>
            
            <tr>
                <td>Full name</td>
                <td><input type="text"name="fnm"class="texttheme"placeholder="Enter your name  here"required="true"></td>
            </tr>
            
            <tr>
            <td>Contact*</td>
                <td><input type="number"name="cont"class="texttheme"placeholder="Enter contact"required="true"></td>
            </tr>
            
            
            <tr>
                <td>Time</td>
                <td><input type="time"name="Time"class="texttheme"placeholder="Enter full name here"required="true"></td>
            </tr>
            
            <tr>
                <td>Date*</td>
                <td><input type="date"name="dte"class="texttheme"required="true"></td>
            </tr>
                <tr>
                <td>Category</td>
                <td><select class="texttheme"name="cat">
                        <option>SELECT Category</option>
                        <option>Deposit</option>
                        <option>Withdrawl</option>
                    </select></td>
                <tr align="center">
                    <td colspan="2"><input type="submit" value="Request" class="buttontheme"> <a href="signin.jsp" style="color:blue"></a></td>
                </tr>
        </table> 
        </form>
         </div>
         
         <hr>
         <marquee scrollamount="20px"  behavior="scroll"><h2 style="font-size:24px;font-family:arial">we are best for providing best services to our customers. Take experience of fast secure & reliable services with armforce banking   </h2></marquee>
      <hr>   
     </div>
    </body>
</html>