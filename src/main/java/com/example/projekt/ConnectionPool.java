package com.example.projekt;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

public class ConnectionPool {
    Connection conn = null;

    public Connection getConnection() {
        try {
            Class.forName("org.postgresql.Driver");
        } catch (ClassNotFoundException e1) {
            // TODO Auto-generated catch block
            e1.printStackTrace();
        }
          String username = "gdqekcfkewuhhb";
          String password = "029f2feb66405dad1edab866a835ed398b857a2954c89e895cec6bc8cd1e862d";
          String dbUrl = "jdbc:postgresql://" + "ec2-54-75-244-161.eu-west-1.compute.amazonaws.com:5432"
                + "/d15rkr8aga0lvv";  //"/d15rkr8aga0lvv?sslmode=require";

        try {
            return DriverManager.getConnection(dbUrl, username, password);
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return conn;
    }

    public void closeConnection(){
        try {
            conn.close();
        } catch (SQLException e) {
            //LOGGER.error("Error while closing connection");
        }
    }
}

//        String username = "gdqekcfkewuhhb";
//        String password = "029f2feb66405dad1edab866a835ed398b857a2954c89e895cec6bc8cd1e862d";
//        String dbUrl = "jdbc:postgresql://" + "ec2-54-75-244-161.eu-west-1.compute.amazonaws.com:5432"
//                + "/d15rkr8aga0lvv";  //"/d15rkr8aga0lvv?sslmode=require";

//    String username = "postgres";
//    String password = "password";
//    String dbUrl = "jdbc:postgresql://localhost:5432/postgres";