package org.scoula.travel.dao;

import org.scoula.travel.domain.TravelImageVO;
import org.scoula.travel.domain.TravelVO;

import java.util.List;

public interface TravelDao {
    void insert(TravelVO travelVO);
    void insertImage(TravelImageVO travelImageVO);

    int getTotalCount();

    List<String> getDistricts();    //

    List<TravelVO> getTravels();    //
}