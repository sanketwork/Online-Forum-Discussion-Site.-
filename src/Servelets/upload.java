package Servelets;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.nio.file.Files;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import MyPackage.ConnectionManager;

@MultipartConfig
@WebServlet(name = "upload", urlPatterns = {"/upload"})
public class upload extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet upload</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet upload at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
   
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            String subject = request.getParameter("subject");
            String description = request.getParameter("description");
            Part p = request.getPart("file");
            String filename = p.getSubmittedFileName();
            InputStream is = p.getInputStream();
            ConnectionManager cm = new ConnectionManager();
            ResultSet rs = cm.selectQuery("select nvl(max(id),0)+1 from Studymaterial");
            rs.next();
            int id = rs.getInt(1);
            String cdate = new java.text.SimpleDateFormat("dd/MM/yyyy hh:mm:ss").format(new java.util.Date());
            String query = "insert into studymaterial values('" + id + "','" + subject + "','" + description + "','" + (id + filename) + "','" + cdate + "')";
            if (cm.executeNonQuery(query) == true) {
                File f = new File(request.getRealPath("/upload"), id + filename);
                Files.copy(is, f.toPath());
                response.sendRedirect("adminzone/studymaterialupload.jsp?s=saved");
            } else {
                response.sendRedirect("adminZone/studymaterialupload.jsp?s=not");
            }
        } catch (Exception e) {
            response.sendRedirect("adminzone/studymaterialupload.jsp?err=" + e);
        }

    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
