<%@page import="java.sql.Connection,java.sql.DriverManager" %>
<%@page  import="java.sql.PreparedStatement,java.sql.ResultSet" %>

<%
    String operatorId=request.getParameter("oid");
    String  oldPass=request.getParameter("opass");
    String  newPass=request.getParameter("npass");
    String  confirmNPass=request.getParameter("cnpass");
    
    Class.forName("com.mysql.cj.jdbc.Driver");
    Connection connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/ritik","root","Ritik909@");
    PreparedStatement st=connection.prepareStatement("select * from OperatorLogin   where operatorId=? and operator_Password=?");
    st.setString(1,operatorId);
    st.setString(2,oldPass);
    ResultSet rs= st.executeQuery();
    if(rs.next())
    {
            if(newPass.equals(confirmNPass))
            {
            PreparedStatement st1=connection.prepareStatement("update OperatorLogin  set operator_Password=? where operatorId=?");            
            st1.setString(1,newPass);
            st1.setString(2,operatorId);
            st1.executeUpdate();
            response.sendRedirect("operatorLoginCode.jsp");
            }
            else
            {
                out.println("new password and confirm new password doesnt match");
            }
    }
    else
    {
        out.println("invalid id/old password");
    }

        
%>

  

        