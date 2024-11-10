package br.com.fiapfintech.fintech_fiap_group_5.factory;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionFactory {
    private static ConnectionFactory connectionManager;

    private ConnectionFactory() {
    }

    public static ConnectionFactory getInstance() {
        if (connectionManager == null) {
            connectionManager = new ConnectionFactory();
        }
        return connectionManager;
    }
    //Localhost
            private static final String URL = "jdbc:oracle:thin:@localhost:1521:xe";
            private static final String USER = "system";
            private static final String PASSWORD = "root";

//            private static final String URL =  "jdbc:oracle:thin:@oracle.fiap.com.br:1521:ORCL";
//            private static final String USER = "USUARIO";
//            private static final String PASSWORD = "SENHA";

    public static Connection getConnection() {
        try {
            Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection connection = DriverManager.getConnection(URL, USER, PASSWORD);
            System.out.println("Conexao feita com sucesso!");

            return connection;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }
    }

}