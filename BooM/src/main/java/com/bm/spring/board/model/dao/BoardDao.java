package com.bm.spring.board.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class BoardDao {

	//공지사항 게시글 총 개수
	public int noticeListCount(SqlSessionTemplate sqlSession) {
		return sqlSession.selectOne("boardMapper.noticeListCount");
	}

}