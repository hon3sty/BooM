package com.bm.spring.board.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class BoardController {
	
	// 怨좉컼�꽱�꽣 硫붿씤�쑝濡� �씠�룞
	@RequestMapping("csMainForm.bo")
	public String csMain() {
		return "board/CS_0010";
	}
	
	// 怨듭��궗�빆 由ъ뒪�듃濡� �씠�룞
	@RequestMapping("noticeListForm.bo")
	public String noticeList() {
		return "board/NT_0010";
	} 
	
	// 怨듭��궗�빆 愿�由ы럹�씠吏�濡� �씠�룞
	@RequestMapping("noticeAdminForm.bo")
	public String noticeAdmin() {
		return "board/NT_0020";
	} 
	
	// 怨듭��궗�빆 �옉�꽦�럹�씠吏�濡� �씠�룞
	@RequestMapping("noticeInsertForm.bo")
	public String noticeInsertForm() {
		return "board/NT_0030";
	} 
	
	//怨듭��궗�빆 �긽�꽭�럹�씠吏�濡� �씠�룞
	@RequestMapping("noticeDetailForm.bo")
	public String noticeDetailForm() {
		return "board/NT_0040";
	} 
	
	// 怨듭��궗�빆 �옉�꽦
	public void noticeInsert() {

	}

	// 怨듭��궗�빆 �닔�젙
	public void noticeUpdate() {

	}

	// 怨듭��궗�빆 �궘�젣
	public void noticeDelete() {

	}

	// 怨듭��궗�빆 寃뚯떆湲� 由ъ뒪�듃 議고쉶
	public void noticeSelectList() {

	}

	// 怨듭��궗�빆 寃뚯떆湲� �긽�꽭 議고쉶
	public void noticeSelect() {

	}

	// FAQ �옉�꽦
	public void faqInsert() {

	}

	// FAQ �닔�젙
	public void faqUpdate() {

	}

	// FAQ �궘�젣
	public void faqDelete() {

	}

	// FAQ 寃뚯떆湲� 由ъ뒪�듃 議고쉶
	public void faqSelectList() {

	}

	// FAQ 寃뚯떆湲� �긽�꽭 議고쉶
	public void faqSelect() {

	}
	
	// test01
	
	
}
