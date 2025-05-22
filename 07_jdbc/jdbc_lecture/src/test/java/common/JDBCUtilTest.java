package common;

import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import static org.junit.jupiter.api.Assertions.*;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class JDBCUtilTest {
    @Test
    @DisplayName("db 접속 연습")

    void testConnection() throws ClassNotFoundException {
        /*
        * 1. 연결 만들기
        * -> url, 사용자 계정(id), 비밀번호(password)
        * */
        String url = "jdbc:mysql://localhost:3306/testdb";
        String id = "root";
        String password = "1234";

        Class.forName("com.mysql.cj.jdbc.Driver");

        try (Connection conn = DriverManager.getConnection(url, id, password)){
            System.out.println("연결성공!");

            // 객체가 생성되었는데
            assertNotNull(conn);
            } catch (SQLException e){
            throw new RuntimeException(e);
        }
        }
    }
