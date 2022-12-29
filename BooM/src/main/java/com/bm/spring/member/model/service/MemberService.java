package com.bm.spring.member.model.service;

import java.util.ArrayList;

import com.bm.spring.member.model.vo.Member;
import com.bm.spring.member.model.vo.Review;

public interface MemberService {

	ArrayList<Review> reviewGetList();

	  //로그인 서비스 select
	  Member Memberlogin(Member m);
	  //회원가입 서비스 insert
	  int Memberinsert(Member m);
	  //회원정보수정 서비스 update
	  int Memberupdate(Member m);
	  //회원 탈퇴 서비스 update/delete
	  int Memberdelete(String MemberId);
	  //아이디 중복체크 서비스 select
	  int checkId(String checkId);
}
