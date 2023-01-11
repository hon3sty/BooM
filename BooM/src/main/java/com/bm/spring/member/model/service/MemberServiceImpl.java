package com.bm.spring.member.model.service;

import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.http.HttpServletResponse;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bm.spring.common.model.vo.PageInfo;
import com.bm.spring.member.model.dao.MemberDao;
import com.bm.spring.member.model.vo.Member;


@Service
public class MemberServiceImpl implements MemberService{
	@Autowired
	private MemberDao memberDao;
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
//	@Override
//	public ArrayList<Review> reviewGetList() {
//		return memberDao.reviewGetList(sqlSession);
//	}
	//로그인
	@Override
	public Member Memberlogin(Member m) {
	    Member Memberlogin = memberDao.Memberlogin(sqlSession,m);
	    return Memberlogin;
	}
	//회원가입 
	@Override
	public int Memberinsert(Member m) {
	    int result = memberDao.Memberinsert(sqlSession,m);
	    return result;
	}
	//회원정보수정
	@Override
	public int Memberupdate(Member m) {
	    return memberDao.Memberupdate(sqlSession,m);
	}
	//회원 탈퇴
	@Override
	public int Memberdelete(String MemberId) {
	    return memberDao.Memberdelete(sqlSession, MemberId);
	}
	//아이디 중복체크 서비스 select
	@Override
	public int checkId(String checkId) {
	    return memberDao.checkId(sqlSession,checkId);
	}
	//아이디 찾기
	@Override
	public String getId(Member m) {
		return memberDao.getId(sqlSession,m);
	}
	//비밀번호 찾기
	@Override
	public String getPwd(Member m) {
		return memberDao.getPwd(sqlSession,m);
	}
	//회원수 카운트
	@Override
	public int selectMemberCount() {
		return memberDao.selectMemberCount(sqlSession);
	}
	//회원리스트
	@Override
	public ArrayList<Member> movieGetAllList(PageInfo pi) {
		return memberDao.movieGetAllList(sqlSession,pi);
	}
	@Override
	public ArrayList<Member> memberGetList() {
		return memberDao.memberGetList(sqlSession);
	}
	//(관리자)회원 삭제
	@Override
	public int memberDelete(String memberNo) {
		return memberDao.memberDelete(sqlSession,memberNo);
	}	
}