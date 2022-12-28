package com.bm.spring.member.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bm.spring.member.model.dao.MemberDao;
import com.bm.spring.member.model.vo.Review;

@Service
public class MemberServiceImpl implements MemberService{
	@Autowired
	private MemberDao memberDao;
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	

	@Override
	public ArrayList<Review> reviewGetList() {
		return memberDao.reviewGetList(sqlSession);
	}

}
