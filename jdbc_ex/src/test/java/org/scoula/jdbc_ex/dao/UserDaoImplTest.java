package org.scoula.jdbc_ex.dao;

import org.junit.jupiter.api.*;
import org.scoula.jdbc_ex.common.JDBCUtil;
import org.scoula.jdbc_ex.domain.UserVO;

import java.sql.Connection;
import java.sql.SQLException;

import static org.assertj.core.api.AssertionsForClassTypes.assertThat;
import static org.junit.jupiter.api.Assertions.*;

class UserDaoImplTest {

    Connection conn = JDBCUtil.getConnection();
    private UserDaoImpl userDao;

    @BeforeEach
    void setUp() {
        userDao = new UserDaoImpl();
    }

    @AfterAll //아래 메서드 다 호출하고 나서 한만만 실행하는
    static void tearDown() throws SQLException {
        JDBCUtil.close();
    }

    @Test
    void create() {
    }

    @Test
    @Disabled
    void getList() {
    }

    @Test
    @Disabled
    void get() {
    }

    @Test
    void update() throws SQLException {
        // given
        UserVO user = new UserVO("ice", "pass123", "Updated Name", "ADMIN");

        // when
        int result = userDao.update(user);

        //then
        assertThat(result).isEqualTo(1);
    }

    @Test
    void delete() throws SQLException {
        //given
        String id = "ice";

        //when
        int result = userDao.delete(id);

        // then
        assertThat(result).isEqualTo(1);
    }
}