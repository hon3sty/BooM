package com.bm.spring.board.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.bm.spring.board.model.service.BoardService;
import com.bm.spring.board.model.vo.Board;
import com.bm.spring.common.model.vo.PageInfo;
import com.bm.spring.common.template.Pagination;

	
@Controller
public class BoardController {
	
	@Autowired
	private BoardService boardService;
	
	// 고객센터 메인으로 이동
	@RequestMapping("csMainForm.bo")
	public String csMain() {
		return "board/CS_0010";
	}

	//공지사항 상세페이지로 이동
	@RequestMapping("noticeDetailForm.bo")
	public String noticeDetailForm() {
		return "board/NT_0040";
	} 
	
	//FAQ 리스트로 이동
	@RequestMapping("faqListForm.bo")
	public String faqList() {
		return "board/FQ_0010";
	} 
	
	// 공지사항 리스트 조회 + 페이징 처리
	@RequestMapping("noticeList.bo")
	public String noticeSelectList(@RequestParam(value="currentPage",defaultValue="1") int currentPage,
									Model model) {
		
		//페이징 처리를 위해 전체 게시글 개수 조회해오기
		int listCount = boardService.noticeListCount();
		int pageLimit = 10;
		int boardLimit = 5;
		PageInfo pi = Pagination.getPageinfo(listCount, currentPage, pageLimit, boardLimit);
		
		ArrayList<Board> list = boardService.noticeSelectList(pi);
		
		model.addAttribute("list",list);
		model.addAttribute("pi", pi);
		
		return "board/NT_0010";
	} 
	
	// 공지사항 관리페이지 리스트 조회 + 페이징 처리
	@RequestMapping("noticeAdmin.bo")
	public String noticeAdmin(@RequestParam(value="currentPage",defaultValue="1") int currentPage,
								Model model) {

		//페이징 처리를 위해 전체 게시글 개수 조회해오기
		int listCount = boardService.noticeListCount();
		int pageLimit = 10;
		int boardLimit = 5;
		PageInfo pi = Pagination.getPageinfo(listCount, currentPage, pageLimit, boardLimit);
		
		ArrayList<Board> list = boardService.noticeSelectList(pi);
		
		model.addAttribute("list",list);
		model.addAttribute("pi", pi);
		
		return "board/NT_0020";
		} 
	
	// 공지사항 게시글 상세 조회
	@RequestMapping("noticeDetail.bo")
	public ModelAndView noticeSelect(int bno, ModelAndView mv) {
		
		//공지사항 조회수 증가
		int count =  boardService.noticeCountIncrease(bno);
		
		if(count>0) {
			Board b = boardService.noticeSelect(bno);
			mv.addObject("b",b).setViewName("board/NT_0040");
		}else {
			mv.addObject("errorMsg", "공지사항 조회 실패").setViewName("common/errorPage");
		}
		return mv;
		
	}
	
	// 공지사항 작성 페이지로 이동
	@GetMapping("noticeInsert.bo")
	public String noticeInsert() {
		return "board/NT_0030";
	}
	
	// 공지사항 등록 
	@PostMapping("noticeInsert.bo")
	public ModelAndView noticeInsert(Board b, MultipartFile upfile, ModelAndView mv, HttpSession session) {
		return null;
	}
	
	// 공지사항 수정
	public void noticeUpdate() {

	}

	// 공지사항 삭제
	public void noticeDelete() {

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