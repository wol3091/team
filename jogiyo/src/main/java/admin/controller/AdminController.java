package admin.controller;



import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import request.bean.RequestDTO;
import request.controller.RequestService;

@Controller
public class AdminController {
	
	@Autowired
	AdminService adminService;
	
	@Autowired
	RequestService requestService;
	
	@RequestMapping(value="/owner/admin/adminMainPage.do")
	public ModelAndView adminMainPage() {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("redirect:../../owner/admin/adminMainPage.jsp");
		return modelAndView;
	}
	
	@RequestMapping(value="/owner/admin/adminLoginForm.do")
	public ModelAndView adminLoginForm() {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("admin", "../../owner/admin/adminLoginForm.jsp");
		modelAndView.setViewName("../../owner/admin/adminMainPage.jsp");
		return modelAndView;
	}
	
	@RequestMapping(value="/owner/admin/adminLogin.do")
	public ModelAndView adminLogin(HttpServletRequest request) {
		// 데이터
		String admin_id = request.getParameter("admin_id");
		String admin_pwd = request.getParameter("admin_pwd");
		System.out.println(admin_id);
		System.out.println(admin_pwd);
		// DB
		String admin_email = adminService.adminLogin(admin_id, admin_pwd);
		
		HttpSession session = request.getSession();
		
		// 화면 네비게이션
		ModelAndView modelAndView = new ModelAndView();
		if(admin_email == null) { 
			modelAndView.addObject("admin", "../../owner/admin/adminLoginFail.jsp");
			modelAndView.setViewName("../../owner/admin/adminMainPage.jsp");
		} else { 
			session.setAttribute("admin_id", admin_id);
			modelAndView.addObject("admin", "../../owner/admin/adminLogin.jsp");
			modelAndView.setViewName("../../owner/admin/adminMainPage.jsp");
		} 
		return modelAndView;
	}
	
	@RequestMapping(value="/owner/admin/adminLogout.do")
	public ModelAndView logout(HttpServletRequest request) {
		// 세션 삭제
		HttpSession session = request.getSession();
		session.removeAttribute("admin_id");
		
		session.invalidate();
		
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("../../owner/admin/adminMainPage.jsp");
		return modelAndView;
	}
	
	@RequestMapping(value="/owner/admin/accept_list.do")
	public ModelAndView accept_list() {
		String access1 = "n";
		ArrayList<RequestDTO> list = requestService.adminAccept(access1);
		
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("list", list);
		modelAndView.addObject("admin","../../owner/admin/accept_list.jsp");
		modelAndView.setViewName("../../owner/admin/adminMainPage.jsp");
		return modelAndView;
	}
	

	@RequestMapping(value="/owner/admin/accept_view.do")
	public ModelAndView accept_view(HttpServletRequest request) {
		int preseq = Integer.parseInt(request.getParameter("preseq"));
		System.out.println(preseq);
		RequestDTO requestDTO = requestService.adminAccept2(preseq);
		
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("requestDTO", requestDTO);
		modelAndView.addObject("admin","../../owner/admin/accept_view.jsp");
		modelAndView.setViewName("../../owner/admin/adminMainPage.jsp");
		return modelAndView;
	}
	
	@RequestMapping(value="/owner/admin/acceptResult.do")
	public ModelAndView acceptResult(HttpServletRequest request) {
		int preseq = Integer.parseInt(request.getParameter("preseq"));
		System.out.println(preseq);
		String access1 = request.getParameter("access1");
		String seq = request.getParameter("seq");
		System.out.println(access1);
		RequestDTO requestDTO = new RequestDTO();
		requestDTO.setPreseq(preseq);
		requestDTO.setAccess1(access1);
		requestDTO.setSeq(seq);
		int su = requestService.accessUpdate(requestDTO);
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("requestDTO", requestDTO);
		modelAndView.addObject("su",su);
		modelAndView.addObject("preseq",preseq);
		modelAndView.addObject("access1",access1);
		modelAndView.addObject("seq",seq);
		modelAndView.addObject("admin","../../owner/admin/acceptResult.jsp");
		modelAndView.setViewName("../../owner/admin/adminMainPage.jsp");
		return modelAndView;
	}
	
	@RequestMapping(value="/owner/admin/seq_list.do")
	public ModelAndView seq_list(HttpServletRequest request) {
		String access1 = "y";
		String seq = "1";
		System.out.println(access1);
		ArrayList<RequestDTO> list = requestService.seqList(access1, seq);

		ModelAndView modelAndView = new ModelAndView();
		
		modelAndView.addObject("list", list);
		modelAndView.addObject("admin","../../owner/admin/seq_list.jsp");
		modelAndView.setViewName("../../owner/admin/adminMainPage.jsp");
		return modelAndView;
	}
	
	@RequestMapping(value="/owner/admin/giving_seq.do")
	public ModelAndView giving_seq(HttpServletRequest request) {
		int preseq = Integer.parseInt(request.getParameter("preseq"));
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("preseq",preseq);
		modelAndView.addObject("admin","../../owner/admin/giving_seq.jsp");
		modelAndView.setViewName("../../owner/admin/adminMainPage.jsp");
		return modelAndView;
	}
	
	@RequestMapping(value="/owner/admin/seqResult.do")
	public ModelAndView seqResult(HttpServletRequest request) {
		String seq = request.getParameter("seq");
		int preseq = Integer.parseInt(request.getParameter("preseq"));
		
		RequestDTO requestDTO = new RequestDTO();
		requestDTO.setPreseq(preseq);
		requestDTO.setSeq(seq);
		int su = requestService.seqUpdate(requestDTO);
		
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("su",su);
		modelAndView.addObject("admin","../../owner/admin/seqResult.jsp");
		modelAndView.setViewName("../../owner/admin/adminMainPage.jsp");
		return modelAndView;
		
	}
	
	@RequestMapping(value="/owner/admin/adminCheckSeq.do")
	public ModelAndView adminCheckSeq(HttpServletRequest request) {
		String seq = request.getParameter("seq");
		boolean exist = requestService.isExistSeq(seq);
		
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("seq",seq);
		modelAndView.addObject("exist",exist);
		modelAndView.setViewName("../../owner/admin/adminCheckSeq.jsp");
		return modelAndView;
	}
}
