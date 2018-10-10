package owner_orderlist.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import ownerMember.controller.OwnerMemberService;
import owner_orderlist.bean.Owner_orderlistDTO;

@Controller
public class Owner_orderlistController {
	@Autowired
	private Owner_orderlistService owner_orderlistService;
	
	@Autowired
	private OwnerMemberService ownerMemberService;
	
	@RequestMapping(value="/owner/menumanagement/order_list.do")
	public ModelAndView ownerOrderList(HttpServletRequest request) {
		
		HttpSession session = request.getSession();
		String ownerId = (String) session.getAttribute("memId");
		String ceo_seq = ownerMemberService.searchSeq(ownerId);
		System.out.println(ceo_seq);
		ArrayList<Owner_orderlistDTO> list = owner_orderlistService.owner_orderlist(ceo_seq);
		
		 
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("list",list);
		modelAndView.addObject("ceo_seq",ceo_seq);
		modelAndView.addObject("display","../../owner/menumanagement/order_list.jsp");
		modelAndView.setViewName("../../owner/ownermain/ownermain.jsp");	
		return modelAndView;
		
	}	
	
	@RequestMapping(value="/owner/menumanagement/order_view.do")
	public ModelAndView ownerOrderView(HttpServletRequest request) {
		int seq = Integer.parseInt(request.getParameter("seq"));
		System.out.println(seq);

		String owner_check = request.getParameter("owner_check");
		System.out.println(owner_check);
		Owner_orderlistDTO owner_orderlistDTO = owner_orderlistService.owner_orderView(seq);
		
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("owner_orderlistDTO",owner_orderlistDTO);
		modelAndView.addObject("seq",seq);
		modelAndView.addObject("owner_check",owner_check);
		modelAndView.addObject("display","../../owner/menumanagement/order_view.jsp");
		modelAndView.setViewName("../../owner/ownermain/ownermain.jsp");	
		return modelAndView;
	}	
	@RequestMapping(value="/owner/menumanagement/order_viewResult.do")
	public ModelAndView ownerOrderViewResult(HttpServletRequest request) {
		
		String owner_check = request.getParameter("owner_check");
		System.out.println(owner_check);
		int seq = Integer.parseInt(request.getParameter("seq"));
		System.out.println(seq);
		Owner_orderlistDTO owner_orderlistDTO = new Owner_orderlistDTO();
		owner_orderlistDTO.setSeq(seq);
		owner_orderlistDTO.setOwner_check(owner_check);
		int su = owner_orderlistService.owner_checkUpdate(owner_orderlistDTO);
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("su",su);
		modelAndView.addObject("seq",seq);
		modelAndView.addObject("owner_check",owner_check);
		modelAndView.addObject("display","../../owner/menumanagement/order_viewResult.jsp");
		modelAndView.setViewName("../../owner/ownermain/ownermain.jsp");	
		return modelAndView;
	}
	
}
