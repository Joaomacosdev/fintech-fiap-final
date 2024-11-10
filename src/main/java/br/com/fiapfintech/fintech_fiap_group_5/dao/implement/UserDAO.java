package br.com.fiapfintech.fintech_fiap_group_5.dao.implement;

import br.com.fiapfintech.fintech_fiap_group_5.entities.User;
import br.com.fiapfintech.fintech_fiap_group_5.exceptions.NotFoundException;
import br.com.fiapfintech.fintech_fiap_group_5.factory.ConnectionFactory;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class UserDAO {

    private Connection conn;

    public UserDAO() {
        try {
            conn = ConnectionFactory.getConnection();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void closeConnection() throws SQLException {
        this.conn.close();
    }

    public void create(final User user) {
        String query = "INSERT INTO tb_user (id,name, email, password) " +
                "VALUES (seq_user.nextval,?,?,?)";

        try {
            PreparedStatement stm = conn.prepareStatement(query);
            stm.setString(1,user.getName());
            stm.setString(2,user.getEmail());
            stm.setString(3, user.getPassword());

            stm.executeUpdate();
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    public User getById(final long id) throws SQLException {
        String query = "SELECT * FROM tb_user WHERE id = '?'";

            PreparedStatement stm = conn.prepareStatement(query);
            ResultSet result = stm.getResultSet();

            return this.buildUser(result);
    }

    public List<User> getAll() throws SQLException, NotFoundException {
        String query = "SELECT * FROM tb_user";
        PreparedStatement stm = conn.prepareStatement(query);
        ResultSet result = stm.executeQuery();

        List<User> users = new ArrayList<>();

        while(result.next()) {
            User user = this.buildUser(result);
            users.add(user);
        }

        return users;
    }

    private User buildUser(final ResultSet result) throws SQLException{
        Long userId = result.getLong("id");
        String name = result.getString("name");
        String email = result.getString("email");
        String password = result.getString("password");

        return User.builder()
                .id(userId)
                .name(name)
                .email(email)
                .password(password)
                .build();
    }

}
