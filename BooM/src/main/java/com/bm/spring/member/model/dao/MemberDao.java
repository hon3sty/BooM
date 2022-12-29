package com.bm.spring.member.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.bm.spring.member.model.vo.Member;
import com.bm.spring.member.model.vo.Review;

@Repository
public class MemberDao {
	
	public ArrayList<Review> reviewGetList(SqlSessionTemplate sqlSession) {
		return (ArrayList)sqlSession.selectList("memberMapper.reviewList");
	}
	public Member Memberlogin(SqlSessionTemplate sqlSession, Member m) {
	    return sqlSession.selectOne("memberMapper.Memberlogin",m);
	  }
	  public int Memberinsert(SqlSessionTemplate sqlSession, Member m) {
	    return sqlSession.insert("memberMapper.Memberinsert",m);
	  }
	  public int Memberupdate(SqlSessionTemplate sqlSession, Member m) {
	    return sqlSession.update("memberMapper.Memberupdate",m);
	  }
	  public int Memberdelete(SqlSessionTemplate sqlSession, String MemberId) {
	    return sqlSession.update("memberMapper.Memberdelete",MemberId);
	  }
	  public int checkId(SqlSessionTemplate sqlSession, String checkId) {
		  return sqlSession.selectOne("memberMapper.checkId",checkId);
	  }
}
