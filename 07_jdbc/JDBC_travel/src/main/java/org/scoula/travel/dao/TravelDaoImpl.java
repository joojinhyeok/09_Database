package org.scoula.travel.dao;

import org.scoula.common.JDBCUtil;
import org.scoula.travel.domain.TravelImageVO;
import org.scoula.travel.domain.TravelVO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.List;

public class TravelDaoImpl implements TravelDao{

    Connection conn = JDBCUtil.getConnection();

    @Override
    public void insert(TravelVO travelVO) {
        // database crate
        String sql = "insert into tbl_travel(no,district,title,description,address,phone) values(?, ?, ?, ?, ?, ?)";
        try(PreparedStatement pstmt = conn.prepareStatement(sql)){

            // 쿼리문 완성
            pstmt.setLong(1, travelVO.getNo());
            pstmt.setString(2, travelVO.getDistrict());
            pstmt.setString(3, travelVO.getTitle());
            pstmt.setString(4, travelVO.getDescription());
            pstmt.setString(5, travelVO.getAddress());
            pstmt.setString(6, travelVO.getPhone());

            int result = pstmt.executeUpdate();

        } catch (SQLException e){
        }
    }

    @Override
    public void insertImage(TravelImageVO travelImageVO) {
        String sql = "insert into tbl_travel_image(filename, travel_no) values(?, ?)";
        try(PreparedStatement pstmt = conn.prepareStatement(sql)){
            // 1. 쿼리 완성시키기
            pstmt.setString(1, travelImageVO.getFilename());
            pstmt.setLong(2, travelImageVO.getTravelNo());

            int row = pstmt.executeUpdate();

        }catch (SQLException e){
            throw new RuntimeException(e);
        }
    }

    @Override
    public int getTotalCount() {
        return 0;
    }

    @Override
    public List<String> getDistricts() {
        return List.of();
    }

    @Override
    public List<TravelVO> getTravels() {
        return List.of();
    }
}