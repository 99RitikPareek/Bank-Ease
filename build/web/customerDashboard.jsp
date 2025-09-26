<%
    response.addHeader("Pragma","no-Cache");//name,value
    response.addHeader("Cache-Control","no-Store");//name,value
    
String value=(String)session.getAttribute("CALL_ID");
if(value==null)
{
 response.sendRedirect("index.jsp");
}
 if(session==null)
 {
  response.sendRedirect("index.jsp");
  
}

    %>
    
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
                 margin-top:35px;
                 box-shadow: 10px 10px 10px black;
             }

             h1{
                 color:black;
                 text-align: center;
                 font-family: arial;
                 font-size: 50px;
             }
        
    </style>
   
    
   <body>  
                <h1>WELCOME TO BANKEASE PORTAL</h1>
     <div  class="divtheme">
     
     <table width="80%" class="tabtheme" align="center">
         <%@include file="AccountHeader.jsp" %>
     </table>
         
     <table border="0"  width="80%" align="center"  style="margin-top:50px;">
         <tr align="center">
               <td><table  cellspacing="30px"  style="border:outset">
        
                 </table></td>
             
              </table>
     </table></td>
     <table cellspacing="10px" >
         
         <td><img src="images/content.jpg" width="450px" height="500px"style="box-shadow:5px 5px 5px black;border-radius:40px"></td> 
         <td><img src="images/content2.jpg" width="450px" height="500px"style="box-shadow:5px 5px 5px black;border-radius:40px"></td> 
         <td><img src="images/content3.jpg" width="450px" height="500px"style="box-shadow:5px 5px 5px black;border-radius:40px"></td> 
              </table>
     <hr>
         <marquee scrollamount="20px"  behavior="scroll"><h2 style="font-size:24px;font-family:arial">we are best for providing best services to our customers. Take experience of fast secure & reliable services with armforce banking   </h2></marquee>
      <hr>   
         </div>
                
         
 </body>
</html>