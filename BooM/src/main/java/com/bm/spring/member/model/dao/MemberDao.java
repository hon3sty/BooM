package com.bm.spring.member.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.bm.spring.common.model.vo.PageInfo;
import com.bm.spring.member.model.vo.Member;

@Repository 
public class MemberDao {
	
//	public ArrayList<Review> reviewGetList(SqlSessionTemplate sqlSession) {
//		return (ArrayList)sqlSession.selectList("memberMapper.reviewList");
//	}
	//로그인
	public Member Memberlogin(SqlSessionTemplate sqlSession, Member m) {
	    return sqlSession.selectOne("memberMapper.Memberlogin",m);
	}
	//회원가입
	public int Memberinsert(SqlSessionTemplate sqlSession, Member m) {
	    return sqlSession.insert("memberMapper.Memberinsert",m);
	}
	//회원정보 변경
	public int Memberupdate(SqlSessionTemplate sqlSession, Member m) {
	    return sqlSession.update("memberMapper.Memberupdate",m);
	}
	//회원 탈퇴
	public int Memberdelete(SqlSessionTemplate sqlSession, String MemberId) {
	    return sqlSession.update("memberMapper.Memberdelete",MemberId);
	}
	//아이디 중복 체크
	public int checkId(SqlSessionTemplate sqlSession, String checkId) {
		return sqlSession.selectOne("memberMapper.checkId",checkId);
	}
	//아이디 찾기 (진짜)
	public String getId(SqlSessionTemplate sqlSession, Member m) {
		return sqlSession.selectOne("memberMapper.getId", m);
	}
	//비밀번호 찾기
	public String getPwd(SqlSessionTemplate sqlSession, Member m) {
		return sqlSession.selectOne("memberMapper.getPwd", m);
	}
	//회원정보 가져오기
	public ArrayList<Member> memberGetList(SqlSessionTemplate sqlSession) {
		return (ArrayList)sqlSession.selectList("memberMapper.memberGetList");
	}
	//회원수 카운트
	public int selectMemberCount(SqlSessionTemplate sqlSession) {
		return sqlSession.selectOne("memberMapper.selectMemberCount");
	}
	//회원리스트
	public ArrayList<Member> movieGetAllList(SqlSessionTemplate sqlSession, PageInfo pi) {
		int limit = pi.getBoardLimit();
		int offset = (pi.getCurrentPage()-1) * limit;
		
		RowBounds rowBounds = new RowBounds(offset, limit);
		
		return (ArrayList)sqlSession.selectList("memberMapper.movieGetAllList",null,rowBounds);
	}
	//(관리자)회원 삭제
	public int memberDelete(SqlSessionTemplate sqlSession, String memberNo) {
		return sqlSession.update("memberMapper.memberDelete",memberNo);
	}
		
}
