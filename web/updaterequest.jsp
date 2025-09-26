<%@page import="java.sql.Connection"%>
 <%@page import="java.sql.DriverManager" %>
 <%@page import="java.sql.PreparedStatement,java.sql.ResultSet"%>
 
 <%
     
    
     String complainId=request.getParameter("acc");
     String status=request.getParameter("status");
       
     Class.forName("com.mysql.cj.jdbc.Driver");
     Connection connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/ritik","root","Ritik909@");
     PreparedStatement st=connection.prepareStatement("update complain set status=? where accountNo=?");
     st.setString(1,status);
     st.setString(2,complainId);   
     st.executeUpdate();
     response.sendRedirect("viewrequest.jsp");

    %>
    