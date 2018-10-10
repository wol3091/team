package request.controller;

import java.io.File;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletConfig;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import ownerMember.controller.OwnerMemberService;
import ownermenu.bean.OwnerMenuDTO;
import ownermenu.controller.OwnerMenuService;
import ownersidemenu.bean.OwnerSideMenuDTO;
import ownersidemenu.controller.OwnerSideMenuService;
import request.bean.RequestDTO;
import review.bean.ReviewDTO;
import review.controller.ReviewService;


@Controller
public class RequestController {
	
		@Autowired
		private RequestService requestService;
		
		@Autowired
		private OwnerMemberService ownerMemberService;
		
		@Autowired
		private OwnerMenuService ownermenuService;
		
		@Autowired
		private OwnerSideMenuService ownersidemenuService;
		
		@Autowired
		private ReviewService reviewService;
		
		// Owner 메인
		@RequestMapping(value="owner/ownermain/ownermain.do")
		public ModelAndView ownerMain() {
			/*System.out.println("여기 맞냐?");*/
			ModelAndView modelAndView = new ModelAndView();
			modelAndView.addObject("login", "../../owner/ownerLogin/ownerLogin.jsp");
//			modelAndView.setViewName("redirect:../../owner/ownermain/ownermain.jsp");
			modelAndView.setViewName("../../owner/ownermain/ownermain.jsp");
			return modelAndView;
		}
		
		// 메뉴관리
		@RequestMapping(value="owner/menumanagement/menumaniging.do")
		public ModelAndView ownerSection(HttpServletRequest request) {
			
			try {
				request.setCharacterEncoding("UTF-8");
			} catch (UnsupportedEncodingException e) {
				e.printStackTrace();
			}
			
			HttpSession session = request.getSession();
			String ownerId = (String) session.getAttribute("memId");
			String seq = ownerMemberService.searchSeq(ownerId);
			RequestDTO requestDTO = requestService.requestSelect(seq);
			ModelAndView modelAndView = new ModelAndView();
			modelAndView.addObject("requestDTO", requestDTO);
			modelAndView.addObject("seq",seq);
			modelAndView.addObject("display","../../owner/menumanagement/menumaniging.jsp");
			modelAndView.setViewName("../../owner/ownermain/ownermain.jsp");	
			return modelAndView;
		}
		
		// 정보관리2
		   @RequestMapping(value="owner/menumanagement/menumanaging2.do")
		   public ModelAndView menumanaging2(HttpServletRequest request) {
			   
			   try {
					request.setCharacterEncoding("UTF-8");
				} catch (UnsupportedEncodingException e) {
					e.printStackTrace();
				}

			   String seq = request.getParameter("seq");
			   
			   System.out.println(seq);
			   RequestDTO requestDTO = requestService.requestSelect(seq);
			   ArrayList<OwnerMenuDTO> list = ownermenuService.ownerMainMenuList(seq);
			   ArrayList<OwnerSideMenuDTO> list1 = ownersidemenuService.ownerSideMenuList(seq);
			   ModelAndView modelAndView = new ModelAndView();
			   modelAndView.addObject("requestDTO", requestDTO);
			   modelAndView.addObject("list",list);
			   modelAndView.addObject("list1", list1);
			   modelAndView.addObject("seq", seq);
			   modelAndView.addObject("display","../../owner/menumanagement/menumanaging2.jsp");
			   modelAndView.setViewName("../../owner/ownermain/ownermain.jsp");
			   return modelAndView;
		   }
		
		
		@RequestMapping(value="owner/menumanagement/menu_guide.do")
		public ModelAndView ownerMenuGuide(HttpServletRequest request) {
			
			try {
				request.setCharacterEncoding("UTF-8");
			} catch (UnsupportedEncodingException e) {
				e.printStackTrace();
			}
			
			String seq = request.getParameter("seq");
		    RequestDTO requestDTO = requestService.requestSelect(seq);
		    ArrayList<OwnerMenuDTO> list = ownermenuService.ownerMainMenuList(seq);
		    ArrayList<OwnerSideMenuDTO> list1 = ownersidemenuService.ownerSideMenuList(seq);
		    ModelAndView modelAndView = new ModelAndView();
		    modelAndView.addObject("requestDTO", requestDTO);
		    modelAndView.addObject("list",list);
		    modelAndView.addObject("list1", list1);
		    modelAndView.addObject("seq", seq);
		 	modelAndView.addObject("detail","../../owner/menumanagement/menu_guide.jsp");
			modelAndView.addObject("display","../../owner/menumanagement/menumanaging2.jsp");
			modelAndView.setViewName("../../owner/ownermain/ownermain.jsp");	
			return modelAndView;
		}
		
		
		
