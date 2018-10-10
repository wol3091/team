package ownerMember.controller;

import java.io.IOException;

import java.util.Properties;

import javax.mail.Authenticator;
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

import ownerMember.bean.OwnerMemberDTO;
import request.bean.RequestDTO;
import request.controller.RequestService;



@Controller
public class OwnerMemberController{
	
	@Autowired
	private OwnerMemberService ownerMemberService;
	
	@Autowired
	private RequestService requestService;
	
	@RequestMapping(value="/owner/ownerLogin/registerForm.do")
	public ModelAndView registerForm(HttpServletRequest request) {
		String seq = request.getParameter("seq");
		System.out.println(seq);
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("seq", seq);
		modelAndView.addObject("display", "../../owner/ownerLogin/registerForm.jsp");
		modelAndView.setViewName("../../owner/ownermain/ownermain.jsp");
		return modelAndView;
	}
	
	@RequestMapping(value="/owner/ownerLogin/register.do")
	public ModelAndView register(HttpServletRequest request) throws IOException{// 전달받기위해 request 필요
		// 데이터 읽어오기
		request.setCharacterEncoding("UTF-8");// 예외처리
		String ownerId = request.getParameter("ownerId");
		String ownerPwd = request.getParameter("ownerPwd");
		String ownerEmail1 = request.getParameter("ownerEmail1");
		String seq = request.getParameter("seq");
		//데이터 저장
		OwnerMemberDTO ownerMemberDTO = new OwnerMemberDTO();
		ownerMemberDTO.setSeq(seq);
		System.out.println(seq);
		ownerMemberDTO.setOwnerId(ownerId);
		System.out.println(ownerId);
		ownerMemberDTO.setOwnerPwd(ownerPwd);
		System.out.println(ownerPwd);
		ownerMemberDTO.setOwnerEmail1(ownerEmail1);
		System.out.println(ownerEmail1);
		
		//DB
		int su = ownerMemberService.ownerMemberWrite(ownerMemberDTO);
		// 화면 네비게이션
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("su", su);
		modelAndView.addObject("seq",seq);
		modelAndView.addObject("display", "../../owner/ownerLogin/register.jsp");
		modelAndView.setViewName("../../owner/ownermain/ownermain.jsp");
		return modelAndView;
	}
	
	@RequestMapping(value="/owner/ownerLogin/ownerCheckId.do")
	public ModelAndView checkId(HttpServletRequest request) {
		// 데이터
		String ownerId = request.getParameter("ownerId");

		// DB
		boolean exist = ownerMemberService.ownerMemberIsExistId(ownerId);
		// 화면 네비게이션
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("ownerId", ownerId);
		modelAndView.addObject("exist", exist);
		modelAndView.setViewName("ownerCheckId.jsp");
		return modelAndView;
	}
	
	@RequestMapping(value="/owner/ownerLogin/ownerLoginForm.do")
	public ModelAndView ownerLoginForm() {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("display", "../../owner/ownerLogin/ownerLoginForm.jsp");
		modelAndView.setViewName("../../owner/ownermain/ownermain.jsp");
		return modelAndView;
	}
	
