package com.utility;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBconnection {

    public static Connection getConnection() {

        Connection con = null;

        try {

            Class.forName("com.mysql.cj.jdbc.Driver");

            con = DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/community_skills",
                    "root",
                    "tiger");

        } catch (ClassNotFoundException | SQLException e) {

            e.printStackTrace();
        }
        return con;
    }
}