		// 품절관리
		@RequestMapping(value="owner/menumanagement/ownersoldout.do")
		public ModelAndView ownerSoldout(HttpServletRequest request) {
			
			try {
				request.setCharacterEncoding("UTF-8");
			} catch (UnsupportedEncodingException e) {
				e.printStackTrace();
			}
			
			HttpSession session = request.getSession();
			String ownerId = (String) session.getAttribute("memId");
			String seq = ownerMemberService.searchSeq(ownerId);
			RequestDTO requestDTO = requestService.requestSelect(seq);
			ArrayList<OwnerMenuDTO> list = ownermenuService.ownerMainMenuList(seq);
			ArrayList<OwnerSideMenuDTO> list1 = ownersidemenuService.ownerSideMenuList(seq);
			ModelAndView modelAndView = new ModelAndView();
			modelAndView.addObject("requestDTO", requestDTO);
			modelAndView.addObject("seq",seq);
			modelAndView.addObject("list",list);
			modelAndView.addObject("list1", list1);
			modelAndView.addObject("display","../../owner/menumanagement/ownersoldout.jsp");
			modelAndView.setViewName("../../owner/ownermain/ownermain.jsp");
			return modelAndView;
		}


	   // 정보 수정 요청
	   @RequestMapping(value="owner/menumanagement/modifyInfo.do")
	   public ModelAndView modifyInfo(HttpServletRequest request) {
		   
		   	
		   
		   	ModelAndView modelAndView = new ModelAndView();
			modelAndView.addObject("display","../../owner/menumanagement/modifyInfo.jsp");
			modelAndView.setViewName("../../owner/ownermain/ownermain.jsp");	     
			return modelAndView;
	   }
	   //임시운영정지
	   @RequestMapping(value="owner/menumanagement/temporary_suspension.do")
	   public ModelAndView temporary_suspension(HttpServletRequest request) {
		   
		   try {
				request.setCharacterEncoding("UTF-8");
			} catch (UnsupportedEncodingException e) {
				e.printStackTrace();
			}
		   
		   	HttpSession session = request.getSession();
			String ownerId = (String) session.getAttribute("memId");
			String seq = ownerMemberService.searchSeq(ownerId);
			RequestDTO requestDTO = requestService.requestSelect(seq);
	        ModelAndView modelAndView = new ModelAndView();
	        modelAndView.addObject("requestDTO", requestDTO);
	        modelAndView.addObject("seq",seq);
	        modelAndView.addObject("display","../../owner/menumanagement/temporary_suspension.jsp");
	        modelAndView.setViewName("../../owner/ownermain/ownermain.jsp");  
	        return modelAndView;
	   }
	   
