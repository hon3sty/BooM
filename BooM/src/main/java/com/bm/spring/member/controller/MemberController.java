package com.bm.spring.member.controller;

import java.util.ArrayList;
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
import com.bm.spring.member.model.vo.Review;
import com.bm.spring.member.model.vo.Member;

@Controller
public class MemberController {
	@Autowired
	private MemberService memberService;
	private com.bm.spring.member.model.service.MemberService serivce;
	
	//내가 쓴 리뷰  
	@RequestMapping("review.my")
	public String reviewGetList(Model model) {
		//member no 받아오기
		ArrayList<Review> list = memberService.reviewGetList();
		
		model.addAttribute("list", list);
		
		return "mypage/MY_0050";
	}
	// 로그인
	@GetMapping("login.me")
	public String Memberlogin() {
		return "member/MB_0020";
	}

	@PostMapping("login.me")
	public ModelAndView Memberlogin(Member m, HttpSession session, ModelAndView mv) {
		Member loginUser = memberService.Memberlogin(m);

		if (loginUser != null) {
			session.setAttribute("loginUser", loginUser);
			System.out.println("성공");
			mv.setViewName("redirect:/");
			session.setAttribute("alertMsg", m.getMemberId() + "님 환영합니다!");

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

		session.removeAttribute("loginUser");
		
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

		int result = memberService.Memberinsert(m);
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
		int count = memberService.checkId(checkId);
		System.out.println("count : "+count);
		return count>0 ? "NNNN" : "NNNY";
	}		
		// 아이디,비밀번호 찾기
//		@RequestMapping(".me")
//		public String () {
//			return "member/MB_0030";
//		}


	// 회원정보변경
	@RequestMapping("update.me")
	public String Memberupdate() {
		return "member/MB_0040";
	}

	/*
	@RequestMapping("update.me")
	public String updateMember(Member m,
							HttpSession session,
							Model model) {		

		int result = memberService.Memberupdate(m);

		//성공시 session에 있던 기존 loginUser를 지우고 변경된 loginUser를 넣어주고
		//마이페이지로 재요청 보내기(alertMsg도 보내보기)-header에서 작성해둘것
		if(result>0) {
//			System.out.println("성공");
			//db에 있는 회원 정보 조회(수정후)
			Member Memberdelete = memberService.Memberlogin(m.getMemberId());
			session.setAttribute("Memberlogin", Memberupdate());
			session.setAttribute("alertMsg", "회원정보 수정 완료!");
			return "redirect:/MB_0040";
			
		}else {
			model.addAttribute("errorMsg","회원 정보 수정 실패!!");
			return "common/errorPage";
		}
		
	}
	*/
	
/*
	// 회원 탈퇴
	@RequestMapping("delete.me")
	public ModelAndView deleteMember(String MemberPwd,	
									HttpSession session,
									ModelAndView mv) {
		
		//로그인 되어있는 회원정보의 비밀번호(암호화되어있는)를
		//사용자에게 전달받은 비밀번호(평문)과 일치하는지 matches메소드를 이용하여 확인
		
		Member Memberlogin = (Member)session.getAttribute("Memberlogin"); //로그인 회원정보
		String MemberId = Memberlogin.getMemberId(); //로그인 정보 아이디
		String MemberloginPwd = Memberlogin.getMemberPwd(); //로그인 정보 비밀번호
		
		if(MemberPwd== MemberloginPwd) { //입력받은 비밀번호와 암호화된 비밀번호가 일치하다면
			//탈퇴처리 후 로그인유저 정보 삭제 - 메인페이지 보내기 - 알림메세지 추가
			int result = memberService.Memberdelete(MemberId);
			
			if(result>0) { //최종적으로 탈퇴처리 성공
				session.removeAttribute("Memberlogin");
				session.setAttribute("alertMsg", "그동안 서비스를 이용해주셔서 감사합니다.");
				mv.setViewName("redirect:/");		
			}else {//탈퇴 처리 실패
				mv.addObject("errorMsg","탈퇴 처리 실패");
				mv.setViewName("redirect:/");
			}
		}else { //비밀번호가 일치하지 않을때
			//탈퇴 실패 메세지 또는 에러페이지로 보내기
			session.setAttribute("alertMsg", "비밀번호가 일치하지 않습니다.");
			mv.setViewName("redirect:/");
		}
			//mv에 담아놓은 형식으로 마지막에 리턴
			//모델객체 자체가 스코프가 음..?세션에 담고싶다하면 세션꺼내서 담기
		return mv;
	
	}
	
*/
	
	
	

	//		//회원 관리
//		@RequestMapping(".me")
//		public String () {
//			return "member/MB_0060";
//		}
	// 마이페이지
	@RequestMapping("mypage.me")
	public String myPage() {
		return "mypage/MY_0010";
	}
}
