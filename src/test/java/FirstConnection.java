import org.junit.jupiter.api.*;

import javax.swing.plaf.nimbus.*;
import java.sql.*;

public class FirstConnection {

    public static void main(String[] args) throws SQLException {
        String dbUrl = "jdbc:oracle:thin:@3.216.30.92:1521:XE";
        String dbUsername = "hr";
        String dbPassword = "hr";

        Connection con = DriverManager.getConnection(dbUrl,dbUsername,dbPassword);
        Statement stmt = con.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,
                ResultSet.CONCUR_READ_ONLY);
        ResultSet rs = stmt.executeQuery("select * from JOB_HISTORY");

        rs.next();  // i am at row 1
        System.out.println(rs.getString("JOB_ID"));
        Assertions.assertEquals("IT_PROG",rs.getString("JOB_ID"));
        String result = rs.getString(1) + " " + rs.getString(2);
        System.out.println(result);
        System.out.println("*****************");
        rs.next(); // i am at rwo 2
        System.out.println(rs.getString(4));
        System.out.println("*****************");

        rs.previous();
        rs.first();
        rs.last();
        rs.absolute(4);
        rs.afterLast();
        rs.beforeFirst();

        System.out.println("data table info");

        ResultSetMetaData rsmd = rs.getMetaData();
        System.out.println(rsmd.getColumnCount());
        System.out.println(rsmd.getColumnName(1));
        System.out.println(rsmd.getColumnName(2));
        System.out.println(rsmd.getColumnName(3));


        System.out.println("Database meta data");
        DatabaseMetaData dbmd = con.getMetaData();
        System.out.println(dbmd.getUserName());
        System.out.println(dbmd.getDriverName());


    }
}
