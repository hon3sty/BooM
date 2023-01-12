package com.bm.spring.product.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.bm.spring.common.model.vo.PageInfo;
import com.bm.spring.common.template.Pagination;
import com.bm.spring.member.model.vo.Member;
import com.bm.spring.product.model.service.ProductService;
import com.bm.spring.product.model.vo.Cart;
import com.bm.spring.product.model.vo.DateChk;
import com.bm.spring.product.model.vo.Order;
import com.bm.spring.product.model.vo.OrderList;
import com.bm.spring.product.model.vo.Product;

@Controller
public class ProductController {
	
	@Autowired
	private ProductService productService;
	
	// 상품 목록
	@RequestMapping("productList.pd")
	public String productList(@RequestParam(value = "currentPage", defaultValue = "1") int currentPage, Model model) {

		int listCount = productService.productGetListCount();
		int pageLimit = 10;
		int boardLimit = 5;

		PageInfo pi = Pagination.getPageinfo(listCount, currentPage, pageLimit, boardLimit);

		ArrayList<Product> list = productService.productGetList(pi);

		model.addAttribute("list", list);
		model.addAttribute("pi", pi);

		return "product/PD_0010";
	}

	// 상품 상세
	@RequestMapping("productDetail.pd")
	public ModelAndView productDetail(int pno, ModelAndView mv) {
		Product p = productService.productDetail(pno);
		mv.addObject("p", p).setViewName("product/PD_0020");
		
		return mv;

	}
	
	// 결제하기 페이지
	@RequestMapping("productPurchase.pd")
	public String productPurchasList(int pno, int pprice, HttpSession session, Model model) {
		int mno=((Member)session.getAttribute("loginUser")).getMemberNo();
		
		ArrayList arr=new ArrayList();
		
//		Order plist[] = new Order[mno,pno,1,pprice];
//		
//		model.addAttribute("plist", plist);
		
		return "product/PD_0030";
	}
	
	//장바구니
	@RequestMapping("wishList.me")
	public String wishList(Model model,HttpSession session) {
		int mno=((Member)session.getAttribute("loginUser")).getMemberNo();
		
		ArrayList<Cart> list = productService.cartGetList(mno);
		
		model.addAttribute("list",list);
		
		return "mypage/MY_0030";
	}
	
	//구매목록
	@RequestMapping("purchaseList.me")
	public String purchaseList(Model model,HttpSession session) {
		
		int mno=((Member)session.getAttribute("loginUser")).getMemberNo();
		
		ArrayList<Order> list=productService.purchaseList(mno);
		
		model.addAttribute("list",list);
		
		return "mypage/MY_0020";
	}
	
	//장바구니 수량 변경
	@RequestMapping("countUpdate.pd")
	public String countUpdate(int cno,int count,Model model,HttpServletRequest request) {
		Cart c = new Cart(); c.setCartNo(cno); c.setCartCount(count);
			  
		int result=productService.changeCount(c);
		  
		if(result>0) { 
			  return "redirect:"+request.getHeader("Referer");
		}else {
			  model.addAttribute("errorMsg", "수량 변경 실패"); return "common/errorPage"; 
		}
	}
	
	
	
	@RequestMapping("cartDelete.pd")
	public String cartDelte(int cno,Model model,HttpServletRequest request) {
		int result=productService.cartDelete(cno); 		 		
		  
		if(result>0) { 			
			  	return "redirect:"+request.getHeader("Referer"); 		
		  }else { 			
			  	model.addAttribute("errorMsg", "목록 삭제 실패"); 			
			  	return "common/errorPage"; 		
		  } 		
		
	}
	
	@RequestMapping("checkedCart.pd")
	public String checkedCartList(String cnoArr,Model model) {
		
		String[]str= cnoArr.split(",");
		
		ArrayList arr=new ArrayList();
		
		for(int i=0;i<str.length;i++) {
			arr.add(Integer.parseInt(str[i]));
		}
		
		ArrayList<Cart> plist = productService.checkedCartList(arr);
		
		
		model.addAttribute("plist", plist);
		
		return "product/PD_0030";
		
	}
	
	//상품 구매
	@PostMapping("purchase.pd")
	public String purchaseInsert(Order order,HttpSession session,@ModelAttribute(value="OrderList") OrderList list,@RequestParam("chkCount") int count, Model model) {
		ArrayList<Order> oList=new ArrayList();
		int mno=((Member)session.getAttribute("loginUser")).getMemberNo();
		
		order.setMemberNo(mno);
		
		for(int i=0;i<count;i++) {
			oList.add(new Order(list.getList().get(i).getProductNo(),list.getList().get(i).getProductCount(),list.getList().get(i).getProductPrice()));
		}
		
		//ORDER_INFO 값 넣기
		int result=productService.purchaseInsert(order);
		int result2=1;
		
		//ORDER_DETAIL 값 넣기 
		if (result > 0) {
			for (int i = 0; i < count; i++) {
				result2 = productService.orderDetailInsert(oList.get(i));
			}
		}
		
		if (result * result2 > 0) {
			return "redirect:/purchaseList.me";
		} else {
			model.addAttribute("errorMsg", "결제 실패");
			return "common/errorPage";
		}
	}
	
	//구매목록 날짜 조회
	@PostMapping("date.pd")
	public String dateGet(DateChk date,HttpSession session,Model model,HttpServletRequest request) {
		
		int mno=((Member)session.getAttribute("loginUser")).getMemberNo();
		
		Order order=new Order(mno,date.getStartDate(),date.getEndDate());
		
		
		ArrayList<Order> list=productService.dateGet(order);
		
		model.addAttribute("list", list);
		
		return "mypage/MY_0020"; 
	}
	
	//구매목록 detail
	@RequestMapping("orderDetail.pd")
	public String detailGetList(int ono,Model model) {
		ArrayList<Order> list=productService.detailGetList(ono);
		
		model.addAttribute("list", list);
		
		return "mypage/MY_0040";
	}


	
	
}