	   @RequestMapping(value="owner/menumanagement/tempResult.do")
	   public ModelAndView tempResult(HttpServletRequest request) {
		   	try {
				request.setCharacterEncoding("UTF-8");
			} catch (UnsupportedEncodingException e) {
				e.printStackTrace();
			}
		   	
			String seq = request.getParameter("seq");
			String temp_close = request.getParameter("temp_close");
			System.out.println(temp_close);
			RequestDTO requestDTO = new RequestDTO();
			requestDTO.setSeq(seq);
			requestDTO.setTemp_close(temp_close);
			
			int su = requestService.temp_closeUpdate(requestDTO);
			
			ModelAndView modelAndView = new ModelAndView();
	        modelAndView.addObject("temp_close", temp_close);
	        modelAndView.addObject("su",su);
	        modelAndView.addObject("seq",seq);
	        modelAndView.addObject("display","../../owner/menumanagement/tempResult.jsp");
	        modelAndView.setViewName("../../owner/ownermain/ownermain.jsp");  
	        return modelAndView;
	   }
	   
	   
	   
	   // 운영정보수정
	   @RequestMapping(value="owner/menumanagement/modifyForm.do")
	   public ModelAndView modifyForm(HttpServletRequest request) {
		    
		   	try {
				request.setCharacterEncoding("UTF-8");
			} catch (UnsupportedEncodingException e) {
				e.printStackTrace();
			}
		   
		   	HttpSession session = request.getSession();
			String ownerId = (String) session.getAttribute("memId");
			String seq = ownerMemberService.searchSeq(ownerId);
		    System.out.println(seq);
		    RequestDTO requestDTO = requestService.requestSelect(seq);
	        ModelAndView modelAndView = new ModelAndView();
	        modelAndView.addObject("requestDTO",requestDTO);
	        modelAndView.addObject("seq",seq);
	        modelAndView.addObject("display","../../owner/menumanagement/modifyForm.jsp");
	        modelAndView.setViewName("../../owner/ownermain/ownermain.jsp"); 
	        return modelAndView;
	   }
	   
