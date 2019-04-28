<%-- 
    Document   : udelete
    Created on : Apr 1, 2019, 4:37:53 PM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.vvp.java.*"%>
<%@page import="java.util.List"%>
<%@page import="com.vvp.java.*"%>
<%@page import="org.hibernate.*"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    <%
    if(request.getParameter("sid")!=null){
    
    int sid = Integer.parseInt(request.getParameter("sid").toString());
   Session s=NewHibernateUtil.getSessionFactory().openSession();
   Transaction tx=s.beginTransaction();
    User u1=(User)s.get(User.class, new Integer(sid));
        s.delete(u1);
        tx.commit();

  }
    %>  
    </body>
</html>
