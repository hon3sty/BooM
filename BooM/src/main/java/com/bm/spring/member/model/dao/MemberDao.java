package com.bm.spring.member.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.bm.spring.member.model.vo.Review;

@Repository
public class MemberDao {
	
	public ArrayList<Review> reviewGetList(SqlSessionTemplate sqlSession) {
		return (ArrayList)sqlSession.selectList("memberMapper.reviewList");
	}

}
