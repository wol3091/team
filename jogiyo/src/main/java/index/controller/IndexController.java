package index.controller;

import java.io.File;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import org.springframework.web.servlet.ModelAndView;


import orderlist.bean.OrderlistDTO;
import orderlist.controller.OrderlistService;
import owner_orderlist.bean.Owner_orderlistDTO;
import owner_orderlist.controller.Owner_orderlistService;
import ownermenu.bean.OwnerMenuDTO;
import ownermenu.controller.OwnerMenuService;
import ownersidemenu.bean.OwnerSideMenuDTO;
import ownersidemenu.controller.OwnerSideMenuService;
import request.bean.RequestDTO;
import request.controller.RequestService;
import review.bean.ReviewDTO;
import review.controller.ReviewService;

@Controller
public class IndexController {
	private static final Logger logger = LoggerFactory.getLogger(IndexController.class);
	
	@Autowired
	private RequestService requestService;
	@Autowired
	private OrderlistService orderlistService;
	@Autowired
	private Owner_orderlistService owner_orderlistService;
	@Autowired
	private OwnerMenuService ownerMenuService;
	@Autowired
	private OwnerSideMenuService ownerSideMenuService;
	@Autowired
	private ReviewService reviewService;
	
	
	@RequestMapping(value="main/index.do")
	public ModelAndView index() {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("redirect:../main/index.jsp");
		return modelAndView;
	}
	
	@RequestMapping(value="policy/policy.do")
	public ModelAndView policy() {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("display", "../policy/policy.jsp");
		modelAndView.setViewName("../main/index.jsp");
		return modelAndView;
	}
	
	@RequestMapping(value="choice/sectionTest.do")
	public ModelAndView sectionTest(HttpServletRequest request) {
		
		
		//여기서 데이터 처리 해야함 --> 목록같은거

		System.out.println("sectionTest.jsp가는중");
		
		String business = request.getParameter("business");
		String realLocation = request.getParameter("location");
		
		//그 주소 가져오면 예를 들어 '서울 관악구 봉천동'이면 ==>봉천동만 하게한다.
		int idx = realLocation.lastIndexOf(" ");
		
		String location = realLocation.substring(idx+1);
		
		//
		try {
			location = URLDecoder.decode(location, "UTF-8");
			
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}   
		System.out.println(business);
		System.out.println(location);
		
		
		//한글에 맞게 바꿔야 함
		
		if (business.equals("franchise")) {
			business = "프랜차이즈";
			System.out.println("바뀐 business = "+business);			
		} else if (business.equals("chicken")) {
			business = "치킨";
			System.out.println("바뀐 business = "+business);
		} else if (business.equals("pizza")) {
			business = "피자";
			System.out.println("바뀐 business = "+business);
		} else if (business.equals("china")) {
			business = "중국";
			System.out.println("바뀐 business = "+business);
		} else if (business.equals("korea")) {
			business = "한식";
			System.out.println("바뀐 business = "+business);
		} else if (business.equals("japan")) {
			business = "일식";
			System.out.println("바뀐 business = "+business);
		} else if (business.equals("bossam")) {
			business = "보쌈";
			System.out.println("바뀐 business = "+business);
		} else if (business.equals("night")) {
			business = "야식";
			System.out.println("바뀐 business = "+business);
		} else if (business.equals("bunsick")) {
			business = "분식";
			System.out.println("바뀐 business = "+business);
		} else if (business.equals("cafe")) {
			business = "카페";
			System.out.println("바뀐 business = "+business);
		}
		
		
//		기본 정렬
		ArrayList<RequestDTO> list = requestService.ownerList("%"+business+"%","%"+location+"%");
		
		for (RequestDTO requestDTO : list) {
			System.out.println("seq는");
			System.out.println(requestDTO.getSeq());
		}
//		별점순
		ArrayList<RequestDTO> listByStar = requestService.ownerListByStar("%"+business+"%","%"+location+"%");
//		최소금액순
		ArrayList<RequestDTO> listByPrice = requestService.ownerListByPrice("%"+business+"%","%"+location+"%");
//		리뷰순
		ArrayList<RequestDTO> listByRiview = requestService.ownerListByRiview("%"+business+"%","%"+location+"%");
		
		
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("../main/index.jsp");
		modelAndView.addObject("list", list);
		modelAndView.addObject("listByStar", listByStar);
		modelAndView.addObject("listByPrice", listByPrice);
		modelAndView.addObject("listByRiview", listByRiview);
		modelAndView.addObject("business", business);
		modelAndView.addObject("location", location);
		modelAndView.addObject("display","../choice/sectionTest.jsp");
		modelAndView.addObject("choice",1);
		return modelAndView;
	}
	
