package com.bm.spring.member.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MemberController {
	
	@RequestMapping("wishList.me")
	public String wishList() {
		return "mypage/MY_0030";
	}
	
	@RequestMapping("purchaseList.me")
	public String purchaseList() {
		return "mypage/MY_0020";
	}
	
	

}
