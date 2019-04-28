<%-- 
    Document   : demo
    Created on : Apr 2, 2019, 10:57:00 PM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="org.hibernate.*" %>
<%@page import="com.vvp.java.*" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <%
       Session s=NewHibernateUtil.getSessionFactory().openSession();
       Transaction tx=s.beginTransaction();
       User u1=(User)s.get(User.class, new Integer(1));
       s.delete(u1);
       tx.commit();
       %>
    </body>
</html>
