<%@page import="java.sql.Connection"%>
 <%@page import="java.sql.DriverManager" %>
 <%@page import="java.sql.PreparedStatement"%>
 <%@page import="java.sql.ResultSet"%>
 
 <%
      int RESULT=0;
     String button=request.getParameter("btn");
     if(button!=null && button.equals("SIGNIN"))
     {
     String operatorId=request.getParameter("oid");
     String operator_Password=request.getParameter("opass");
     String Branch=request.getParameter("branch");
     String BranchCode=request.getParameter("branchCode");
     
     Class.forName("com.mysql.cj.jdbc.Driver");
     Connection connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/ritik","root","Ritik909@");
     PreparedStatement st=connection.prepareStatement("select * from OperatorLogin where operatorId=? and operator_Password=? and branch=? and branchCode =?");
     st.setString(1,operatorId);
     st.setString(2,operator_Password);
     st.setString(3,Branch);
     st.setString(4,BranchCode);
     
     ResultSet rs=st.executeQuery();
     if(rs.next())
     {
     //session.setAttribute("OPERATOR_ID",operatorId);//session name,value
        response.sendRedirect("operatorDashboard.jsp");
     
 }
  else
  {
  RESULT=1;
 }
  
 }
 %>
 
 
 
 
 