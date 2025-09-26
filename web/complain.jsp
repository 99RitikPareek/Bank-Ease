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
            padding-left:200px;
            padding-top:20px;
            font-size:15px;
            font-family:arial;
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
    !--<body>-->
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
                 margin-top: 50px;
                 color: white;
                 font-size: 80px
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
        .signuptab{
            padding-left:200px;
            padding-top:50px;
            font-size:15px;
            font-family:arial;
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
                <h1>WELCOME TO COMPLAIN SECTION</h1>
     <div  class="divtheme">
     
     <table width="80%" class="tabtheme" align="center">
         <%@include file="RequestHeader.jsp" %>
     </table>
         
     <table border="0"  width="100%" align="center"  style="margin-top:50px;">
         <tr align="center">
               <td><table  cellspacing="30px"  style="border:outset">
        
        
        
        <div class="formtheme">
            
            <form action="ComplainCode.jsp">
                
            
            <table class="signuptab"align="right"cellspacing="30px">
                <tr align="center">
                    <td colspan="2">
                </tr>
                
                <tr>
                    
                <td>Account Number</td>
                </tr>
                
                <tr>
                    <td><input type="text"name="acc" value="<%=session.getAttribute("CALL_ID")%>" readonly="true" class="texttheme"placeholder="Enter account no here" required="true"></td>
                </tr>
                
                <td>Contact Number</td>
                
                <tr>
                    <td><input type="text"name="cont"class="texttheme"placeholder="Enter your contact number"required="true"></td>
                </tr>
                
                
                 <!--<td>Date*</td>
                
                <tr>
                <td><input type="date"name="dte"class="texttheme"required="true"></td>
                </tr>-->
                
         
                <!--<td>Status</td>--
                
                 <tr>
                <td><input type="status"name="status"class="texttheme"placeholder="Enter full name here"required="true"></td>
<!---->               
            
                <td>Complain</td>
                
                <tr>
                <td><textarea name="complain"class="texttheme"placeholder="Enter your complain here"required="true" style="height:50px"></textarea></td>
                </tr>
               
                     <tr align="center">
                        <td colspan="2"><input type="submit"value="SEND"class="buttontheme"</td>
                         
                    </tr>
                </tables
               </form>
                <div style= " margin-top:-50px; border:outset;height:50px; width:80%;background-color: gray;">
                    
         <marquee scrollamount="10px"  behavior="rotate"><h2 style="font-size:24px;font-family:arial;color:black;"> Raise. Track. Resolve ? Your Complaint, Our Priority Please provide a detailed and authentic description of your complaint </h2></marquee>
        <h2>Fill up Complain Form</h2>
         <table>
             <div style="margin-top:70px;">
                <h3>Beware of Phishing attacks</h3>
                <p style="background-color:">
                    Phishing is a fraudulent attempt, usually made through email, phone calls, SMS etc seeking your personal and confidential information.<br>
                    State Bank or any of its representative never sends you email/SMS or calls you over phone to get your personal information,password or one time SMS (high security) password.<br> Any such e-mail/SMS or phone call is an attempt to fraudulently withdraw money from your account through Internet Banking. Never respond to such email/SMS or phone call. Please report immediately on report.phishing@sbi.co.in if you receive any such email/SMS or Phone call. Please lock your user access immediately, if you have accidentally revealed your credentials.Click here to lock.
                </p>
            </div>
             <div>
                <h3>Need Help?</h3>
                <p style="background-color:">
                    1.Request not updated? Wait 24 hrs.<br>
                    2.Amount disbursed late? Contact support.<br>
                    3.Profile rejected? Check KYC docs.<br>
                </p>
         </table>
         
                </div>
        </div>
    </body>
</html>