	@RequestMapping(value="choice/sectionView.do")
	public ModelAndView sectionView(HttpServletRequest request) {
		//여기서 데이터 처리 해야함 --> 상세 메뉴,리뷰 ,정보
		System.out.println("sectionView.jsp가는중");
		
		String seq = request.getParameter("seq");
		String location = request.getParameter("location");
		
		try {
			location = URLDecoder.decode(location, "UTF-8");
			
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		} 
		ModelAndView modelAndView = new ModelAndView();
		//데이터 처리
	
		RequestDTO requestDTO = requestService.ownerView(seq);
		
		ArrayList<OwnerMenuDTO> menu_sideList = ownerMenuService.ownerAllMenuList(seq);
		ArrayList<OwnerMenuDTO> mainList= ownerMenuService.ownerMainMenuList(seq);
		
		for (OwnerMenuDTO ownerMenuDTO : mainList) {
			System.out.println(ownerMenuDTO.getMenu());
		}
		
		ArrayList<OwnerSideMenuDTO> sideList= ownerSideMenuService.ownerSideMenuList(seq);
		
		ArrayList<ReviewDTO> reviewlist = reviewService.reviewBoardList(seq);
		int starPoint = reviewService.starPoint();
		int totalA = reviewService.getTotalA();
		int length = reviewlist.size();
		
		//보내기
		modelAndView.setViewName("../main/index.jsp");
		modelAndView.addObject("display","../choice/sectionView.jsp");
		modelAndView.addObject("choice",1);
		modelAndView.addObject("location",location);
		modelAndView.addObject("reviewlist", reviewlist);
		modelAndView.addObject("mainList",mainList);
		modelAndView.addObject("menu_sideList",menu_sideList);
		modelAndView.addObject("sideList",sideList);
		modelAndView.addObject("seq",seq);
		modelAndView.addObject("requestDTO",requestDTO);
		modelAndView.addObject("starPoint",starPoint);
		modelAndView.addObject("totalA",totalA);
		modelAndView.addObject("length",length);
		return modelAndView;
	}
	
	
	@RequestMapping(value="choice/payment.do")
	public ModelAndView payment(HttpServletRequest request) {
		try {
			request.setCharacterEncoding("utf-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		
		String location = request.getParameter("hidden_location");
		String seq = request.getParameter("hidden_seq");
		String[] order_menu = request.getParameterValues("input_order_menu");
		String[] order_price = request.getParameterValues("input_order_price");
		String[] order_count = request.getParameterValues("input_order_count");
		RequestDTO requestDTO = requestService.ownerView(seq);
		int total_price=0;
		int length = order_count.length;
		System.out.println("order_count.length = "+order_count.length);
		
		for (int i = 0; i < order_count.length; i++) {
			total_price = total_price +  Integer.parseInt(order_price[i]); 
		}
		
		//배열 정보하고 길이 넘겨줌
		
		//추가로 id는 나중에 ㄱㄱㄱㄱㄱㄱ 그리고 배달료는 seq로 사장정보 불러와서 할거라 나중에 ㄱㄱ
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("order_menu",order_menu);
		modelAndView.addObject("order_price",order_price);
		modelAndView.addObject("order_count",order_count);
		modelAndView.addObject("length",length);
		modelAndView.addObject("location",location);
		modelAndView.addObject("seq",seq);
		modelAndView.addObject("total_price",total_price);
		modelAndView.addObject("requestDTO",requestDTO);
		modelAndView.addObject("display","../choice/payment.jsp");
		modelAndView.setViewName("../main/index.jsp");
		return modelAndView;
	}
	
	
	//	이부분 전체 나중에 seq로 사장정보 부르고 사용자 id 불러와서 저장이 되게 한다. ==>근대 id 없어도 주문 되니 id를 not null 제거?
	@RequestMapping(value="choice/paymentResult.do")
	public ModelAndView paymentResult(HttpServletRequest request) {
		try {
			request.setCharacterEncoding("utf-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
			
		String first_address = request.getParameter("first_address");
		String second_address = request.getParameter("second_address");
		String phone = request.getParameter("phoneNumber");
		String wish = request.getParameter("wish");
		String seq = request.getParameter("seq");
		String id = request.getParameter("id");
		int total_price = Integer.parseInt(request.getParameter("total_price"));  
		
		String[] order_menu = request.getParameterValues("input_order_menu");
		String[] order_price = request.getParameterValues("input_order_price");
		String[] order_count = request.getParameterValues("input_order_count");
		
		String food = "";
		//토탈 가격은 나중에 한번에 보내는 걸로 하자
		
		for (int i = 0; i < order_count.length; i++) {
			OrderlistDTO orderlistDTO = new OrderlistDTO();
			orderlistDTO.setFood(order_menu[i]);
			orderlistDTO.setFoodPrice(Integer.parseInt(order_price[i]));
			orderlistDTO.setFoodQty(Integer.parseInt(order_count[i]));
			orderlistDTO.setCeo_seq(seq);
			orderlistDTO.setDelivery_region(first_address+" "+second_address);
			orderlistDTO.setId(id);
			orderlistService.orderlistWrite(orderlistDTO);
			food = food + order_menu[i] + ":" +Integer.parseInt(order_count[i]) +"개  ";
		}
		
		Owner_orderlistDTO owner_orderlistDTO = new Owner_orderlistDTO();
		owner_orderlistDTO.setId(id);
		owner_orderlistDTO.setPhone(phone);
		owner_orderlistDTO.setCeo_seq(seq);
		owner_orderlistDTO.setFood(food);
		owner_orderlistDTO.setTotal_price(total_price);
		owner_orderlistDTO.setDelivery_region(first_address+" "+second_address);
		owner_orderlistDTO.setWish(wish);
		owner_orderlistDTO.setReview(1);
		owner_orderlistDTO.setDelivery_count(1);
		owner_orderlistDTO.setOwner_check("n");
		
		owner_orderlistService.owner_orderlistWrite(owner_orderlistDTO);
		ArrayList<Owner_orderlistDTO> real_list = new ArrayList<>();
		
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("real_list",real_list);
		modelAndView.addObject("total_price",total_price);
		modelAndView.addObject("display","../choice/paymentResult.jsp");
		modelAndView.setViewName("../main/index.jsp");
		return modelAndView;
	}

	
	//리뷰 리스트
	@RequestMapping(value="choice/reviewlist.do")
	public ModelAndView reviewlist(HttpServletRequest request) {
		System.out.println("reviewlist.jsp가는중");
		String seq = request.getParameter("seq");
		
		ArrayList<ReviewDTO> reviewlist = reviewService.reviewBoardList(seq);
		int totalA = reviewService.getTotalA();
		int starPoint = reviewService.starPoint();
		
		for (ReviewDTO reviewDTO : reviewlist) {
			System.out.println(reviewDTO.getImage());
		}
		
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("reviewlist", reviewlist);
		modelAndView.addObject("totalA", totalA);
		modelAndView.addObject("starPoint", starPoint);
		modelAndView.addObject("display","../choice/reviewlist.jsp");
		modelAndView.setViewName("../choice/reviewlist.jsp");
		return modelAndView;
	}
	
	//리뷰 작성 폼
	@RequestMapping(value="choice/reviewWriteForm.do")
	public ModelAndView reviewWriteForm(HttpServletRequest request) {
		HttpSession session = request.getSession();
		String id = (String)session.getAttribute("memId");
		String nickname = (String)session.getAttribute("memName");
		String logtime = "";
		String ceo_seq = "";
		String ceo_seq2 = "";
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
			ceo_seq2 = owner_orderlistDTO.getCeo_seq();
			ch_owner_orderlistDTO.setCeo_seq(requestDTO.getRestaurant_name());
			ch_owner_orderlistDTO.setFood(owner_orderlistDTO.getFood());
			ch_owner_orderlistDTO.setTotal_price(owner_orderlistDTO.getTotal_price());
			ch_owner_orderlistDTO.setLogtime(owner_orderlistDTO.getLogtime());
			real_list.add(ch_owner_orderlistDTO);
			logtime = owner_orderlistDTO.getLogtime();
			ceo_seq = requestDTO.getRestaurant_name();
			food = owner_orderlistDTO.getFood();
		}
		
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("ceo_seq", ceo_seq);
		modelAndView.addObject("ceo_seq2", ceo_seq2);
		modelAndView.addObject("logtime", logtime);
		modelAndView.addObject("food", food);
		modelAndView.addObject("display", "../choice/reviewWriteForm.jsp");
		modelAndView.setViewName("../main/index.jsp");
		return modelAndView;
	}
	
	//리뷰 작성
	@RequestMapping(value="choice/reviewWrite.do", method=RequestMethod.POST)
	public ModelAndView reviewWrite(HttpServletRequest request, HttpServletResponse response, MultipartFile image, MultipartHttpServletRequest mtfRequest) {
		ReviewDTO reviewDTO = new ReviewDTO();
		String filePath = "E:\\java_web_4\\spring\\workspace\\00-jogiyo\\src\\main\\webapp\\image\\";

		MultipartFile file = mtfRequest.getFile("imageFile");
		String originFileName = file.getOriginalFilename(); // 원본 파일 명
		String saveFile = filePath + originFileName;
		String ceo_seq = request.getParameter("ceo_seq");
		String ceo_seq2 = request.getParameter("ceo_seq2");
		String ceoOK = request.getParameter("ceoOK");
		String content = request.getParameter("content");
		String starpoint = request.getParameter("starpoint");
		String orderlist = request.getParameter("food");
		
		logger.info("파일이름 : " + file.getOriginalFilename());
		logger.info("파일크기 : " + file.getSize());
		logger.info("파일컨텐트타입 : " + file.getContentType());
		
		try {
			file.transferTo(new File(saveFile));
			if(!file.isEmpty()) {
				System.out.println("file is not empty.");
			} else {
				System.out.println("file is empty.");
			}
		} catch (IllegalStateException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		HttpSession session = request.getSession();
		String id = (String) session.getAttribute("memId");
		String nickname = (String) session.getAttribute("memName");
		
		reviewDTO.setId(id);
		reviewDTO.setNickname(nickname);
		reviewDTO.setCeo_seq(ceo_seq2);
		reviewDTO.setContent(content);
		reviewDTO.setCeoOK(ceoOK);
		reviewDTO.setCeoContent("");
		reviewDTO.setStarpoint(starpoint);
		reviewDTO.setImage(originFileName);
		reviewDTO.setOrderlist(orderlist);
		
		System.out.println(id);
		System.out.println(nickname);
		System.out.println(ceo_seq);
		System.out.println(ceo_seq2);
		System.out.println(ceoOK);
		System.out.println(content);
		System.out.println(starpoint);
		System.out.println(orderlist);
		System.out.println(saveFile);
		
		int su = reviewService.reviewWrite(reviewDTO);
		System.out.println(su);
		
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("su", su);
		modelAndView.addObject("display", "../choice/reviewWrite.jsp");
		modelAndView.setViewName("../main/index.jsp");
		return modelAndView;
	}
	
}