	   	  // 운영정보수정 결과1
	      @RequestMapping(value="owner/menumanagement/modify.do") 
	      public ModelAndView modify(HttpServletRequest request) throws IOException {
	         String seq = request.getParameter("seq");
	         System.out.println(seq);
	         
	         String restaurant_name = request.getParameter("restaurant_name");
	         String category_menu = request.getParameter("category_menu");
	         String restaurant_phone1 = request.getParameter("restaurant_phone1");
	         String restaurant_phone2 = request.getParameter("restaurant_phone2");
	         String restaurant_phone3 = request.getParameter("restaurant_phone3");
	         String restaurant_address1 = request.getParameter("restaurant_address1");
	         String restaurant_address2 = request.getParameter("restaurant_address2");
	         String restaurant_address3 = request.getParameter("restaurant_address3");
	         String restaurant_address4 = request.getParameter("restaurant_address4");
	         String original = request.getParameter("original");
	         
	         
	          RequestDTO requestDTO = new RequestDTO();
	          requestDTO.setRestaurant_name(restaurant_name);
	          requestDTO.setCategory_menu(category_menu);
	          requestDTO.setRestaurant_phone1(restaurant_phone1);
	          requestDTO.setRestaurant_phone2(restaurant_phone2);
	          requestDTO.setRestaurant_phone3(restaurant_phone3);
	          requestDTO.setRestaurant_address1(restaurant_address1);
	          requestDTO.setRestaurant_address2(restaurant_address2);
	          requestDTO.setRestaurant_address3(restaurant_address3);
	          requestDTO.setRestaurant_address4(restaurant_address4);
	          requestDTO.setOriginal(original);
	          requestDTO.setSeq(seq);
	          
	          int su = requestService.modify(requestDTO);
	          
	           ModelAndView modelAndView = new ModelAndView();
	         modelAndView.addObject("su", su);
	           modelAndView.addObject("requestDTO",requestDTO);
	           modelAndView.addObject("seq",seq);
	           modelAndView.addObject("display","../../owner/menumanagement/modify.jsp");
	           modelAndView.setViewName("../../owner/ownermain/ownermain.jsp"); 
	           return modelAndView;
	      }
	      // 운영정보수정 결과2
	      @RequestMapping(value="/owner/menumanagement/modify2.do") 
	      public ModelAndView modify2(HttpServletRequest request) throws IOException {
	         String seq = request.getParameter("seq");
	         System.out.println(seq);
	         String weekday_start_H = request.getParameter("weekday_start_H");
	         String weekday_start_M = request.getParameter("weekday_start_M");
	         String weekday_end_H = request.getParameter("weekday_end_H");
	         String weekday_end_M = request.getParameter("weekday_end_M");
	         String saturday_start_H = request.getParameter("saturday_start_H");
	         String saturday_start_M = request.getParameter("saturday_start_M");
	         String saturday_end_H = request.getParameter("saturday_end_H");
	         String saturday_end_M = request.getParameter("saturday_end_M");
	         String sunday_start_H = request.getParameter("sunday_start_H");
	         String sunday_start_M = request.getParameter("sunday_start_M");
	         String sunday_end_H = request.getParameter("sunday_end_H");
	         String sunday_end_M = request.getParameter("sunday_end_M");
	         String delivery_time = request.getParameter("delivery_time");
	         String delivery_region = request.getParameter("delivery_region");
	         String lower_price = request.getParameter("lower_price");
	         int delivery_cost = Integer.parseInt(request.getParameter("delivery_cost"));

	          RequestDTO requestDTO = new RequestDTO();
	          requestDTO.setSeq(seq);
	          requestDTO.setWeekday_start_H(weekday_start_H);
	          requestDTO.setWeekday_start_M(weekday_start_M);
	          requestDTO.setWeekday_end_H(weekday_end_H);
	          requestDTO.setWeekday_end_M(weekday_end_M);
	          requestDTO.setSaturday_start_H(saturday_start_H);
	          requestDTO.setSaturday_start_M(saturday_start_M);
	          requestDTO.setSaturday_end_H(saturday_end_H);
	          requestDTO.setSaturday_end_M(saturday_end_M);
	          requestDTO.setSunday_start_H(sunday_start_H);
	          requestDTO.setSunday_start_M(sunday_start_M);
	          requestDTO.setSunday_end_H(sunday_end_H);
	          requestDTO.setSunday_end_M(sunday_end_M);
	          requestDTO.setDelivery_time(delivery_time);
	          requestDTO.setDelivery_region(delivery_region);
	          requestDTO.setDelivery_cost(delivery_cost);
	          requestDTO.setLower_price(lower_price);

	          
	          int su = requestService.modify2(requestDTO);
	          
	           ModelAndView modelAndView = new ModelAndView();
	         modelAndView.addObject("su", su);
	           modelAndView.addObject("requestDTO",requestDTO);
	           modelAndView.addObject("seq",seq);
	           modelAndView.addObject("display","../../owner/menumanagement/modify2.jsp");
	           modelAndView.setViewName("../../owner/ownermain/ownermain.jsp"); 
	           return modelAndView;
	   }
	   
	   @RequestMapping(value="/owner/menumanagement/modifyResult.do")
	   public ModelAndView modifyResult(HttpServletRequest request) {
		    String seq = request.getParameter("seq");
		    System.out.println(seq);
	        ModelAndView modelAndView = new ModelAndView();
	        modelAndView.addObject("seq",seq);
	        modelAndView.addObject("display","../../owner/menumanagement/modifyResult.jsp");
	        modelAndView.setViewName("../../owner/ownermain/ownermain.jsp"); 
	        return modelAndView;
	   }
	   

