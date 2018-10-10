package member.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import member.bean.MemberDTO;
import owner_orderlist.bean.Owner_orderlistDTO;
import owner_orderlist.controller.Owner_orderlistService;
import request.bean.RequestDTO;
import request.controller.RequestService;

@Controller
public class MemberController {
	
	@Autowired
	private MemberService memberService;
	@Autowired
	private Owner_orderlistService owner_orderlistService;
	@Autowired
	private RequestService requestService;
	
	
	@RequestMapping(value="member/loginForm.do")
	public ModelAndView login() {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("display", "../member/loginForm.jsp");
		modelAndView.setViewName("../main/index.jsp");
		return modelAndView;
	}
	
	@RequestMapping(value="member/myPage.do")
	public ModelAndView myPage(HttpServletRequest request) throws IOException{
		// 데이터
		HttpSession session = request.getSession();
		String id = (String)session.getAttribute("memId");
		String nickname = (String)session.getAttribute("memName");
		int total_price = 0;	
		String logtime = "";
		String ceo_seq = "";
		String food = "";
		ArrayList<Owner_orderlistDTO> real_list = new ArrayList<>();
		ArrayList<Owner_orderlistDTO> list = owner_orderlistService.owner_order_id_view(id);
		/*ArrayList<String> owner = new ArrayList<>(); 
		
		for (Owner_orderlistDTO owner_orderlistDTO : list) {
			RequestDTO requestDTO = new RequestDTO();
			requestDTO = requestService.ownerView(owner_orderlistDTO.getCeo_seq());
			owner.add(requestDTO.getRestaurant_name());
		}*/
		
		for (Owner_orderlistDTO owner_orderlistDTO : list) {
			RequestDTO requestDTO = new RequestDTO();
			requestDTO = requestService.ownerView(owner_orderlistDTO.getCeo_seq());
			
			Owner_orderlistDTO ch_owner_orderlistDTO = new Owner_orderlistDTO();
			ch_owner_orderlistDTO.setCeo_seq(requestDTO.getRestaurant_name());
			ch_owner_orderlistDTO.setFood(owner_orderlistDTO.getFood());
			ch_owner_orderlistDTO.setTotal_price(owner_orderlistDTO.getTotal_price());
			ch_owner_orderlistDTO.setLogtime(owner_orderlistDTO.getLogtime());
			real_list.add(ch_owner_orderlistDTO);
			total_price = total_price + owner_orderlistDTO.getTotal_price();
			logtime = owner_orderlistDTO.getLogtime();
			ceo_seq = requestDTO.getRestaurant_name();
			food = owner_orderlistDTO.getFood();
		}
		
		ModelAndView modelAndView = new ModelAndView();
		session.setAttribute("memName", nickname);
		session.setAttribute("memId", id);
		modelAndView.addObject("real_list", real_list);
		modelAndView.addObject("ceo_seq", ceo_seq);
		modelAndView.addObject("logtime", logtime);
		modelAndView.addObject("food", food);
		modelAndView.addObject("total_price", total_price);
		modelAndView.addObject("display", "../member/myPage.jsp");
		modelAndView.setViewName("../main/index.jsp");
		return modelAndView;
	}
	
	@RequestMapping(value="member/writeForm.do")
	public ModelAndView writeForm() {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("display", "../member/writeForm.jsp");
		modelAndView.setViewName("../main/index.jsp");
		return modelAndView;
	}
	
	@RequestMapping(value="member/write.do")
	public ModelAndView write(HttpServletRequest request) throws IOException{// 전달받기위해 request 필요
		// 데이터 읽어오기
		request.setCharacterEncoding("UTF-8");// 예외처리
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		String nickname = request.getParameter("nickname");
		String phone = request.getParameter("phone");
		String postcode = request.getParameter("postcode");
		String addr1 = request.getParameter("addr1");
		String addr2 = request.getParameter("addr2");

		//데이터 저장
		MemberDTO memberDTO = new MemberDTO();
		memberDTO.setId(id);
		memberDTO.setPwd(pwd);
		memberDTO.setNickname(nickname);
		memberDTO.setPhone(phone);
		memberDTO.setPostcode(postcode);
		memberDTO.setAddr1(addr1);
		memberDTO.setAddr2(addr2);

		//DB
		int su = memberService.write(memberDTO);	// 호출
		// 화면 네비게이션
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("su", su);
		modelAndView.addObject("display", "../member/write.jsp");
		modelAndView.setViewName("../main/index.jsp");
		return modelAndView;
	}
	
