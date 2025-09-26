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
         <tr>
             <td class ="box"><a href="home.jsp">home</a></td>
             <td class ="box"><a href="about.jsp"> about</a></td>
             <td class ="box"><a href="contact.jsp"> contact</a></td>
             <td class ="box"><a href="signin.jsp"> signin</a></td>
             <td class ="box"><a href="signup.jsp">signup</a></td>

         </tr>
     </table>
         
        
        <div class="formtheme">
            
            
            
        <form action="createAccountCode.jsp"%>
            
        
        <table class="signuptab"align="center" cellspacing="10px">
            <tr align="center">
                <td colspan="2"><H1>CREATE ACCOUNT</H1></td>
            </tr>
           
            
            <tr>
                <td>Account No.*</td>
                <td><input type="text"name="acc"class="texttheme"placeholder=" Enter registered account no here"required="true"></td>
            </tr>
            
            <tr>
                <td>Password*</td>
                <td><input type="password"name="spass"class="texttheme"placeholder="Enter password here"required="true"></td>
            </tr>
            
            <tr>
                <td>Full name*</td>
                <td><input type="text"name="fnm"class="texttheme"placeholder="Enter full name here"required="true"></td>
            </tr>
            
            <tr>
                <td>Date of birth*</td>
                <td><input type="date"name="dob"class="texttheme"required="true"></td>
            </tr>
            
            <tr>
                <td>Email*</td>
                <td><input type="email"name="mail"class="texttheme"placeholder="Enter mail id here"required="true"></td>
            </tr>
            
            
            <td>Contact*</td>
                <td><input type="number"name="cont"class="texttheme"placeholder="Enter contact"required="true"></td>
            </tr>
            
                <tr>
                <td>City</td>
                <td><select class="texttheme"name="city">
                        <option>SELECT CITY</option>
                        <option>INDORE</option>
                        <option>BHOPAL</option>
                        <option>UJJAIN</option>
                    </select></td>
                </tr>
            
                <tr>
                <td>GENDER</td>
                <td><select class="texttheme"name="gender">
                        <option>SELECT GENDER</option>
                        <option>MALE</option>
                        <option>FEMALE</option>
                    </select></td>
                </tr>
                <tr align="center">
                    <td colspan="2"><input type="submit" value="SIGNUP" class="buttontheme">  already member <a href="signin.jsp" style="color:blue">signin</a></td>
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