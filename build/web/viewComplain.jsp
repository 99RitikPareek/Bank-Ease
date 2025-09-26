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
         
     <table border="0"  width="100%" align="center"  style="margin-top:50px;">
         <tr align="center">
               <td><table  cellspacing="30px"  style="border:outset">
        
                 </table></td>
             
              </table>
     </table></td>
     <table width="100%"align="right" style="margin-top:10px">
      <tr style="background-color:black; color:white; text-align:center;font-size:20px;font-family:arial">
          <td>complain id</td>
           <td> account no</td>
            <td>contact no</td>
           <td>complain</td>
           <td>date</td>
            <td>status</td>
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
     PreparedStatement st=connection.prepareStatement("select *from complain"); 
     ResultSet rs=st.executeQuery();
     ArrayList list1=new ArrayList();
     ArrayList list2=new ArrayList();
     ArrayList list3=new ArrayList();
     ArrayList list4=new ArrayList();
     ArrayList list5=new ArrayList();
     ArrayList list6=new ArrayList();
     while(rs.next())
     {
     list1.add(rs.getString(1));
     list2.add(rs.getString(2));
     list3.add(rs.getString(3));
     list4.add(rs.getString(4));
     list5.add(rs.getString(5));
     list6.add(rs.getString(6));
     }
  %>
  
      <% 
         for(int i=0;i<list1.size();i++){
      %>
      
      <tr align="center" style="color:red; text-align:center; font-size:12px; font-family:arial;">
          <td><%=list1.get(i)%></td>
          <td><%=list2.get(i)%></td>
          <td><%=list3.get(i)%></td>
          <td><%=list4.get(i)%></td>
          <td><%=list5.get(i)%></td>
          <td><%=list6.get(i)%></td>
        </tr>  
     <%}%>
     
     <form action="updatestatus.jsp">
     <table width="70%" align="right" style="margin:50px; border:solid; border-color:white">
             <tr style="color:white" align="center">
                 <td>UPDATE STATUS</td>
                 <td><input type="text"name="acc" placeholder="enter complain id" class="texttheme">
             <input type="text" name="status"placeholder="enter status" class="texttheme">
             <input type="submit" value="CHANGE" class="buttontheme">
                 </td>
             </tr>
         </table>
     </form>
  </table>
     
 
  