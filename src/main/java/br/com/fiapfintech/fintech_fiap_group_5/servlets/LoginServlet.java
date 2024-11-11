package br.com.fiapfintech.fintech_fiap_group_5.servlets;

import br.com.fiapfintech.fintech_fiap_group_5.dao.implement.UserDAO;
import br.com.fiapfintech.fintech_fiap_group_5.entities.User;
import br.com.fiapfintech.fintech_fiap_group_5.exceptions.BadRequestException;
import br.com.fiapfintech.fintech_fiap_group_5.exceptions.KeyMessageException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {
    private UserDAO userDAO = new UserDAO();

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        final String email = request.getParameter("email");
        final String password = request.getParameter("password");

        try {
            final List<User> users = userDAO.getAll();

            this.validateLoginAccess(users, email, password);
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

    private void validateLoginAccess(final List<User> users, final String email,final String password) {
        users.stream().forEach(user -> {
            final boolean hasEmailOrPassword = email.equals(user.getEmail()) || password.equals(user.getPassword());

            if(!hasEmailOrPassword) {
                throw new BadRequestException(KeyMessageException.EMAIL_OU_SENHA_INVALIDO.getMessage());
            }
        });

        System.out.println("Login efetuado com sucesso!");
    }

}