	@RequestMapping(value="/owner/ownerLogin/ownerLogin.do")
	public ModelAndView login2(HttpServletRequest request) {
		// 데이터
		String ownerId = request.getParameter("ownerId");
		String ownerPwd = request.getParameter("ownerPwd");
		System.out.println(ownerId);
		System.out.println(ownerPwd);
		// DB
		String ownerEmail1 = ownerMemberService.ownerMemberLogin(ownerId, ownerPwd);
		System.out.println(ownerEmail1);
		String seq = ownerMemberService.searchSeq(ownerId);
		RequestDTO requestDTO = new RequestDTO();
		
		//아이디 다르면 오류나서 수정함
		if( seq != null) {
			requestDTO = requestService.requestSelect(seq);
		}
		System.out.println(ownerEmail1);
		// 화면 네비게이션
		ModelAndView modelAndView = new ModelAndView();
		if(ownerEmail1==null) { 
			modelAndView.addObject("login", "../../owner/ownerLogin/ownerLoginFail.jsp");
			modelAndView.addObject("loginFail", 1);
			modelAndView.setViewName("../../owner/ownermain/ownermain.jsp");
		} else { 
			HttpSession session = request.getSession();
			session.setAttribute("memEmail1", ownerEmail1);
			session.setAttribute("memId", ownerId);
			session.setAttribute("name", requestDTO.getRegister_name());
			modelAndView.addObject("requestDTO",requestDTO);
			modelAndView.addObject("login", "../../owner/ownerLogin/ownerLogin.jsp");
			modelAndView.setViewName("../../owner/ownermain/ownermain.jsp");
		} 
		return modelAndView; 
	}


	
	@RequestMapping(value="/owner/ownerLogin/ownerLogout.do")
	public ModelAndView logout(HttpServletRequest request) {
		// 세션 삭제
		HttpSession session = request.getSession();
		session.removeAttribute("memEmail1");
		session.removeAttribute("memId");
		
		session.invalidate();
		
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("../../owner/ownermain/ownermain.jsp");
		return modelAndView;
	}
	

	
	@RequestMapping(value="/owner/myinfo/check_pwd.do")
	public ModelAndView check_pwd(HttpServletRequest request) {

		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("display", "../../owner/myinfo/check_pwd.jsp");
		modelAndView.setViewName("../../owner/ownermain/ownermain.jsp");
		return modelAndView;
	}
	
	@RequestMapping(value="/owner/myinfo/check_pwdResult.do")
	public ModelAndView check_pwd_result(HttpServletRequest request) {
		HttpSession session = request.getSession();
		String ownerId = (String) session.getAttribute("memId");
		String ownerPwd = request.getParameter("checkPassword");
		System.out.println(ownerPwd);
		String ownerEmail1 = ownerMemberService.searchPw(ownerId, ownerPwd);
		ModelAndView modelAndView = new ModelAndView();
		if(ownerEmail1 == null) {
    		 modelAndView.addObject("display", "../../owner/myinfo/check_pwdResultFail.jsp");
			 modelAndView.setViewName("../../owner/ownermain/ownermain.jsp");
		} else {
			modelAndView.addObject("display", "../../owner/myinfo/check_pwdResult.jsp");
			modelAndView.setViewName("../../owner/ownermain/ownermain.jsp");			
		}
		return modelAndView;
		
	}
	
	@RequestMapping(value="/owner/myinfo/ownerModifyForm.do")
	public ModelAndView ownerModifyForm(HttpServletRequest request) {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("display", "../../owner/myinfo/ownerModifyForm.jsp");
		modelAndView.setViewName("../../owner/ownermain/ownermain.jsp");
		return modelAndView;
	}
	
	   //비밀번호 찾기(혜원)
    @RequestMapping(value="/owner/ownerLogin/searchPw.do")
    public ModelAndView searchPw() {
       ModelAndView modelAndView = new ModelAndView();
       modelAndView.addObject("display","../../owner/ownerLogin/searchPw.jsp");
       modelAndView.setViewName("../../owner/ownermain/ownermain.jsp");   
       return modelAndView;
    }
    
    // 계정정보
	   @RequestMapping(value="/owner/myinfo/account_info.do")
	   public ModelAndView account_info(HttpServletRequest request) {
		  HttpSession session = request.getSession();
		  String ownerId = (String)session.getAttribute("memId");
		  System.out.println(ownerId);
		  OwnerMemberDTO ownerMemberDTO = ownerMemberService.changePw(ownerId);
	      ModelAndView modelAndView = new ModelAndView();
	      modelAndView.addObject("ownerId",ownerId);
	      modelAndView.addObject("ownerMemberDTO",ownerMemberDTO);
	      modelAndView.addObject("display","../../owner/myinfo/account_info.jsp");
	      modelAndView.setViewName("../../owner/ownermain/ownermain.jsp");   
	      return modelAndView;
	   }
	   
