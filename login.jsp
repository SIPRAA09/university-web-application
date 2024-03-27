<%@page language="java" import="java.sql.Connection"%>
<%@page language="java" import="java.sql.DriverManager"%>
<%@page language="java" import="java.sql.ResultSet"%>
<%@page language="java" import="java.sql.Statement"%>
<%@page import="java.io.*"%>
<%
    try
    {
        ResultSet rs =null;
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/uni","root","");
                Statement st= conn.createStatement();
        String password=request.getParameter("password");
        String username=request.getParameter("username");
        String sql=("select * from login where username='" +username+ "' and password=" +password+ " ");
        response.sendRedirect("index2.html");
        conn.close();
        st.close();
    }
    catch(ClassNotFoundException e)
    {
        out.println(e.getMessage());
    } %>

