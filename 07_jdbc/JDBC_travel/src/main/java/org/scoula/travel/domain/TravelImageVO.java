package org.scoula.travel.domain;


import lombok.Builder;
import lombok.Data;

@Data
@Builder
public class TravelImageVO {

    // 데이터가 보이면 안되니까 private으로 선언
    private Long no;
    private String filename;
    private Long travelNo;
}
