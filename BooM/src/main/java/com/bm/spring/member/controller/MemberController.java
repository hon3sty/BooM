package com.bm.spring.member.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bm.spring.member.model.service.MemberService;
import com.bm.spring.member.model.vo.Review;

@Controller
public class MemberController {
	@Autowired
	private MemberService memberService;
	
	
	//내가 쓴 리뷰
	@RequestMapping("review.my")
	public String reviewGetList(Model model) {
		//member no 받아오기
		ArrayList<Review> list = memberService.reviewGetList();
		
		model.addAttribute("list", list);
		
		return "mypage/MY_0050";
	}

}
