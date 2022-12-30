package com.bm.spring.board.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bm.spring.board.model.dao.BoardDao;
import com.bm.spring.board.model.vo.Board;
import com.bm.spring.board.model.vo.BoardAttachment;
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

	//공지사항 첨부파일 조회
	@Override
	public BoardAttachment noticeAttachSelect(int boardNo) {
		return boardDao.noticeAttachSelect(sqlSession,boardNo);
	}
	
	//공지사항 작성
	@Override
	public int noticeInsert(Board b) {
		return boardDao.noticeInsert(sqlSession,b);
	}
	
	//공지사항 첨부파일 등록
	@Override
	public int noticeAttachInsert(BoardAttachment ba) {
		return boardDao.noticeAttachInsert(sqlSession,ba);
	}
	
	//공지사항 수정
	@Override
	public int noticeUpdate(Board b) {
		return boardDao.noticeUpdate(sqlSession,b);
	}
	
	//공지사항 첨부파일 수정
	@Override
	public int noticeAttachUpdate(BoardAttachment ba) {
		return boardDao.noticeAttachUpdate(sqlSession,ba);
	}

	//공지사항 수정에서 첨부파일 없을때 추가
	@Override
	public int noticeNewAttachInsert(BoardAttachment ba) {
		return boardDao.noticeNewAttachInsert(sqlSession,ba);
	}
	
	//공지사항 삭제
	@Override
	public int noticeDelete(int boardNo) {
		return boardDao.noticeDelete(sqlSession,boardNo);
	}

	//공지사항 첨부파일 삭제
	@Override
	public int noticeAttachDelete(int boardNo) {
		return boardDao.noticeAttachInsert(sqlSession, boardNo);
	}


}
