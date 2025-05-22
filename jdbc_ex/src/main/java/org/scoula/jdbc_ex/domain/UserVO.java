package org.scoula.jdbc_ex.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;


/*
 * VO (Value Object)
 * - 데이터를 담는 객체
 * - 하나의 도메인 데이터를 표현하기 위한 객체
 * - 주로 DB 테이블의 한 행을 자바 객체로 표현
 *
 * DTO (Data Transfer Object)
 * - 계층간 데이터 전달을 위해 사용하는 객체
 * ex) 네트워크나 외부 API로 데이터 전송할때 사용
 * - 경우에 따라 여러 VO의 필드를 조합하기도함.
 *
 * */
@Data //get/set/toString
@NoArgsConstructor
@AllArgsConstructor
public class UserVO {
    //자바에서 가방에 들어있는 데이터를
    //나중에 넣거나 꺼냈을 때 자바에 넣거나 할 때 사용할
    //가방 역할의 클래스
    //VO는 RDB의 테이블(엔터티)마다 하나씩 만들어준다.
    //VO의 변수는 테이블의 컬럼과 동일한 이름으로
    //만들어주는 편!
    private String id;
    private String password;
    private String name;
    private String role;

    //가방의 각 필드에 값을 넣을 때는 set~~()사용
    //가방의 각 필드에서 값을 꺼낼 때는 get~~()사용

}