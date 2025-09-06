import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/EmailList")
public class EmailListServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");
        String email = request.getParameter("email");
        String dob = request.getParameter("dob");
        String source = request.getParameter("source");
        String[] announcements = request.getParameterValues("announcements");
        String contact = request.getParameter("contact");

        request.setAttribute("firstName", firstName);
        request.setAttribute("lastName", lastName);
        request.setAttribute("email", email);
        request.setAttribute("dob", dob);
        request.setAttribute("source", source);
        request.setAttribute("announcements", announcements);
        request.setAttribute("contact", contact);

        getServletContext()
                .getRequestDispatcher("/thanks.jsp")
                .forward(request, response);
    }
}