	   @RequestMapping(value="/owner/myinfo/account_infoResult.do")
	   public ModelAndView account_infoResult(HttpServletRequest request) {
		  HttpSession session = request.getSession();
		  String ownerId = (String)session.getAttribute("memId");
		  System.out.println(ownerId);
		  String ownerPwd = request.getParameter("pw");
		  OwnerMemberDTO ownerMemberDTO = new OwnerMemberDTO();
		  ownerMemberDTO.setOwnerId(ownerId);
		  ownerMemberDTO.setOwnerPwd(ownerPwd);
		  System.out.println(ownerPwd);
		  int su = ownerMemberService.ownerMemberPasswordModify(ownerMemberDTO);
	      ModelAndView modelAndView = new ModelAndView();
	      modelAndView.addObject("su",su);
	      modelAndView.addObject("display","../../owner/myinfo/account_infoResult.jsp");
	      modelAndView.setViewName("../../owner/ownermain/ownermain.jsp");   
	      return modelAndView;
	   }
	   
	   @RequestMapping(value="/owner/myinfo/address_info.do")
		public ModelAndView address_info(HttpServletRequest request) {
		    HttpSession session = request.getSession();
		    String ownerId = (String)session.getAttribute("memId");
		    String ownerEmail1 = ownerMemberService.emailSearch(ownerId);
		    String seq = ownerMemberService.searchSeq(ownerId);
		    System.out.println(seq);
		    RequestDTO requestDTO = requestService.requestSelect(seq);
			ModelAndView modelAndView = new ModelAndView();
			modelAndView.addObject("seq",seq);
			modelAndView.addObject("ownerEmail1",ownerEmail1);
			modelAndView.addObject("requestDTO",requestDTO);
			modelAndView.addObject("display", "../../owner/myinfo/address_info.jsp");
			modelAndView.setViewName("../../owner/ownermain/ownermain.jsp");
			return modelAndView;
		}

	   @RequestMapping(value="/owner/myinfo/address_infoResult.do")
	   public ModelAndView address_infoResult(HttpServletRequest request){
		    HttpSession session = request.getSession();
		    String ownerId = (String)session.getAttribute("memId");
		    String seq = request.getParameter("seq");
		    System.out.println(seq);
		    String ownerEmail1 = request.getParameter("ownerEmail1");
		    System.out.println(ownerEmail1);
		    String restaurant_address1 = request.getParameter("restaurant_address1");
		    System.out.println(restaurant_address1);
		    String restaurant_address2 = request.getParameter("restaurant_address2");
		    System.out.println(restaurant_address2);
		    String restaurant_address3 = request.getParameter("restaurant_address3");
		    System.out.println(restaurant_address3);
		    String restaurant_address4 = request.getParameter("restaurant_address4");
		    System.out.println(restaurant_address4);
		    
		    OwnerMemberDTO ownerMemberDTO = new OwnerMemberDTO();
		    ownerMemberDTO.setOwnerId(ownerId);
		    ownerMemberDTO.setOwnerEmail1(ownerEmail1);
		    
		    RequestDTO requestDTO = new RequestDTO();
		    requestDTO.setSeq(seq);
		    requestDTO.setRestaurant_address1(restaurant_address1);
		    requestDTO.setRestaurant_address2(restaurant_address2);
		    requestDTO.setRestaurant_address3(restaurant_address3);
		    requestDTO.setRestaurant_address4(restaurant_address4);
		    
		    int su = ownerMemberService.ownerMemberEmailModify(ownerMemberDTO);
		    System.out.println(su);
		    int su1 = requestService.addressUpdate(requestDTO);
		    System.out.println(su1);
		    ModelAndView modelAndView = new ModelAndView();
		    modelAndView.addObject("su",su);
		    modelAndView.addObject("su1",su1);
			modelAndView.addObject("display", "../../owner/myinfo/address_infoResult.jsp");
			modelAndView.setViewName("../../owner/ownermain/ownermain.jsp");
			return modelAndView;
		}

