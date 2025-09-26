<%@page import="java.sql.Connection"%>
 <%@page import="java.sql.DriverManager" %>
 <%@page import="java.sql.PreparedStatement,java.sql.ResultSet"%>
 <%@page  import="java.util.Date"%>
<%@page  import="java.text.SimpleDateFormat"%>
 
 
 <%
     Date date=new Date();
    SimpleDateFormat sdf=new SimpleDateFormat("dd/MM/yyyy hh:mm:ss");
     String customerId=request.getParameter("acc");
     String contactNo=request.getParameter("cont");
       String complain=request.getParameter("complain");
       
     Class.forName("com.mysql.cj.jdbc.Driver");
     Connection connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/ritik","root","Ritik909@");
     PreparedStatement st=connection.prepareStatement("insert into Complain(customerId,contactNo,complain,date,status) values(?,?,?,?,?)");
     st.setString(1,customerId);
     st.setString(2,contactNo);
     st.setString(3,complain);
     st.setString(4,sdf.format(date));
     st.setString(5,"underprocess");    
     st.executeUpdate();
//     connection.close();
PreparedStatement st1=connection.prepareStatement("select * from  complain where customerid=?");
    st1.setString(1,customerId);
    ResultSet rs=st1.executeQuery();
    int complainId=0;
    String status=null;
    if(rs.next())
    {
        complainId=rs.getInt(1);
        status=rs.getString(6);
    }
    out.println("Your complain id is "+complainId+" and status is :"+status);
%>