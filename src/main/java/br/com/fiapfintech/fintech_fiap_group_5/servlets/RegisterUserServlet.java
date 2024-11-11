package br.com.fiapfintech.fintech_fiap_group_5.servlets;

import br.com.fiapfintech.fintech_fiap_group_5.dao.implement.UserDAO;
import br.com.fiapfintech.fintech_fiap_group_5.entities.User;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.sql.SQLException;

@WebServlet(urlPatterns = "/criar-conta")
public class RegisterUserServlet extends HttpServlet {
    private UserDAO userDAO = new UserDAO();

    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response) {
        final String name = request.getParameter("name");
        final String email = request.getParameter("email");
        final String password = request.getParameter("password");

        try {
            userDAO.create(User.builder().name(name).email(email).password(password).build());
            System.out.println("User was created!");

            response.sendRedirect("home.jsp");
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                userDAO.closeConnection();
            } catch (SQLException e) {
                throw new RuntimeException(e);
            }
        }
    }
}
