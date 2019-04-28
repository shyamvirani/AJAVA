<%-- 
    Document   : uedit
    Created on : Apr 1, 2019, 4:37:42 PM
    Author     : hp
--%>

<%@page import="com.vvp.java.*"%>
<%@page import="java.util.List"%>
<%@page import="com.vvp.java.*"%>
<%@page import="org.hibernate.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">


<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        int sid=Integer.parseInt(request.getParameter("sid"));
        Session s=NewHibernateUtil.getSessionFactory().openSession();
        String hq1="FROM User u WHERE u.sid="+sid;
        Query query=s.createQuery(hq1);
        List<User> results=query.list();
      %>
      <%
            for(User record : results){
        %>
        <form method="post">
            <input type="hidden" name="sid" value="<%=record.getSid()%>"><br>
             Name:<br>
            <input type="text" name="name" value="<%=record.getName()%>"><br>
               Branch:<br>
             <input type="text" name="branch" value="<%=record.getBranch()%>"><br>
                 Enrollmrnt:<br>
              <input type="text" name="enrollment" value="<%=record.getEnrollment()%>"><br>
                  Semester:<br>
               <input type="text" name="sem" value="<%=record.getSem()%>"><br>
                   Phone:<br>
                <input type="text" name="phone" value="<%=record.getPhone()%>"><br>
                <input type="submit" name="submit" value="update">
        </form>

        <% } %>

<%
if(request.getParameter("submit")!=null){

    int sid1 = Integer.parseInt(request.getParameter("sid"));
    String name = request.getParameter("name");
    String branch = request.getParameter("branch");
    int enrollment = Integer.parseInt(request.getParameter("enrollment").toString());
    int sem = Integer.parseInt(request.getParameter("sem").toString());
    int phone = Integer.parseInt(request.getParameter("phone").toString());
    Transaction tx=s.beginTransaction();
    User u1=(User)s.get(User.class, new Integer(sid));
    u1.setBranch(branch);
    u1.setEnrollment(enrollment);
    u1.setPhone(phone);
    u1.setSem(sem);
    u1.setName(name);
    s.update(u1);
    tx.commit();
    
   
}

%>
</body>


</html>
