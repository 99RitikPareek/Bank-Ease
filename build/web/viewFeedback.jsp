 html>
             
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
                 font-size: 20px;
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
                 height:700px;
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
            width:20%;
            height:30px;
            background-color:black;
            color:white;
            font-family:arial;
         }
         .texttheme{
            color: black;
            align:center;
            margin-right:10px;
            width:250px;
            height:30px;
            border:inset;
        }
    </style>
 <body>
                <h1>WELCOME TO BANKEASE PORTAL</h1>
     <div  class="divtheme">
     
     <table width="80%" class="tabtheme" align="center">
         <%@include file="operatorHeader.jsp" %>
     </table>
         
     <table border="0"  width="100%" align="center">
         <tr align="center">
               <td><table  cellspacing="30px"  style="border:outset">
        
                 </table></td>
             
              </table>
     </table></td>
     <table width="100%"align="right">
      <tr style="background-color:black; color:white; text-align:center;font-size:30px;font-family:arial">
           <td> account no</td>
            <td>feedback</td>
          
      </tr>
    
         </div>
                
         
 </body>
</html>


<%@page import="java.sql.Connection"%>
 <%@page import="java.sql.DriverManager" %>
 <%@page import="java.sql.PreparedStatement"%>
 <%@page import="java.sql.ResultSet,java.util.ArrayList"%>
 
 
 <%
     Class.forName("com.mysql.cj.jdbc.Driver");
     Connection connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/ritik","root","Ritik909@");
     PreparedStatement st=connection.prepareStatement("select *from feedback"); 
     ResultSet rs=st.executeQuery();
     ArrayList list1=new ArrayList();
     ArrayList list2=new ArrayList();
     while(rs.next())
     {
     list1.add(rs.getString(1));
     list2.add(rs.getString(2));
     }
  %>
  
      <% 
         for(int i=0;i<list1.size();i++){
      %>
      
      <tr align="center" style="color:red; text-align:center; font-size:12px; font-family:arial;">
          <td><%=list1.get(i)%></td>
          <td><%=list2.get(i)%></td>
        </tr>  
     <%}%>
     
    
  </table>
     
 
  