package com.bm.spring.board.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.bm.spring.board.model.vo.Board;
import com.bm.spring.board.model.vo.BoardAttachment;
import com.bm.spring.common.model.vo.PageInfo;

@Repository
public class BoardDao {

	//공지사항 게시글 총 개수
	public int noticeListCount(SqlSessionTemplate sqlSession) {
		return sqlSession.selectOne("boardMapper.noticeListCount");
	}

	//공지사항 리스트 조회 + 페이징처리
	public ArrayList<Board> noticeSelectList(SqlSessionTemplate sqlSession, PageInfo pi) {
		
		int limit = pi.getBoardLimit();
		int offset = (pi.getCurrentPage()-1) * limit;
		
		RowBounds rowBounds = new RowBounds(offset,limit);
		
		return (ArrayList)sqlSession.selectList("boardMapper.noticeSelectList", null, rowBounds);
	}

	//공지사항 조회수 증가
	public int noticeCountIncrease(SqlSessionTemplate sqlSession, int boardNo) {
		return sqlSession.update("boardMapper.noticeCountIncrease", boardNo);
	}
	
	//공지사항 상세 조회
	public Board noticeSelect(SqlSessionTemplate sqlSession, int boardNo) {
		return sqlSession.selectOne("boardMapper.noticeSelect", boardNo);
	}

	//공지사항 등록
	public int noticeInsert(SqlSessionTemplate sqlSession, Board b) {
		return sqlSession.insert("boardMapper.noticeInsert", b);
	}

	//공지사항 첨부파일 등록
	public int noticeAttachInsert(SqlSessionTemplate sqlSession, BoardAttachment ba) {
		return sqlSession.insert("boardMapper.noticeAttachInsert", ba);
	}

	//공지사항 첨부파일 조회
	public BoardAttachment noticeAttachSelect(SqlSessionTemplate sqlSession, int boardNo) {
		return sqlSession.selectOne("boardMapper.noticeAttachSelect", boardNo);
	}
	

}