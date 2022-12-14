package com.bm.spring.member.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.bm.spring.member.model.service.MemberService;
import com.bm.spring.member.model.vo.Member;

@Controller
public class MemberController {
	@Autowired
	private MemberService MemberService;
	@Autowired
	private BCryptPasswordEncoder bcryptpasswordEncoder;

	//로그인
	@GetMapping("login.me")
	public String Memberlogin() {
		return "member/MB_0020";
	}
	@PostMapping("login.me")
	public ModelAndView Memberlogin(Member m,
								HttpSession session,
								ModelAndView mv) {
		
		Member Memberlogin = MemberService.Memberlogin(m.getMemberId());
		
		if(Memberlogin != null) {
			session.setAttribute("Memberlogin", Memberlogin);
			System.out.println("성공");
			mv.setViewName("redirect:/");
		
		}else {
			System.out.println("실패");
			mv.addObject("errorMsg", "로그인 실패");
			mv.setViewName("common/errorPage");
	}
		return mv;
	}
	
	//로그아웃
	@RequestMapping("logout.me")
	public String Memberlogin(HttpSession session) {
		
		session.removeAttribute("Memberlogin");
	
		return "redirect:/"; 
	}	
		
	//회원가입
	@RequestMapping("insert.me")
	public String enrollForm() {
		return "member/MB_0010";
	}
	//아이디,비밀번호 찾기
//	@RequestMapping(".me")
//	public String () {
//		return "member/MB_0030";
//	}
	
	//회원정보변경
	@RequestMapping("update.me")
	public String Memberupdate() {
		return "member/MB_0040";
	}	
	//회원 탈퇴
	@RequestMapping("delete.me")
	public String Memberdelete() {
		return "member/MB_0050";
	}	
//	//회원 관리
//	@RequestMapping(".me")
//	public String () {
//		return "member/MB_0060";
//	}
	//마이페이지
	@RequestMapping("mypage.me")
	public String myPage() {
		return "mypage/MY_0010";
	}
	
	
	
//	@RequestMapping("wishList.me")
//	public String wishList() {
//		return "mypage/MY_0030";
//	}	
			
}
