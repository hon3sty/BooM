package com.bm.spring.board.model.service;

import java.util.ArrayList;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.bm.spring.board.model.dao.BoardDao;
import com.bm.spring.board.model.vo.Board;
import com.bm.spring.common.model.vo.PageInfo;

@Service
public class BoardServiceImpl implements BoardService {

	@Autowired
	public BoardDao boardDao;
	
	@Autowired
	public SqlSessionTemplate sqlSession;
	
	//공지사항 게시글 총 개수
	@Override
	public int noticeListCount() {
		return boardDao.noticeListCount(sqlSession);
	}

	//공지사항 리스트 조회 + 페이징처리
	@Override
	public ArrayList<Board> noticeSelectList(PageInfo pi) {
		return boardDao.noticeSelectList(sqlSession,pi);
	}
	
	//공지사항 조회수 증가
	@Override
	public int noticeCountIncrease(int boardNo) {
		return boardDao.noticeCountIncrease(sqlSession,boardNo);
	}

	//공지사항 상세 조회
	@Override
	public Board noticeSelect(int boardNo) {
		return boardDao.noticeSelect(sqlSession,boardNo);
	}

	//공지사항 작성
	@Override
	public int noticeInsert(Board b) {
		// TODO Auto-generated method stub
		return 0;
	}

	//공지사항 삭제
	@Override
	public int noticeDelete(int boardNo) {
		// TODO Auto-generated method stub
		return 0;
	}

	//공지사항 수정
	@Override
	public int noticeUpdate(Board b) {
		// TODO Auto-generated method stub
		return 0;
	}

}
