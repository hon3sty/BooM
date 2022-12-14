package com.bm.spring.member.model.service;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.bm.spring.member.model.dao.MemberDao;
import com.bm.spring.member.model.vo.Member;

@Service
public class MemberServiceImpl implements MemberService{

  @Autowired
  private MemberDao memberDao;
  @Autowired
  private SqlSessionTemplate sqlSession;
  @Override
  public Member Memberlogin(String MemberId) {
    Member Memberlogin = memberDao.Memberlogin(sqlSession,MemberId);
        return Memberlogin;
  }
  @Override
  public int Memberinsert(Member m) {
    int result = memberDao.Memberinsert(sqlSession,m);
    return result;
  }
  @Override
  public int Memberupdate(Member m) {
        return memberDao.Memberupdate(sqlSession,m);
  }
  @Override
  public int Memberdelete(String MemberId) {
    return memberDao.Memberdelete(sqlSession, MemberId);
  }
  @Override
  public int checkId(String checkId) {
    return memberDao.checkId(sqlSession,checkId);
  }
}