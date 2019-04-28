<%-- 
    Document   : uinsert
    Created on : Apr 1, 2019, 4:38:00 PM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="org.hibernate.*"%>
<%@page import="com.vvp.java.*"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form>

           

            <input type="text" name="name" placeholder="Enter name"><br>

            <input type="text" name="branch" placeholder="Enter branch"><br>

            <input type="text" name="enrollment" placeholder="Enter enrollment"><br>

            <input type="text" name="sem" placeholder="Enter sem"><br>

             <input type="text" name="phone" placeholder="Enter phone"><br>


            <input type="submit" name="submit" value="submit">

        </form>
        <%
            if( request.getParameter("name")!=null & 
                    request.getParameter("branch")!=null &
                    request.getParameter("sem")!=null&
                    request.getParameter("phone")!=null&
                    request.getParameter("enrollment")!=null){


            String name=request.getParameter("name");
            int sem=Integer.parseInt(request.getParameter("sem"));
            int phone=Integer.parseInt(request.getParameter("phone"));
            int enrollment=Integer.parseInt(request.getParameter("enrollment"));
            String branch=request.getParameter("branch");
            Session s=NewHibernateUtil.getSessionFactory().openSession();
            Transaction tx=s.beginTransaction();
            User u=new User();
            u.setBranch(branch);
            u.setEnrollment(enrollment);
            u.setPhone(phone);
            u.setSem(sem);
            u.setName(name);
            //User u1=new User(,name,branch,sem,enrollment,phone);
            s.save(u);
            tx.commit();

            

          }

        %>
    </body>
</html>
