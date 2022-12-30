package com.bm.spring.board.controller;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
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
import com.bm.spring.board.model.vo.BoardAttachment;
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
			BoardAttachment ba = boardService.noticeAttachSelect(bno);
			mv.addObject("b",b).addObject("ba", ba).setViewName("board/NT_0040");
		}else {
			mv.addObject("errorMsg", "공지사항 조회에 실패하였습니다.").setViewName("common/errorPage");
		}
		return mv;
		
	}


	// 공지사항 작성 페이지로 이동
	@GetMapping("noticeInsert.bo")
	public String noticeInsert() {
		return "board/NT_0030";
	}

	// 공지사항 등록 + 첨부파일 등록
	@PostMapping("noticeInsert.bo")
	public ModelAndView noticeInsert(Board b, BoardAttachment ba, ModelAndView mv, HttpSession session, MultipartFile upfile) {

		int result = boardService.noticeInsert(b);
		int result2 = 1;
		
		if (result > 0) {
			
			if (result * result2 > 0 && !upfile.getOriginalFilename().equals("")) {
				String saveName = saveFile(upfile,session);
				
				ba.setOriginName(upfile.getOriginalFilename());
				ba.setSaveName("resources/uploadFiles/"+saveName);
				result2 = boardService.noticeAttachInsert(ba);
				}
		session.setAttribute("alertMsg", "공지사항이 등록되었습니다.");
		mv.setViewName("redirect:/noticeAdmin.bo");
		} 
		
		else {
			mv.addObject("errorMsg", "공지사항 등록에 실패하였습니다.").setViewName("common/errorPage");
		}

		return mv;
	}

	
	// 공지사항 수정페이지로 이동
	@RequestMapping("noticeUpdateForm.bo")
	public String noticeUpdateForm(int bno,Model model) {
		
		Board b = boardService.noticeSelect(bno);
		BoardAttachment ba = boardService.noticeAttachSelect(bno);
		
		model.addAttribute("b", b);
		model.addAttribute("ba", ba);
		
		return "board/NT_0050";
	}

	// 공지사항 수정 + 첨부파일 수정
	@RequestMapping("noticeUpdate.bo")
	public ModelAndView noticeUpdate(Board b, BoardAttachment ba, MultipartFile upfile, HttpSession session, ModelAndView mv
										,@RequestParam(value="originFileNo" ,required=false) String originFileNo) {
		
		int result2 = 0;
		
		if(!upfile.getOriginalFilename().equals("")) {
			
			if(ba.getOriginName() != null) {
				new File(session.getServletContext().getRealPath(ba.getSaveName())).delete();
				
			}
			String saveName = saveFile(upfile,session);
			
			ba.setOriginName(upfile.getOriginalFilename());
			ba.setSaveName("resources/uploadFiles/"+saveName);
			
			result2 = boardService.noticeAttachUpdate(ba);
			
			if(originFileNo == null){
				result2 = boardService.noticeNewAttachInsert(ba);
			}
		}
		
		int result = boardService.noticeUpdate(b);
		
		if(result>0) {
			session.setAttribute("alertMsg", "공지사항 수정이 완료되었습니다.");
			mv.setViewName("redirect:/noticeDetail.bo?bno="+b.getBoardNo());
		}else {
			mv.addObject("errorMsg", "공지사항 수정에 실패하였습니다.");
			mv.setViewName("common/errorPage");
		}
		return mv;
	}
	
	// 공지사항 삭제
	@RequestMapping("noticeDelete.bo")
	public String noticeDelete(int bno, String filePath, HttpSession session, Model model) {
		int result = boardService.noticeDelete(bno);
		
		if(result>0) {
			if(!filePath.equals("")) {
				String realPath = session.getServletContext().getRealPath(filePath);
				new File(realPath).delete();
			}
			session.setAttribute("alertMsg", "공지사항 삭제가 완료되었습니다.");
		}else {
			model.addAttribute("errorMsg", "게시글 삭제에 실패하였습니다.");
			return "common/errorPage";
		}
		return "redirect:/noticeList.bo";
	}

	//현재 넘어온 첨부파일 그 자체를 서버의 폴더에 저장시키는 메소드(모듈)
		public String saveFile(MultipartFile upfile,HttpSession session) {
			
			//1.원본파일명 뽑기
			String originName = upfile.getOriginalFilename();
			
			//2.시간 형식 뽑기
			//"20221205153533" 
			String currentTime = new SimpleDateFormat("yyyyMMddHHmmss").format(new Date());
			
			//3.확장자 추출하기
			String ext = originName.substring(originName.lastIndexOf("."));
			
			//4.랜덤숫자 추출하기 5자리
			int ranNum = (int)(Math.random() * 90000 + 10000); //5자리 랜덤값
			
			//5.모두 이어붙이기
			String saveName = currentTime+ranNum+ext;
			
			//6.파일을 업로드할 실질적인 위치(물리경로)찾기
			String savePath = session.getServletContext().getRealPath("/resources/uploadFiles/");
			
			try {
			//7. 물리경로+변경이름으로 파일 생성 및 업로드
				upfile.transferTo(new File(savePath+saveName));
			} catch (IllegalStateException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}
			
			return saveName;
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
