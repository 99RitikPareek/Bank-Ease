<%@page import="java.sql.Connection,java.sql.DriverManager" %>
<%@page  import="java.sql.PreparedStatement,java.sql.ResultSet" %>

<%
    String accountNo=request.getParameter("acc");
    String  oldPass=request.getParameter("opass");
    String  newPass=request.getParameter("npass");
    String  confirmNPass=request.getParameter("cnpass");
    
    Class.forName("com.mysql.cj.jdbc.Driver");
    Connection connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/ritik","root","Ritik909@");
    PreparedStatement st=connection.prepareStatement("select * from Account__Holder   where accountNo=? and password=?");
    st.setString(1,accountNo);
    st.setString(2,oldPass);
    ResultSet rs= st.executeQuery();
    if(rs.next())
    {
            if(newPass.equals(confirmNPass))
            {
            PreparedStatement st1=connection.prepareStatement("update  Account__Holder set password=? where  accountNo=?");            
            st1.setString(1,newPass);
            st1.setString(2,accountNo);
            st1.executeUpdate();
            response.sendRedirect("signin.jsp");
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

  

        