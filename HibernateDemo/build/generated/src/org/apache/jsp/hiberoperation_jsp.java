package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.List;
import org.hibernate.*;
import com.vvp.java.*;

public final class hiberoperation_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List _jspx_dependants;

  private javax.el.ExpressionFactory _el_expressionfactory;
  private org.apache.AnnotationProcessor _jsp_annotationprocessor;

  public Object getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
    _jsp_annotationprocessor = (org.apache.AnnotationProcessor) getServletConfig().getServletContext().getAttribute(org.apache.AnnotationProcessor.class.getName());
  }

  public void _jspDestroy() {
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\"\n");
      out.write("\"http://www.w3.org/TR/html4/loose.dtd\">\n");
      out.write("\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <a href=\"uinsert.jsp\"  style=\"float:right\">Insert Student Data</a>\n");
      out.write("          ");


        Session s = NewHibernateUtil.getSessionFactory().openSession();
        String hq="From User";

        Query q=s.createQuery(hq);
        List<User> results = q.list();

        
      out.write("\n");
      out.write("        <table border=\"1\">\n");
      out.write("        <tr>\n");
      out.write("            <td>Sid</td>\n");
      out.write("            <td>Name</td>\n");
      out.write("            <td>Branch</td>\n");
      out.write("            <td>Enrollment</td>\n");
      out.write("            <td>Sem</td>\n");
      out.write("            <td>Phno</td>\n");
      out.write("\n");
      out.write("        </tr>\n");
      out.write("        ");

            for (User record : results) {
      out.write("\n");
      out.write("        <tr><td>");
      out.print(record.getSid());
      out.write("</td>\n");
      out.write("            <td>");
      out.print(record.getName());
      out.write("</td>\n");
      out.write("            <td>");
      out.print(record.getBranch());
      out.write("</td>\n");
      out.write("            <td>");
      out.print(record.getEnrollment());
      out.write("</td>\n");
      out.write("            <td>");
      out.print(record.getSem());
      out.write("</td>\n");
      out.write("            <td>");
      out.print(record.getPhone());
      out.write("</td>\n");
      out.write("           \n");
      out.write("        </tr>\n");
      out.write("        ");

        }
      out.write("\n");
      out.write("        </table>\n");
      out.write("        <form >\n");
      out.write("\n");
      out.write("            <select name=\"searchby\">\n");
      out.write("                <option value=\"sid\">sid</option>\n");
      out.write("                <option value=\"name\">name</option>\n");
      out.write("                <option value=\"branch\">branch</option>\n");
      out.write("                <option value=\"sem\">sem</option>\n");
      out.write("                <option value=\"enrollment\">enrollment</option>\n");
      out.write("            </select>\n");
      out.write("            <input type=\"text\" name=\"search\" >\n");
      out.write("            <input type=\"submit\" name=\"submit\" value=\"search\">\n");
      out.write("            \n");
      out.write("            <br>\n");
      out.write("\n");
      out.write("        </form>\n");
      out.write("      \n");
      out.write("\n");
      out.write("        ");

        if (request.getParameter("search") != null) {


            String searchby = request.getParameter("searchby");
            String search = request.getParameter("search");
            //Session s = NewHibernateUtil.getSessionFactory().openSession();
            Query qry = s.createQuery("FROM User  where " + searchby + " like'%" + search + "%'");
            List<User> results1 = qry.list();

        
      out.write("\n");
      out.write("        <table border=\"1\">\n");
      out.write("        <tr>\n");
      out.write("            <td>Sid</td>\n");
      out.write("            <td>Name</td>\n");
      out.write("            <td>Branch</td>\n");
      out.write("            <td>Enrollment</td>\n");
      out.write("            <td>Sem</td>\n");
      out.write("            <td>Phno</td>\n");
      out.write("\n");
      out.write("        </tr>\n");
      out.write("        ");

            for (User record : results1) {
      out.write("\n");
      out.write("        <tr><td>");
      out.print(record.getSid());
      out.write("</td>\n");
      out.write("            <td>");
      out.print(record.getName());
      out.write("</td>\n");
      out.write("            <td>");
      out.print(record.getBranch());
      out.write("</td>\n");
      out.write("            <td>");
      out.print(record.getEnrollment());
      out.write("</td>\n");
      out.write("            <td>");
      out.print(record.getSem());
      out.write("</td>\n");
      out.write("            <td>");
      out.print(record.getPhone());
      out.write("</td>\n");
      out.write("            <td>\n");
      out.write("            <a href=\"uedit.jsp?sid=");
      out.print(record.getSid());
      out.write("\" >Edit</a>\n");
      out.write("            <a href=\"udelete.jsp?sid=");
      out.print(record.getSid());
      out.write("\" >Delete</a>\n");
      out.write("            </td>\n");
      out.write("        </tr>\n");
      out.write("        ");
 }
        }
      out.write("\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try { out.clearBuffer(); } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