	   //정보수정 -공지사항
	    @RequestMapping(value="/owner/menumanagement/modifyInfo_noti.do")
	    public ModelAndView modifyInfo_noti() {
	    	ModelAndView modelAndView = new ModelAndView();
	    	modelAndView.addObject("display","../owner/modifyInfo_noti.jsp");
	    	modelAndView.setViewName("../../owner/ownermain/ownermain.jsp");
	    	return modelAndView;
	    }
	   
	   
	    @RequestMapping(value="/owner/menumanagement/ownerReview.do")
	    public ModelAndView ownerReview(HttpServletRequest request) {
	    	
	    	HttpSession session = request.getSession();
			String ownerId = (String) session.getAttribute("memId");
			String ceo_seq = ownerMemberService.searchSeq(ownerId);
	    	System.out.println("ceo_seq = "+ceo_seq);
	    	
	    	ArrayList<ReviewDTO> all_list = reviewService.allReviewList(ceo_seq);
	    	ArrayList<ReviewDTO> n_list = reviewService.nReviewList(ceo_seq);
	    	
	    	
	    	
	        ModelAndView modelAndView = new ModelAndView();
	        modelAndView.addObject("display","../../owner/menumanagement/ownerReview.jsp");
	        modelAndView.addObject("all_list",all_list);
	        modelAndView.addObject("n_list",n_list);
	        modelAndView.setViewName("../../owner/ownermain/ownermain.jsp");
	        return modelAndView;
	    }
	    
	    @RequestMapping(value="/owner/menumanagement/owner_answer.do")
	    public ModelAndView owner_answer(HttpServletRequest request) {
	    	
	    	try {
				request.setCharacterEncoding("UTF-8");
			} catch (UnsupportedEncodingException e) {
				e.printStackTrace();
			}
	    	
	    	String id = request.getParameter("id");
	    	String logtime = request.getParameter("logtime");
	    	String ceoContent = request.getParameter("ceoContent");
	    	
	    	System.out.println("id = "+id);
	    	System.out.println("logtime = "+logtime);
	    	System.out.println("ceoContent = "+ceoContent);
	    	
	    	ReviewDTO reviewDTO = new ReviewDTO();
	    	reviewDTO.setId(id);
	    	reviewDTO.setLogtime(logtime);
	    	reviewDTO.setCeoContent(ceoContent);
	    	int su = reviewService.owner_answer(reviewDTO);
	    	
	    	System.out.println("su = "+su);
	    	ModelAndView modelAndView = new ModelAndView();
		    modelAndView.addObject("su",su);
		    modelAndView.setViewName("owner_answer.jsp");
		    return modelAndView;
	    }
	   
	   	// 온라인 입점신청 Form
		@RequestMapping(value="/owner/signup/requestForm.do")
		public ModelAndView requestForm() {
			ModelAndView modelAndView = new ModelAndView();
			modelAndView.addObject("display","../../owner/signup/requestForm.jsp");
			modelAndView.setViewName("../../owner/ownermain/ownermain.jsp");
			return modelAndView;
		}
	   
