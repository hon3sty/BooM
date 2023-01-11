package com.bm.spring.member.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.bm.spring.common.model.vo.PageInfo;
import com.bm.spring.common.template.Pagination;
import com.bm.spring.member.model.service.MemberService;
import com.bm.spring.member.model.vo.Member;
import com.bm.spring.movie.model.vo.Movie;

@Controller
public class MemberController {
	@Autowired
	private MemberService memberService;
	
//	//내가 쓴 리뷰  
//	@RequestMapping("review.my")
//	public String reviewGetList(Model model) {
//		//member no 받아오기
//		ArrayList<Review> list = memberService.reviewGetList();
//		
//		model.addAttribute("list", list);
//		
//		return "mypage/MY_0050";
//	} //마이페이지리뷰 무비컨트롤러에 있음
	
	// 로그인 페이지로 이동
	@GetMapping("login.me")
	public String Memberlogin() {
		
		return "member/MB_0020";
	}
	// 로그인
	@PostMapping("login.me")
	public ModelAndView Memberlogin(Member m, HttpSession session, ModelAndView mv) {
		Member loginUser = memberService.Memberlogin(m);

		if (loginUser != null) {
			session.setAttribute("loginUser", loginUser);
			mv.setViewName("redirect:/");
			session.setAttribute("alertMsg", loginUser.getMemberName() + "님 환영합니다!");

		} else {
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

		int result = memberService.Memberinsert(m);
		
		if (result > 0) {
			session.setAttribute("alertMsg", "환영합니다! 회원가입이 완료되었습니다!");
			return "redirect:/";
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
		
		return count>0 ? "NNNN" : "NNNY";
	}		
	
	// 회원정보 변경 페이지로 이동
	@GetMapping("update.me") 
	 public String Memberupdate() {
		
		 return "member/MB_0040"; 
	}
	// 회원정보 변경	
	@PostMapping("update.me")
	public String updateMember(Member m,
							HttpSession session,
							Model model) {

		int result = memberService.Memberupdate(m);
	
		if(result>0) {
			Member updateMember = memberService.Memberlogin(m);
			session.setAttribute("loginUser", updateMember);
			session.setAttribute("alertMsg", "회원정보 수정 완료했습니다.");
			
			return "redirect:/mypage.me";
			
		}else {
			model.addAttribute("errorMsg","회원 정보 수정에 실패했습니다.");	
			return "common/errorPage";
		}
		
	}

	//회원 탈퇴 페이지로 이동
	@GetMapping("delete.me") 
	public String Memberdelete() {
		 
		 return "member/MB_0050"; 
	} 
	//회원 탈퇴
	 @PostMapping("delete.me") 
	 public String Memberdelete(String memberId,
			 					HttpSession session,
			 					Model model) {
		 int result = memberService.Memberdelete(memberId);

		 if(result >0) {
			 session.setAttribute("alertMsg", "회원탈퇴에 성공했습니다.");
			 session.removeAttribute("loginUser");
			 return "redirect:/";
		 }else {
			 model.addAttribute("errorMsg","회원탈퇴에 실패했습니다.");
			 return "common/errorPage";
		 }  
	 }
	 
	//아이디 찾기
	@GetMapping("userFind.me")
		public String userFind() {
		
			return "member/MB_0030"; 
	}
	
	//아이디 찾기
	@ResponseBody
	@PostMapping("userFind.me")
	public String userFind(Member m) {
		String userId = memberService.getId(m);
		return userId;
	}
	
	//비밀번호 찾기
	@GetMapping("passFind.me")
		public String passFind() {

			return "member/MB_0031"; 
	}
	//비밀번호 찾기
	@ResponseBody
	@PostMapping("passFind.me")
		public String getPwd(Member m) {
		String userPwd = memberService.getPwd(m);
		return userPwd;
	}

	//(관리자용)회원 관리
	@RequestMapping("MemberA.me")
	public String adminMovieListGet(@RequestParam(value="currentPage",defaultValue = "1") int currentPage,
								Model model) {
		
		//페이징처리를 위해 전체 게시글 개수 조회해오기
		//페이징처리 pageLimit 10
		//boardLimit 5
		int listCount = memberService.selectMemberCount(); //List지우기
		int pageLimit = 10;
		int boardLimit = 10;
		System.out.println("listCount : "+ listCount);
		PageInfo pi = Pagination.getPageinfo(listCount, currentPage, pageLimit, boardLimit);
		System.out.println("pi : " + pi);
		
		ArrayList<Member> memberList = memberService.movieGetAllList(pi);
		model.addAttribute("memberList",memberList);
		model.addAttribute("pi",pi);
		
		return "member/MB_0060";
	}
	
	//(관리자)회원 삭제
		@ResponseBody
		@PostMapping("memberDelete.me")
			public String memberDelete(String memberNo) {
			int result = memberService.memberDelete(memberNo);
			
			return String.valueOf(result);
		}
		
	// 마이페이지로 이동
	@RequestMapping("mypage.me")
	public String myPage() {
		return "mypage/MY_0010";
	}
}