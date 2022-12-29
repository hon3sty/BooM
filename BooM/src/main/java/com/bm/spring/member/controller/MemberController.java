package com.bm.spring.member.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.bm.spring.member.model.service.MemberService;
import com.bm.spring.member.model.vo.Member;

@Controller
public class MemberController {
	@Autowired
	private MemberService MemberService;
	private com.bm.spring.member.model.service.MemberService serivce;

	// 로그인
	@GetMapping("login.me")
	public String Memberlogin() {
		return "member/MB_0020";
	}

	@PostMapping("login.me")
	public ModelAndView Memberlogin(Member m, HttpSession session, ModelAndView mv) {

		Member Memberlogin = MemberService.Memberlogin(m);

		if (Memberlogin != null) {
			session.setAttribute("Memberlogin", Memberlogin);
			System.out.println("성공");
			mv.setViewName("redirect:/");
			session.setAttribute("alertMsg", m.getMemberName() + "님 환영합니다!");

		} else {
			System.out.println("실패");
			session.setAttribute("alertMsg", "로그인에 실패하였습니다.");
			mv.setViewName("member/MB_0020");
		}
		return mv;
	}
	// 로그아웃
	@RequestMapping("logout.me")
	public String Memberlogin(HttpSession session) {

		session.removeAttribute("Memberlogin");

		return "redirect:/";
	}

	// 회원가입 페이지로 이동
	@RequestMapping("insert.me")
	public String enrollForm() {
		return "member/MB_0010";
	}

	// 회원가입 등록
	@PostMapping("insert.me")

	public String insertMapping(Member m, HttpSession session, Model model) {

		System.out.println(m);

		int result = MemberService.Memberinsert(m);
		System.out.println(result);

		if (result > 0) {
			session.setAttribute("alertMsg", "환영합니다! 회원가입이 완료되었습니다!");
			return "redirect:/";
			// 재요청작업
		} else {
			model.addAttribute("errorMsg", "회원가입 실패");
			return "common/errorPage";
		}
	}
	// 아이디 중복체크
	@ResponseBody
	@RequestMapping("idCheck.me")
	public String idCheck(@RequestBody String checkId) {
		int count = MemberService.checkId(checkId);
		System.out.println("count : "+count);
		return count>0 ? "NNNN" : "NNNY";
	}

	/*
	 * // 회원가입정보를 다 입력하고 회원가입 버튼을 누른다.
	 * 
	 * @RequestMapping(value = "insert.me", method = RequestMethod.POST) public
	 * ModelAndView memberJoinPro(Member m) { ModelAndView mav = new ModelAndView();
	 * MemberService.Memberinsert(m); mav.setViewName("memberloginform"); return
	 * mav; }// end memberJoinPro()
	 * 
	 */
	
	// 아이디,비밀번호 찾기
//	@RequestMapping(".me")
//	public String () {
//		return "member/MB_0030";
//	}

	// 회원정보변경
	@RequestMapping("update.me")
	public String Memberupdate() {
		return "member/MB_0040";
	}

	// 회원 탈퇴
	@RequestMapping("delete.me")
	public String Memberdelete() {
		return "member/MB_0050";
	}

//	//회원 관리
//	@RequestMapping(".me")
//	public String () {
//		return "member/MB_0060";
//	}
	// 마이페이지
	@RequestMapping("mypage.me")
	public String myPage() {
		return "mypage/MY_0010";
	}
}
