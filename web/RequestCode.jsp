<%@page import="java.sql.Connection"%>
 <%@page import="java.sql.DriverManager" %>
 <%@page import="java.sql.PreparedStatement"%>
 
 <%
     String accountNo=request.getParameter("acc");
     String amount=request.getParameter("amnt");
     String fullName=request.getParameter("fnm");
     String contact=request.getParameter("cont");
     String time=request.getParameter("tim");
     String date=request.getParameter("dte");
     String category=request.getParameter("cat");
     Class.forName("com.mysql.cj.jdbc.Driver");
     Connection connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/ritik","root","Ritik909@");
     PreparedStatement st=connection.prepareStatement("insert into Request values(?,?,?,?,?,?,?)");
     st.setString(1,accountNo);
     st.setString(2,amount);
     st.setString(3,fullName);
      st.setString(4,contact);
     st.setString(5,date);
     st.setString(6,time);
     st.setString(7,category);
     st.executeUpdate();
     connection.close();
     response.sendRedirect("index.jsp");
%>