package jdbc.section1;

import jdbc.common.JDBCUtil;

import java.sql.Connection;

public class Application {
    public static void main(String[] args) {

        Connection conn = JDBCUtil.getConnection();
    }
}