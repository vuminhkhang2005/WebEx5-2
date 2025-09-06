package com.example;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/TestServlet")
public class TestServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            String fname = request.getParameter("fname");
            String lname = request.getParameter("lname");
            String email = request.getParameter("email");
            String dob = request.getParameter("dob");
            String source = request.getParameter("source");
            String[] offers = request.getParameterValues("offers");
            String emailOffers = request.getParameter("emailoffers");
            String contact = request.getParameter("contact");

            // Gửi attribute sang thanks.jsp
            request.setAttribute("fname", fname);
            request.setAttribute("lname", lname);
            request.setAttribute("email", email);
            request.setAttribute("dob", dob);
            request.setAttribute("source", source);
            request.setAttribute("offers", offers);
            request.setAttribute("emailoffers", emailOffers);
            request.setAttribute("contact", contact);

            getServletContext().getRequestDispatcher("/thanks.jsp").forward(request, response);

        } catch (Exception e) {
            response.setContentType("text/plain");
            response.getWriter().println("An error occurred while processing your request:");
            e.printStackTrace(response.getWriter());
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doPost(request, response);
    }
}
