<%@page import="java.sql.Connection"%>
 <%@page import="java.sql.DriverManager" %>
 <%@page import="java.sql.PreparedStatement"%>
 <%@page import="java.sql.ResultSet"%>
 
 <%
     int RESULT=0;
     String button=request.getParameter("btn");
     if(button!=null && button.equals("SIGNIN"))
     {
     String accountNo=request.getParameter("acc");
     String password=request.getParameter("spass");
     
     Class.forName("com.mysql.cj.jdbc.Driver");
     Connection connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/ritik","root","Ritik909@");
     PreparedStatement st=connection.prepareStatement("select *from Account__Holder where accountNo=? and password=?");
     st.setString(1,accountNo);
     st.setString(2,password);
     ResultSet rs=st.executeQuery();
     if(rs.next())
     {
        session.setAttribute("CALL_ID",accountNo);//session name,value
        response.sendRedirect("customerDashboard.jsp");
     
 }
  else
  {
   RESULT=1;
 }
 
 }
 %>
 
 
 
 
 