		// 온라인 입점신청 결과
		@RequestMapping(value="/owner/signup/requestResult.do", method=RequestMethod.POST)
		public ModelAndView  requestResult(HttpServletRequest request, RequestDTO requestDTO, MultipartFile image
				,MultipartHttpServletRequest mtfRequest) {
			
			System.out.println("온라인 입점 등록ing");
			
			String filePath1 = "C:\\\\Users\\\\Owner\\\\Downloads\\\\프로젝트\\\\workspace\\\\00-jogiyo\\\\src\\\\main\\\\webapp\\\\business_register\\";
		    String filePath2 = 
		    		"C:\\\\Users\\\\Owner\\\\Downloads\\\\프로젝트\\\\workspace\\\\00-jogiyo\\\\src\\\\main\\\\webapp\\\\business_register\\";
		    String filePath3 = 
		    		"C:\\\\Users\\\\Owner\\\\Downloads\\\\프로젝트\\\\workspace\\\\00-jogiyo\\\\src\\\\main\\\\webapp\\\\somename\\";
		    
		    String fileName1;
		    String fileName2;
		    String fileName3;
		    
			List<MultipartFile> fileList = mtfRequest.getFiles("imageFile");
	        int i=0;
	        for (MultipartFile mf : fileList) {
	            
	        	String originFileName = mf.getOriginalFilename(); // 원본 파일 명
	        	
	        	if (i == 0 ) {
	            	fileName1 =  originFileName;
	            	String safeFile = filePath1 + originFileName;
	            	requestDTO.setRegistration(fileName1);
	            	System.out.println("Registration " + fileName1);
	            	try {
	                    mf.transferTo(new File(safeFile));
	                } catch (IllegalStateException e) {
	                    e.printStackTrace();
	                } catch (IOException e) {
	     
	                    e.printStackTrace();
	                }
				}
	            if (i == 1 ) {
	            	fileName2 =originFileName;
	            	String safeFile = filePath2 + originFileName;
	            	requestDTO.setBusiness_register(fileName2);
	            	System.out.println("business_register " + fileName2);
	            	try {
	                    mf.transferTo(new File(safeFile));
	                } catch (IllegalStateException e) {
	                    e.printStackTrace();
	                } catch (IOException e) {
	     
	                    e.printStackTrace();
	                }
				}
	            if (i == 2 ) {
	            	fileName3 =  filePath1 + originFileName;
	            	String safeFile = filePath3 + originFileName;
	            	requestDTO.setSomename(fileName3);
	            	System.out.println("somename " + fileName3);
	            	try {
	                    mf.transferTo(new File(safeFile));
	                } catch (IllegalStateException e) {
	                    e.printStackTrace();
	                } catch (IOException e) {

	                    e.printStackTrace();
	                }
				}
	           
	            i = i +1;
	        }
			/////////////////
	        

	        
	        //** 여러가지 파일 업로드 *//*
			// 1. 사용자 입력 정보 추출	
	        String category_menu = "";
	        
        	String category_menus[] = request.getParameterValues("box");
	        for (int j=0;j<category_menus.length;j++){
	        	if(j == 0) {
	        		category_menu+= category_menus[j];
	        	} else {
	        		category_menu =category_menu+ ","+ category_menus[j];
	        		
	        	}
	        	 
	        }

	        
			requestDTO.setLicense_num1(request.getParameter("license_num1"));
			System.out.println("license_num1 : " + request.getParameter("license_num1"));
			requestDTO.setLicense_num2(request.getParameter("license_num2"));
			System.out.println("license_num2 : " + request.getParameter("license_num2"));
			requestDTO.setLicense_num3(request.getParameter("license_num3"));
			System.out.println("license_num3 : " + request.getParameter("license_num3"));
			requestDTO.setRegister_name(request.getParameter("register_name"));
			System.out.println("register_name : " + request.getParameter("register_name"));
			requestDTO.setBusiness_phone1(request.getParameter("business_phone1"));
			System.out.println("business_phone1 : " +request.getParameter("business_phone1"));
			requestDTO.setBusiness_phone2(request.getParameter("business_phone2"));
			System.out.println("business_phone2 : " +request.getParameter("business_phone2"));
			requestDTO.setBusiness_phone3(request.getParameter("business_phone3"));
			System.out.println("business_phone3 : " + request.getParameter("business_phone3"));
			String restaurant_name = request.getParameter("restaurant_name");
			requestDTO.setRestaurant_name(restaurant_name);
			System.out.println("restaurant_name : " + request.getParameter("restaurant_name"));
			requestDTO.setRestaurant_address1(request.getParameter("restaurant_address1"));
			System.out.println("restaurant_address1 : " +request.getParameter("restaurant_address1"));
			requestDTO.setRestaurant_address2(request.getParameter("restaurant_address2"));
			System.out.println("restaurant_address2 : " +request.getParameter("restaurant_address2"));
			requestDTO.setRestaurant_address3(request.getParameter("restaurant_address3"));
			System.out.println("restaurant_address3 : " +request.getParameter("restaurant_address3"));
			requestDTO.setRestaurant_address4(request.getParameter("restaurant_address4"));
			System.out.println("restaurant_address4 : " + request.getParameter("restaurant_address4"));
			requestDTO.setRestaurant_phone1(request.getParameter("restaurant_phone1"));
			System.out.println(request.getParameter("restaurant_phone1"));
			requestDTO.setRestaurant_phone2(request.getParameter("restaurant_phone2"));
			System.out.println(request.getParameter("restaurant_phone2"));
			requestDTO.setRestaurant_phone3(request.getParameter("restaurant_phone3"));
			System.out.println("restaurant_phone3 : " + request.getParameter("restaurant_phone3"));
			requestDTO.setCategory_menu(category_menu);
			System.out.println("category_menu : " + category_menu);
			requestDTO.setDelivery_option(request.getParameter("delivery_option"));
			System.out.println("delivery_option : " +request.getParameter("delivery_option"));
			requestDTO.setYak(request.getParameter("yak"));
			System.out.println("yak : " +request.getParameter("yak"));
			requestDTO.setAccess1(request.getParameter("access1"));
			System.out.println("access1 : " +request.getParameter("access1"));
			requestDTO.setTemp_close(request.getParameter("temp_close"));
			System.out.println("temp_close : " + request.getParameter("temp_close"));
			// 2. DB 연동 처리	
			int su = requestService.write(requestDTO);
			// 3. 화면 네비게이션
			ModelAndView modelAndView = new ModelAndView();
			modelAndView.addObject("requestDTO", requestDTO);
			modelAndView.addObject("restaurant_name",restaurant_name);
			modelAndView.addObject("su", su);
			modelAndView.addObject("display","../../owner/signup/requestResult.jsp");
			modelAndView.setViewName("../../owner/ownermain/ownermain.jsp");
			return modelAndView;
		}
		
