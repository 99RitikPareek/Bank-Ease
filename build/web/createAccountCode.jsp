<%@page import="java.sql.Connection"%>
 <%@page import="java.sql.DriverManager" %>
 <%@page import="java.sql.PreparedStatement"%>
 
 <%
     String accountNo=request.getParameter("acc");
     String password=request.getParameter("spass");
     String fullName=request.getParameter("fnm");
     String dob=request.getParameter("dob");
     String mail=request.getParameter("mail");
     String contactNo=request.getParameter("cont");
     String gender=request.getParameter("gender");
     String city=request .getParameter("city");
     Class.forName("com.mysql.cj.jdbc.Driver");
     Connection connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/ritik","root","Ritik909@");
     PreparedStatement st=connection.prepareStatement("insert into Account__Holder values(?,?,?,?,?,?,?,?)");
     st.setString(1,accountNo);
     st.setString(2,password);
     st.setString(3,fullName);
     st.setString(4,dob);
     st.setString(5,mail);
     st.setString(6,contactNo);
     st.setString(7,gender);
     st.setString(8,city);
     st.executeUpdate();
     connection.close();
     response.sendRedirect("index.jsp");
%>