	   	@RequestMapping(value="/owner/ownerLogin/ownerEmailSend.do")
		public ModelAndView EmailSend(HttpServletRequest request) {
			// 데이터
			String ownerEmail1 = request.getParameter("ownerEmail1");
			String ownerPwd = ownerMemberService.getOwnerPwd(ownerEmail1);
			System.out.println("ownerEmail1 = " + ownerEmail1);
			System.out.println("ownerPwd = " + ownerPwd);
			
			String host = "smtp.naver.com";	// 보내는 사람 메일 도메인
			final String user   = "lrken";		// 보내는 사람 메일 아이디
			final String password  = "l1rae3k4*!";	// 보내는 사람 메일 비번
			
			// Get the session object
			Properties props = new Properties();
			props.put("mail.smtp.host", host);
			props.put("mail.smtp.auth", "true");
			
			Session session1 = Session.getDefaultInstance(props, new Authenticator() {
			
				protected PasswordAuthentication getPasswordAuthentication() {
					return new PasswordAuthentication(user, password);
				}
			});
			
			// 메세지 작성
			try {
			MimeMessage message = new MimeMessage(session1);
			message.setFrom(new InternetAddress(user));
			message.addRecipient(Message.RecipientType.TO, new InternetAddress(ownerEmail1));
			
			// 제목
			message.setSubject("비밀번호 찾기 메일입니다.");
			// 내용
			message.setText("비밀번호는 " + ownerPwd + " 입니다.");
			// 메일 발송
			Transport.send(message);
			System.out.println("메일 발송 완료");
			
			} catch (MessagingException e) {
				e.printStackTrace();
			}
			
			ModelAndView modelAndView = new ModelAndView();
			modelAndView.addObject("display", "../../owner/ownerLogin/ownerEmailSend.jsp");
			modelAndView.setViewName("../../owner/ownermain/ownermain.jsp");
			return modelAndView;
		}
	   	
	   	
	   	@RequestMapping(value="/owner/ownerLogin/searchIdForm.do")
		public ModelAndView searchId(HttpServletRequest request) {

			ModelAndView modelAndView = new ModelAndView();
			modelAndView.addObject("display", "../../owner/ownerLogin/searchIdForm.jsp");
			modelAndView.setViewName("../../owner/ownermain/ownermain.jsp");
			return modelAndView;
		}
	   	
	   	@RequestMapping(value="/owner/ownerLogin/searchId.do")
		public ModelAndView searchIdResult(HttpServletRequest request) {
	   		String business_phone1 = request.getParameter("business_phone1");
	   		String business_phone2 = request.getParameter("business_phone2");
	   		String business_phone3 = request.getParameter("business_phone3");
	   		System.out.println(business_phone1);
	   		System.out.println(business_phone2);
	   		System.out.println(business_phone3);
	   		
	   		String seq = requestService.searchId(business_phone1, business_phone2, business_phone3);
	   		String ownerId = ownerMemberService.seqId(seq);
	   		String ownerEmail1 = ownerMemberService.emailSearch(ownerId);
	   		
	   		String host = "smtp.naver.com";	// 보내는 사람 메일 도메인
			final String user   = "lrken";		// 보내는 사람 메일 아이디
			final String password  = "l1rae3k4*!";	// 보내는 사람 메일 비번
			
			// Get the session object
			Properties props = new Properties();
			props.put("mail.smtp.host", host);
			props.put("mail.smtp.auth", "true");
			
			Session session1 = Session.getDefaultInstance(props, new Authenticator() {
			
				protected PasswordAuthentication getPasswordAuthentication() {
					return new PasswordAuthentication(user, password);
				}
			});
			
			// 메세지 작성
			try {
			MimeMessage message = new MimeMessage(session1);
			message.setFrom(new InternetAddress(user));
			message.addRecipient(Message.RecipientType.TO, new InternetAddress(ownerEmail1));
			
			// 제목
			message.setSubject("아이디 찾기 메일입니다.");
			// 내용
			message.setText("아이디는 " + ownerId + " 입니다.");
			// 메일 발송
			Transport.send(message);
			System.out.println("메일 발송 완료");
			
			} catch (MessagingException e) {
				e.printStackTrace();
			}
	   		
			ModelAndView modelAndView = new ModelAndView();
			modelAndView.addObject("ownerId",ownerId);
			modelAndView.addObject("display", "../../owner/ownerLogin/searchId.jsp");
			modelAndView.setViewName("../../owner/ownermain/ownermain.jsp");
			return modelAndView;
		}
}
