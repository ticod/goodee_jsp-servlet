package model;

import java.sql.*;

public class DbConnection {

    private DbConnection() { }

    public static Connection getConnection () {
        Connection conn = null;
        try {
            Class.forName("org.mariadb.jdbc.Driver");
            conn = DriverManager.getConnection(
                    "jdbc:mariadb://localhost:3306/classdb", "scott", "1234"
            );
            return conn;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return conn;
    }

    public static void close (Connection conn, Statement stmt, ResultSet rs){
        try {
            if (rs != null) rs.close();
            if (stmt != null) stmt.close();
            if (conn != null) conn.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}