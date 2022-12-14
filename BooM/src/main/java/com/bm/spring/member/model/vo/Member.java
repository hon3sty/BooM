package com.bm.spring.member.model.vo;
import java.sql.Date;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@NoArgsConstructor //기본 생성자
@AllArgsConstructor //모든필드 매개변수 생성자
@Setter //setter메소드들
@Getter //getter메소드들
@ToString //toString 메소드
public class Member {
    private int memberNo;       //  MEMBER_NO NUMBER
    private String memberId;    //  MEMBER_ID VARCHAR2(30)
    private String memberPwd;   //  MEMBER_PWD VARCHAR2(30)
    private String memberName;  //  MEMBER_NAME VARCHAR2(30)
    private String phone;       //  PHONE VARCHAR2(13)
    private String email;       //  EMAIL VARCHAR2(100)
    private String address;     //  ADDRESS VARCHAR2(200)
    private Date enrollDate;    //  ENROLL_DATE DATE
    private Date modifyDate;    //  MODIFY_DATE DATE
    private String status;      //  STATUS VARCHAR2(1)
    private int memberRole;     //  MEMBER_ROLE INT
}