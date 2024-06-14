package model;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;
import java.sql.ResultSet;

/**
 *
 * @author KSHPRIME
 */
public class MySQL {

    private static Connection connection;
    private static final String userName = "root";
    private static final String password = "1975@#Cc@2005";
    private static final String dataBase = "mydb";

    public static Statement createConnection() throws Exception {

        if (connection == null) {

            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/" + dataBase, userName, password);

        }

        Statement statement = connection.createStatement();

        return statement;

    }

    public static void iud(String query) {
        try {

            createConnection().executeUpdate(query);

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static ResultSet search(String query) throws Exception {

        ResultSet resultSet = createConnection().executeQuery(query);

        return resultSet;

    }

}
