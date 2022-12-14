package com.bm.spring.board.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class BoardController {
	
	// 고객센터 메인으로 이동
	@RequestMapping("csMainForm.bo")
	public String csMain() {
		return "board/CS_0010";
	}
	
	// 공지사항 리스트로 이동
	@RequestMapping("noticeListForm.bo")
	public String noticeList() {
		return "board/NT_0010";
	} 
	
	// 공지사항 작성
	public void noticeInsert() {

	}

	// 공지사항 수정
	public void noticeUpdate() {

	}

	// 공지사항 삭제
	public void noticeDelete() {

	}

	// 공지사항 게시글 리스트 조회
	public void noticeSelectList() {

	}

	// 공지사항 게시글 상세 조회
	public void noticeSelect() {

	}

	// FAQ 작성
	public void faqInsert() {

	}

	// FAQ 수정
	public void faqUpdate() {

	}

	// FAQ 삭제
	public void faqDelete() {

	}

	// FAQ 게시글 리스트 조회
	public void faqSelectList() {

	}

	// FAQ 게시글 상세 조회
	public void faqSelect() {

	}
}
