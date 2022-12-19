package com.bm.spring.board.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;

import com.bm.spring.board.model.dao.BoardDao;
import com.bm.spring.board.model.vo.Board;
import com.bm.spring.common.model.vo.PageInfo;

public interface BoardService {

	
	//공지사항 게시글 총 개수
	int noticeListCount();
	
	//공지사항 리스트 조회 + 페이징처리
	ArrayList<Board> noticeSelectList(PageInfo pi);
	
	//공지사항 작성
	int noticeInsert(Board b);
	
	//공지사항 조회수 증가
	int noticeCountIncrease(int boardNo);
	
	//공지사항 상세 조회
	Board noticeSelect(int boardNo);
	
	//공지사항 삭제
	int noticeDelete(int boardNo);
	
	//공지사항 수정
	int noticeUpdate(Board b);
}
