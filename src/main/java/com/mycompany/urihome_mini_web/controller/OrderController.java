package com.mycompany.urihome_mini_web.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.annotation.Secured;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mycompany.urihome_mini_web.dto.Cart;
import com.mycompany.urihome_mini_web.dto.Member;
import com.mycompany.urihome_mini_web.dto.OrderItemList;
import com.mycompany.urihome_mini_web.security.UriHomeUserDetails;
import com.mycompany.urihome_mini_web.service.CartService;
import com.mycompany.urihome_mini_web.service.MemberService;
import com.mycompany.urihome_mini_web.service.OrderService;
import com.mycompany.urihome_mini_web.service.ProductService;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
@RequestMapping("/order")
public class OrderController {
	/*@RequestMapping("/orderForm")
	public String orderForm() {
		return "/order/orderForm";
	}*/
	
	@Autowired
	private MemberService memberService;
	
	@Autowired
	private ProductService productService;
	
	@Autowired
	private CartService cartService;
	
	@Autowired
	private OrderService orderService;
	
	
	/*@GetMapping("/order")
    public String getOrder(Model model) {
        List<Map<String, Object>> orderItemList = orderService.getOrderItems();
        model.addAttribute("orderItemList", orderItemList);
        return "orderPage";
    }*/
	
	
	 
	
	@GetMapping("/orderForm")
	@Secured("ROLE_USER")
	public String orderWait(HttpServletRequest request, Model model, Authentication authentication) {
		UriHomeUserDetails userDetails = (UriHomeUserDetails) authentication.getPrincipal();
		Member member = userDetails.getMember();
		model.addAttribute("member", member);
		String mid = member.getMid();
		
		String[] selected = request.getParameterValues("selected");
		
		if(member.getMtel() != null) {
			String[] mtel = member.getMtel().split("-");
			model.addAttribute("mtel", mtel);
		}else {
			String[] mtel = {"", "", ""};
			model.addAttribute("mtel", mtel);
		}
		
		String[] mphone = member.getMphone().split("-");
		model.addAttribute("mphone", mphone);
		
		
		List<Cart> cartList = cartService.getCartList(mid);
		model.addAttribute("cartList",cartList);
	
			
		List<OrderItemList> orderItemList = orderService.getOrderItem(mid);
				model.addAttribute("orderItemList",orderItemList);
		for(OrderItemList pro: orderItemList) {
		}
				
		
//		Cart cart = cartList.get(0);
//		log.info(" " + cart.getPbuyAmount());
//		model.addAttribute("cart", cart);
//		
//		
//		List<Product> productList = productService.getProductListByPid(pid);
//		for(Product pro : productList) {
//			log.info("" + pro);
//		}
//		Product product = productList.get(0);
//		log.info(" " + product.getPname());
//		model.addAttribute("product",product);
				
		return "order/orderForm";
	}
	
	@Secured("ROLE_USER")
	@PostMapping("/selectOrder")
	public String selectOrder(HttpServletRequest request) {
		String[] selected = request.getParameterValues("selected");
		
		return "redirect:/order/orderForm";
	}
	
	
	
	
	/*member라는 이름의 폼 데이터를 검증하는 데에 orderValidator 클래스의 검증 규칙을 사용하겠다고 선언하는 것입니다.
	@InitBinder("member")
	public void orderFormValidator(WebDataBinder binder) {
		binder.setValidator(new MemberValidator());
	}*/
	
	
	
	/*@PostMapping("/orderWait")
	public String orderWait(Model model,@Valid OrderWait orderwait, Authentication authentication,Errors errors) {			
		//유효성 검사 에러시 주문서작성페이지로 이동시킨다.
		if(errors.hasErrors()) {
			return "/order/orderForm";
		}
		
		log.info(orderwait.getMid());
		orderService.updateOrderWait(orderwait);		
		
		//DB 내용을 수정했을 경우 Spring Security 정보도 수정
		Member dbMember = memberService.getMember(orderwait.getMid());
		UriHomeUserDetails userDetails = (UriHomeUserDetails) authentication.getPrincipal();
		userDetails.setMember(dbMember);
		
		//
		return "redirect:/order/orderForm";
	}*/
	
	
	
	
}