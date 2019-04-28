<%-- 
    Document   : hiberoperation
    Created on : Apr 1, 2019, 4:33:32 PM
    Author     : hp
--%>
<%@page import="java.util.List"%>

<%@page  import="org.hibernate.*" %>
<%@page  import="com.vvp.java.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <a href="uinsert.jsp"  style="float:right">Insert Student Data</a>
          <%

        Session s = NewHibernateUtil.getSessionFactory().openSession();
        String hq="From User";

        Query q=s.createQuery(hq);
        List<User> results = q.list();

        %>
        <table border="1">
        <tr>
            <td>Sid</td>
            <td>Name</td>
            <td>Branch</td>
            <td>Enrollment</td>
            <td>Sem</td>
            <td>Phno</td>

        </tr>
        <%
            for (User record : results) {%>
        <tr><td><%=record.getSid()%></td>
            <td><%=record.getName()%></td>
            <td><%=record.getBranch()%></td>
            <td><%=record.getEnrollment()%></td>
            <td><%=record.getSem()%></td>
            <td><%=record.getPhone()%></td>
           
        </tr>
        <%
        }%>
        </table>
        <form >

            <select name="searchby">
                <option value="sid">sid</option>
                <option value="name">name</option>
                <option value="branch">branch</option>
                <option value="sem">sem</option>
                <option value="enrollment">enrollment</option>
            </select>
            <input type="text" name="search" >
            <input type="submit" name="submit" value="search">
            
            <br>

        </form>
      

        <%
        if (request.getParameter("search") != null) {


            String searchby = request.getParameter("searchby");
            String search = request.getParameter("search");
            //Session s = NewHibernateUtil.getSessionFactory().openSession();
            Query qry = s.createQuery("FROM User  where " + searchby + " like'%" + search + "%'");
            List<User> results1 = qry.list();

        %>
        <table border="1">
        <tr>
            <td>Sid</td>
            <td>Name</td>
            <td>Branch</td>
            <td>Enrollment</td>
            <td>Sem</td>
            <td>Phno</td>

        </tr>
        <%
            for (User record : results1) {%>
        <tr><td><%=record.getSid()%></td>
            <td><%=record.getName()%></td>
            <td><%=record.getBranch()%></td>
            <td><%=record.getEnrollment()%></td>
            <td><%=record.getSem()%></td>
            <td><%=record.getPhone()%></td>
            <td>
            <a href="uedit.jsp?sid=<%=record.getSid()%>" >Edit</a>
            <a href="udelete.jsp?sid=<%=record.getSid()%>" >Delete</a>
            </td>
        </tr>
        <% }
        }%>
    </body>
</html>
