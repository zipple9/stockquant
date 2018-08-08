package MVC.common;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

public class dbOpreation {    //这个类目前没有用

    static String tableName;
    static String creatsql;
    static final String JDBC_DRIVER = "com.mysql.jdbc.Driver";
    static final String DB_URL = "jdbc:mysql://localhost:3306/stock_db";
    static final String name = "root";
    static final String pwd = "111111";


    public static void createTable(String tN) {
        if(tN != null && tN != "") {
            tableName = tN;
            creatsql = "CREATE TABLE " + tableName + "(date DATE not null," +
                    "open double not null," +
                    "high double not null," +
                    "low double not null," +
                    "close double not null," +
                    "volume double not null," +
                    "amount double not null," +
                    "PRIMARY KEY (date))";
            Connection conn = null;
            Statement stmt = null;

            try {
                Class.forName("com.mysql.jdbc.Driver");
//                System.out.println("//连接数据库");
                conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/stock_db", "root", "111111");
//                System.out.println("//创建表");
                stmt = conn.createStatement();
                if(0L == stmt.executeLargeUpdate(creatsql)) {
                    System.out.println("表 "+tableName+" 创建成功");
                } else {
                    System.out.println("表 "+tableName+" 创建失败");
                }

                stmt.close();
                conn.close();
//                System.out.println("//关闭连接");
            } catch (Exception var4) {
                System.out.println("出错");
                var4.printStackTrace();
            }

        } else {
            System.out.println("出错");
        }
    }
}