	   	// 회원가입 인증하기
		@RequestMapping(value="/owner/signup/registration_certification.do")
		public ModelAndView registration_certification() {
			ModelAndView modelAndView = new ModelAndView();
			modelAndView.addObject("display","../../owner/signup/registration_certification.jsp");
			modelAndView.setViewName("../../owner/ownermain/ownermain.jsp");
			return modelAndView;
		}
		
		// 회원인증하기 결과
		@RequestMapping(value="/owner/signup/registration_certificationResult.do")
		public ModelAndView registration_certificationResult(HttpServletRequest request) {
			String license_num1 = request.getParameter("license_num1");
			System.out.println(license_num1);
			String license_num2 = request.getParameter("license_num2");
			System.out.println(license_num2);
			String license_num3 = request.getParameter("license_num3");
			System.out.println(license_num3);
			String business_phone1 = request.getParameter("business_phone1");
			String business_phone2 = request.getParameter("business_phone2");
			String business_phone3 = request.getParameter("business_phone3");
			
			String seq = requestService.certification(license_num1, license_num2, license_num3, business_phone1, business_phone2, business_phone3);
			System.out.println(seq);
			ModelAndView modelAndView = new ModelAndView();
			if(seq == null) {
				modelAndView.addObject("display","../../owner/signup/registration_certificationResultFail.jsp");
				modelAndView.setViewName("../../owner/ownermain/ownermain.jsp");
			} else {
				modelAndView.addObject("seq", seq);
				modelAndView.addObject("display","../../owner/signup/registration_certificationResult.jsp");
				modelAndView.setViewName("../../owner/ownermain/ownermain.jsp");
			}
			
			
			return modelAndView;
		}
		// 다른 정보 입력하기
		@RequestMapping(value="owner/signup/otheInfo.do")
		   public ModelAndView otheInfo(HttpServletRequest request) {
				String seq = request.getParameter("seq");
				
				ModelAndView modelAndView = new ModelAndView();
		        modelAndView.addObject("seq",seq);
		        modelAndView.addObject("display","../../owner/signup/otheInfo.jsp");
		        modelAndView.setViewName("../../owner/ownermain/ownermain.jsp"); 
		        return modelAndView;
		  }
	
