<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%
    int RESULT = 0;
    String button = request.getParameter("btn");

    if (button != null && button.equals("SIGNIN")) {
        String accountNo = request.getParameter("acc");
        String password = request.getParameter("spass");

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection connection = DriverManager.getConnection(
                "jdbc:mysql://localhost:3306/ritik", "root", "Ritik909@"
            );

            PreparedStatement st = connection.prepareStatement(
                "SELECT * FROM Account__Holder WHERE accountNo=? AND password=?"
            );
            st.setString(1, accountNo);
            st.setString(2, password);
            ResultSet rs = st.executeQuery();

            if (rs.next()) {
                session.setAttribute("CALL_ID", accountNo); // session name,value
                response.sendRedirect("customerDashboard.jsp");
            } else {
                RESULT = 1;
            }

            rs.close();
            st.close();
            connection.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
%>

<html>
<head>
    <link href="style.css" rel="stylesheet">
    <style>
        a {
            text-decoration: none;
            color: white;
        }
        body {
            background-image: url('images/backk.jpg');
            background-size: cover;
        }
        .tabtheme {
            font-size: 30px;
            color: black;
            text-transform: uppercase;
            text-align: center;
            font-family: Arial, sans-serif;
            background-color: white;
            height: 60px;
            background-image: url('images/backk.jpg');
            box-shadow: 5px 5px 5px black;
        }
        .box:hover {
            background-color: black;
        }
        .imagetheme {
            box-shadow: 3px 3px 3px black;
        }
        .formtheme {
            width: 45%;
            height: 500px;
            background-color: rgba(255,255,255,0.8);
            margin-left: 650px;
            margin-top: 110px;
            border-radius: 20px;
            box-shadow: 1px 1px 1px whitesmoke;
        }
        .signuptab {
            font-size: 15px;
            padding-top: 100px;
            font-family: Arial, sans-serif;
        }
        .texttheme {
            color: black;
            margin-right: 10px;
            width: 350px;
            height: 30px;
            border: inset;
        }
        .divtheme {
            width: 90%;
            height: 750px;
            background-color: white;
            margin-left: 100px;
            margin-top: 40px;
            box-shadow: 10px 10px 10px black;
        }
        h1 {
            color: black;
            text-align: center;
            font-family: Arial, sans-serif;
            font-size: 50px;
        }
        .buttontheme {
            width: 100%;
            height: 30px;
            background-color: black;
            color: white;
            font-family: Arial, sans-serif;
        }
    </style>
</head>
<body>
    <h1>WELCOME TO BANKEASE PORTAL</h1>
    <div class="divtheme">
        <table width="80%" class="tabtheme" align="center">
            <tr>
                <td class="box"><a href="home.jsp">home</a></td>
                <td class="box"><a href="about.jsp">about</a></td>
                <td class="box"><a href="contact.jsp">contact</a></td>
                <td class="box"><a href="signin.jsp">signin</a></td>
                <td class="box"><a href="signup.jsp">signup</a></td>
            </tr>
        </table>

        <form action="signin.jsp" method="post">
            <table class="signuptab" align="center" cellspacing="20px">
                <tr align="center">
                    <td colspan="2">
                        <img src="images/loginimg.jpg" width="200px" height="150px">
                    </td>
                </tr>

                <tr align="center">
                    <td>
                        <%
                            if (RESULT == 1) {
                        %>
                        <font color="red">INVALID USERNAME OR PASSWORD</font>
                        <%
                            }
                        %>
                    </td>
                </tr>

                <tr>
                    <td>Username*</td>
                </tr>
                <tr>
                    <td>
                        <input type="text" name="acc" class="texttheme"
                               placeholder="Enter account no here" required>
                    </td>
                </tr>

                <tr>
                    <td>Password*</td>
                </tr>
                <tr>
                    <td>
                        <input type="password" name="spass" class="texttheme"
                               placeholder="Enter password here" required>
                    </td>
                </tr>

                <tr align="center">
                    <td colspan="2">
                        <input type="submit" value="SIGNIN" class="buttontheme" name="btn">
                        New member? <a href="signup.jsp" style="color:blue">Sign up</a>
                    </td>
                </tr>
            </table>
        </form>

        <div style="height:30px; width:90%; background-color:gray; margin:20px auto; padding:10px;">
            <h3>Please ensure the following before logging into OnlineDSB</h3>
            <p>
                -> The URL in your browser address bar begins with "https".<br>
                -> The address or status bar displays the padlock symbol.<br>
                -> Click the padlock to view and verify the security certificate.<br>
                -> (SSL is compatible for IE 7.0 and above, Mozilla Firefox 3.1 and above,
                Opera 9.5 and above, Safari 3.5 and above, Google Chrome).<br>
            </p>
        </div>
    </div>
</body>
</html>