	@RequestMapping(value="member/checkId.do")
	public ModelAndView checkId(HttpServletRequest request) {
		// 데이터
		String id = request.getParameter("id");

		// DB
		boolean exist = memberService.isExistId(id);
		// 화면 네비게이션
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("id", id);
		modelAndView.addObject("exist", exist);
		modelAndView.setViewName("checkId.jsp");
		return modelAndView;
	}
	
	@RequestMapping(value="member/login.do")
	public ModelAndView login(HttpServletRequest request) {
		// 데이터
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");

		// DB
		String nickname = memberService.login(id, pwd);
		// 화면 네비게이션
		ModelAndView modelAndView = new ModelAndView();
		if(nickname==null) { 
			modelAndView.addObject("display", "../member/loginFail.jsp");
			modelAndView.setViewName("../main/index.jsp");
		} else { 
			HttpSession session = request.getSession();
			session.setAttribute("memName", nickname);
			session.setAttribute("memId", id);
			modelAndView.addObject("display", "../member/login.jsp");
			modelAndView.setViewName("../main/index.jsp");
		} 
		return modelAndView; 
	}
	
	@RequestMapping(value="member/logoutForm.do")
	public ModelAndView logoutForm() {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("display", "../member/logoutForm.jsp");
		modelAndView.setViewName("../main/index.jsp");
		return modelAndView;
	}
	
	@RequestMapping(value="member/logout.do")
	public ModelAndView logout(HttpServletRequest request) {
		// 세션 삭제
		HttpSession session = request.getSession();
		session.removeAttribute("memName");
		session.removeAttribute("memId");
		
		session.invalidate();
		
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("../main/index.jsp");
		return modelAndView;
	}
	
	@RequestMapping(value="member/searchPw.do")
	public ModelAndView searchPw() {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("display", "../member/searchPw.jsp");
		modelAndView.setViewName("../main/index.jsp");
		return modelAndView;
	}
	
	@RequestMapping(value="member/emailSend.do")
	public ModelAndView emailSend(HttpServletRequest request) {
		// 데이터
		String id = request.getParameter("id");
		String pwd = memberService.getPwd(id);
		System.out.println("id = " + id);
		System.out.println("pwd = " + pwd);
		
		String host = "smtp.naver.com";	// 보내는 사람 메일 도메인
		final String user   = "";		// 보내는 사람 메일 아이디
		final String password  = "";	// 보내는 사람 메일 비번
		
		// Get the session object
		Properties props = new Properties();
		props.put("mail.smtp.host", host);
		props.put("mail.smtp.auth", "true");
		
		Session session = Session.getDefaultInstance(props, new javax.mail.Authenticator() {
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication(user, password);
			}
		});
		
		// 메세지 작성
		try {
		MimeMessage message = new MimeMessage(session);
		message.setFrom(new InternetAddress(user));
		message.addRecipient(Message.RecipientType.TO, new InternetAddress(id));
		
		// 제목
		message.setSubject(id + "님 비밀번호 찾기 메일입니다.");
		// 내용
		message.setText("비밀번호는 " + pwd + " 입니다.");
		// 메일 발송
		Transport.send(message);
		System.out.println("메일 발송 완료");
		
		} catch (MessagingException e) {
			e.printStackTrace();
		}
		
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("display", "../member/emailSend.jsp");
		modelAndView.setViewName("../main/index.jsp");
		return modelAndView;
	}
	
	
	@RequestMapping(value="member/modifyForm.do")
	public ModelAndView modifyForm(HttpServletRequest request) {
		HttpSession session = request.getSession();
		String id = (String)session.getAttribute("memId");
		MemberDTO memberDTO = memberService.getMember(id);
		
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("memberDTO", memberDTO);
		modelAndView.addObject("display", "../member/modifyForm.jsp");
		modelAndView.setViewName("../main/index.jsp");
		return modelAndView;
	}
	
}