	   // 다른 정보 입력하기 결과
		@RequestMapping(value="owner/signup/otherInfoResult.do")
		   public ModelAndView otherInfoResult(HttpServletRequest request) {
				String seq = request.getParameter("seq");
				System.out.println(seq);
				String original = request.getParameter("original");
				System.out.println(original);
				String lower_price = request.getParameter("lower_price");
				System.out.println(lower_price);
				String delivery_region = request.getParameter("delivery_region");
				System.out.println(delivery_region);
				String money_method = request.getParameter("money_method");
				System.out.println(money_method);
				String weekday_start_H = request.getParameter("weekday_start_H");
				System.out.println(weekday_start_H);
				String weekday_start_M = request.getParameter("weekday_start_M");
				System.out.println(weekday_start_M);
				String weekday_end_H = request.getParameter("weekday_end_H");
				System.out.println(weekday_end_H);
			    String weekday_end_M = request.getParameter("weekday_end_M");
			    System.out.println(weekday_end_M);
			    String saturday_start_H = request.getParameter("saturday_start_H");
			    System.out.println(saturday_start_H);
			    String saturday_start_M = request.getParameter("saturday_start_M");
			    System.out.println(saturday_start_M);
			    String saturday_end_H = request.getParameter("saturday_end_H");
			    System.out.println(saturday_end_H);
			    String saturday_end_M = request.getParameter("saturday_end_M");
			    System.out.println(saturday_end_M);
			    String sunday_start_H = request.getParameter("sunday_start_H");
			    System.out.println(sunday_start_H);
			    String sunday_start_M = request.getParameter("sunday_start_M");
			    System.out.println(sunday_start_M);
			    String sunday_end_H = request.getParameter("sunday_end_H");
			    System.out.println(sunday_end_H);
			    String sunday_end_M = request.getParameter("sunday_end_M");
			    System.out.println(sunday_end_M);
			    int delivery_cost = Integer.parseInt(request.getParameter("delivery_cost"));
			    System.out.println(delivery_cost);
			    String delivery_time = request.getParameter("delivery_time");
				System.out.println(delivery_time);
				
				RequestDTO requestDTO = new RequestDTO();
				requestDTO.setSeq(seq);
				requestDTO.setOriginal(original);
				requestDTO.setLower_price(lower_price);
				requestDTO.setDelivery_region(delivery_region);
				requestDTO.setMoney_method(money_method);
				requestDTO.setWeekday_start_H(weekday_start_H);
				requestDTO.setWeekday_start_M(weekday_start_M);
				requestDTO.setWeekday_end_H(weekday_end_H);
				requestDTO.setWeekday_end_M(weekday_end_M);
				requestDTO.setSaturday_start_H(saturday_start_H);
				requestDTO.setSaturday_start_M(saturday_start_M);
				requestDTO.setSaturday_end_H(saturday_end_H);
				requestDTO.setSaturday_end_M(saturday_end_M);
				requestDTO.setSunday_start_H(sunday_start_H);
				requestDTO.setSunday_start_M(sunday_start_M);
				requestDTO.setSunday_end_H(sunday_end_H);
				requestDTO.setSunday_end_M(sunday_end_M);
				requestDTO.setDelivery_cost(delivery_cost);
				requestDTO.setDelivery_time(delivery_time);
				
				int su = requestService.otherInfoUpdate(requestDTO);
				
				ModelAndView modelAndView = new ModelAndView();
		        modelAndView.addObject("su",su);
		        modelAndView.addObject("seq",seq);
		        modelAndView.addObject("display","../../owner/signup/otherInfoResult.jsp");
		        modelAndView.setViewName("../../owner/ownermain/ownermain.jsp"); 
		        return modelAndView;
		  }
		
	   // 입점절차
	   @RequestMapping(value="owner/signup/placementProcedure.do")
	   public ModelAndView placementProcedure() {
	        ModelAndView modelAndView = new ModelAndView();
	        modelAndView.addObject("display","../../owner/signup/placementProcedure.jsp");
	        modelAndView.setViewName("../../owner/ownermain/ownermain.jsp"); 
	        return modelAndView;
	   }
	   
		 
}
