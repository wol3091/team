package ownermenu.controller;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.UnsupportedEncodingException;

import java.net.URLDecoder;
import java.util.ArrayList;


import javax.servlet.http.HttpServletRequest;



import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import ownermenu.bean.OwnerMenuDTO;
import ownersidemenu.bean.OwnerSideMenuDTO;
import ownersidemenu.controller.OwnerSideMenuService;
import request.bean.RequestDTO;
import request.controller.RequestService;

@Controller
public class OwnerMenuController {
	
	@Autowired
	private OwnerMenuService ownermenuService;
	
	@Autowired
	private RequestService requestService;
	
	@Autowired
	private OwnerSideMenuService ownersidemenuService;

	
	
	@RequestMapping(value="/owner/menumanagement/menu_add.do")
	public ModelAndView ownerMenuAdd(HttpServletRequest request) {
		String seq = request.getParameter("seq");
		ArrayList<OwnerMenuDTO> list = ownermenuService.ownerMainMenuList(seq);
		RequestDTO requestDTO = requestService.requestSelect(seq);
	    ArrayList<OwnerSideMenuDTO> list1 = ownersidemenuService.ownerSideMenuList(seq);
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("list",list);
	    modelAndView.addObject("requestDTO", requestDTO);
	    modelAndView.addObject("list1", list1);
		modelAndView.addObject("seq",seq);
		modelAndView.addObject("detail","../../owner/menumanagement/menu_add.jsp");
		modelAndView.addObject("display","../../owner/menumanagement/menumanaging2.jsp");
		modelAndView.setViewName("../../owner/ownermain/ownermain.jsp");	
		return modelAndView;
	}
	
	@RequestMapping(value="/owner/menumanagement/menu_addResult.do")
	public ModelAndView ownerMenuAddResult(HttpServletRequest request,MultipartFile image) {
		String filePath = 
				"C:\\Users\\Owner\\Downloads\\프로젝트\\workspace\\00-jogiyo\\src\\main\\webapp\\imgName\\";
			String fileName = image.getOriginalFilename();
			
			File file = new File(filePath, fileName);
			
			try {
				// getInputStream() : 업로드한 파일 데이터를 읽어오는 InputStream을 구한다.
				FileCopyUtils.copy(image.getInputStream(), new FileOutputStream(file));
			} catch (FileNotFoundException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}
		
		String seq = request.getParameter("seq");
		System.out.println("seq : " + seq);
		String menu_group = request.getParameter("menu_group");
		System.out.println("menu_group : " + menu_group);
		String menu = request.getParameter("menu");
		System.out.println("menu : " + menu);
		
		String menu_explain = request.getParameter("menu_explain");
		System.out.println("menu_explain : " + menu_explain);
		int price = Integer.parseInt(request.getParameter("price"));
		System.out.println("price : " + price);
		String soldout = request.getParameter("soldout");
		ArrayList<OwnerMenuDTO> list = ownermenuService.ownerMainMenuList(seq);
		RequestDTO requestDTO = requestService.requestSelect(seq);
	    ArrayList<OwnerSideMenuDTO> list1 = ownersidemenuService.ownerSideMenuList(seq);
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("seq",seq);
		int su = 0;
		System.out.println(fileName);
		if(menu_group.equals("메인")) {
			OwnerMenuDTO ownerMenuDTO  = new OwnerMenuDTO();
			
			ownerMenuDTO.setSeq(seq);
			ownerMenuDTO.setMenu_group(menu_group);
			ownerMenuDTO.setMenu_explain(menu_explain);
			ownerMenuDTO.setMenu(menu);
			ownerMenuDTO.setPrice(price);
			ownerMenuDTO.setImgName(fileName);
			ownerMenuDTO.setSoldout(soldout);
			modelAndView.addObject("ownerMenuDTO",ownerMenuDTO);
			su = ownermenuService.ownerMenuInsert(ownerMenuDTO);
		} 
		if (menu_group.equals("사이드")){
			OwnerSideMenuDTO ownerSideMenuDTO = new OwnerSideMenuDTO();
			ownerSideMenuDTO.setSeq(seq);
			ownerSideMenuDTO.setMenu_group(menu_group);
			ownerSideMenuDTO.setMenu(menu);
			ownerSideMenuDTO.setMenu_explain(menu_explain);
			ownerSideMenuDTO.setPrice(price);
			ownerSideMenuDTO.setImgName(fileName);
			ownerSideMenuDTO.setSoldout(soldout);
			modelAndView.addObject("ownerSideMenuDTO",ownerSideMenuDTO);
			su = ownersidemenuService.ownerSideMenuInsert(ownerSideMenuDTO);
		}
		modelAndView.addObject("list",list);
	    modelAndView.addObject("requestDTO", requestDTO);
	    modelAndView.addObject("list1", list1);
		modelAndView.addObject("su",su);
		modelAndView.addObject("seq",seq);
		modelAndView.addObject("detail","../../owner/menumanagement/menu_addResult.jsp");
		modelAndView.addObject("display","../../owner/menumanagement/menumanaging2.jsp");
		modelAndView.setViewName("../../owner/ownermain/ownermain.jsp");	
		return modelAndView;
	}
	
	@RequestMapping(value="/owner/menumanagement/menu_detail.do")
	public ModelAndView ownerMenuDetail(HttpServletRequest request) throws UnsupportedEncodingException {
		try {
			request.setCharacterEncoding("UTF-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		
		String seq = request.getParameter("seq");
		System.out.println(seq);
		String menu = request.getParameter("menu");
		menu = URLDecoder.decode(menu, "UTF-8");
		System.out.println(menu);
		String menu_group = request.getParameter("menu_group");	
		
		System.out.println(menu);
		menu_group = URLDecoder.decode(menu_group, "UTF-8");
		System.out.println(menu_group);
		
		String soldout = request.getParameter("soldout");
		ArrayList<OwnerMenuDTO> list = ownermenuService.ownerMainMenuList(seq);
		RequestDTO requestDTO = requestService.requestSelect(seq);
	    ArrayList<OwnerSideMenuDTO> list1 = ownersidemenuService.ownerSideMenuList(seq);
	    ArrayList<OwnerMenuDTO> list2 = ownermenuService.ownerMainMenuList(seq);
	    ArrayList<OwnerMenuDTO> list3 = ownermenuService.addMenu(menu,seq);
	    ModelAndView modelAndView = new ModelAndView();
	    
	    if(menu_group.equals("메인")) {
	    	OwnerMenuDTO ownerMenuDTO = ownermenuService.menuOther(menu);
	    	modelAndView.addObject("ownerMenuDTO",ownerMenuDTO);
	    } 
	    if(menu_group.equals("사이드")){
	    	OwnerSideMenuDTO ownerSideMenuDTO = ownersidemenuService.sidemenuOther(menu,seq);
	    	modelAndView.addObject("ownerSideMenuDTO",ownerSideMenuDTO);
	    }
	    
		modelAndView.addObject("seq", seq);
		modelAndView.addObject("list",list);
		modelAndView.addObject("list1",list1);
		modelAndView.addObject("list2",list2);
		modelAndView.addObject("list3",list3);
		modelAndView.addObject("menu",menu);
		modelAndView.addObject("menu_group",menu_group);
	    modelAndView.addObject("requestDTO", requestDTO);
	    modelAndView.addObject("soldout",soldout);
		modelAndView.addObject("detail","../../owner/menumanagement/menu_detail.jsp");
		modelAndView.addObject("display","../../owner/menumanagement/menumanaging2.jsp");
		modelAndView.setViewName("../../owner/ownermain/ownermain.jsp");	
		return modelAndView;
	}
	
	 @RequestMapping(value="/owner/menumanagement/soldoutButton.do")
	 public ModelAndView soldoutButton(HttpServletRequest request){
		 try {
				request.setCharacterEncoding("UTF-8");
			} catch (UnsupportedEncodingException e) {
				e.printStackTrace();
		}
		 
		 String seq = request.getParameter("seq");
		 System.out.println(seq);
		 String menu = request.getParameter("menu");
		 System.out.println(menu);
		 String menu_group = request.getParameter("menu_group");
		 System.out.println(menu_group);
		 String soldout = request.getParameter("soldout");
		 System.out.println(soldout);
		 int su = 0;
		 
		 if(menu_group.equals("메인")) {
			OwnerMenuDTO ownerMenuDTO = new OwnerMenuDTO();
		 	ownerMenuDTO.setMenu(menu);
			if(soldout.equals("n")) {
				 soldout = "y";
				 ownerMenuDTO.setSoldout(soldout);
		    } else {
		    	soldout = "n";
			   ownerMenuDTO.setSoldout(soldout);	 
		    }
			su = ownermenuService.soldoutUpdate(ownerMenuDTO);
			
		 } else {
			OwnerSideMenuDTO ownerSideMenuDTO = new OwnerSideMenuDTO();
			ownerSideMenuDTO.setMenu(menu);
			if(soldout.equals("n")) {
				soldout = "y";
				ownerSideMenuDTO.setSoldout(soldout);
			} else {
				soldout = "n";
			    ownerSideMenuDTO.setSoldout(soldout);	 
			}
			su = ownersidemenuService.sidesoldoutUpdate(ownerSideMenuDTO);
		 }
		 
		 
		 ModelAndView modelAndView = new ModelAndView();
		 modelAndView.addObject("seq",seq);
		 modelAndView.addObject("menu",menu);
		 modelAndView.addObject("menu_group",menu_group);
		 modelAndView.addObject("su",su);
		 modelAndView.addObject("soldout",soldout);
		 modelAndView.addObject("detail","../../owner/menumanagement/soldoutButton.jsp");
		 modelAndView.addObject("display","../../owner/menumanagement/menumanaging2.jsp");
		 modelAndView.setViewName("../../owner/ownermain/ownermain.jsp");	
		 return modelAndView;
	 }
	
	 @RequestMapping(value="/owner/menumanagement/soldoutResult.do")
	 public ModelAndView soldoutResult(HttpServletRequest request) {
		String menu = request.getParameter("menu");
		System.out.println(menu);
		String menu_group = request.getParameter("menu_group");
		System.out.println(menu_group);
		String soldout = request.getParameter("soldout");
		System.out.println(soldout);
		
		int su = 0;
		if(menu_group.equals("메인")) {
			OwnerMenuDTO ownerMenuDTO = new OwnerMenuDTO();
			ownerMenuDTO.setMenu(menu);
			if(soldout.equals("n")) {
				soldout = "y";
				ownerMenuDTO.setSoldout(soldout);
			} else {
				soldout = "n";
				ownerMenuDTO.setSoldout(soldout);
			}
			
			su = ownermenuService.soldoutUpdate(ownerMenuDTO);
			
		} 
		if(menu_group.equals("사이드")){
			OwnerSideMenuDTO ownerSideMenuDTO = new OwnerSideMenuDTO();
			ownerSideMenuDTO.setMenu(menu);
			if(soldout.equals("n")) {
				soldout = "y";
				ownerSideMenuDTO.setSoldout(soldout);
			} else {
				soldout = "n";
				ownerSideMenuDTO.setSoldout(soldout);
			}
			su = ownersidemenuService.sidesoldoutUpdate(ownerSideMenuDTO);
		}
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("su",su);
		modelAndView.addObject("soldout",soldout);
		modelAndView.addObject("display","../../owner/menumanagement/soldoutResult.jsp");
		modelAndView.setViewName("../../owner/ownermain/ownermain.jsp");	     
		return modelAndView;
	 }
	 
	 @RequestMapping(value="/owner/menumanagement/menuaddmenu.do")
	 public ModelAndView menuaddmenu(HttpServletRequest request) {
		 try {
				request.setCharacterEncoding("UTF-8");
			} catch (UnsupportedEncodingException e) {
				e.printStackTrace();
		}
		 String seq = request.getParameter("seq");
		 System.out.println("seq = " + seq);
		 String menu = request.getParameter("menu");
		 System.out.println("menu = " + menu);
		 String menu_explain = request.getParameter("menu_explain");
		 System.out.println("menu_explain = " +menu_explain);
		 String menu_group = request.getParameter("menu_group");
		 System.out.println("menu_group = " + menu_group);
		 int price = Integer.parseInt(request.getParameter("price"));
		 String imgName = request.getParameter("imgName");
		 System.out.println("imgName = " + imgName);
		 System.out.println("price = " + price);
		 String soldout = request.getParameter("soldout");
		 System.out.println("soldout = " + soldout);
		 String[] addmenu = request.getParameterValues("input_addmenu"); 
		 String[] addmenu_price = request.getParameterValues("input_addmenu_price");
		 System.out.println(addmenu.length);
		 int sum = 0;
		 int ex;
		 
		 for (int j = 0; j < addmenu.length; j++) {
			 String addmenu1 = addmenu[j];
			 System.out.println("addmenu1 = " + addmenu1);
			 String addmenu_price1 = addmenu_price[j];
			 System.out.println("addmenu_price1 = " + addmenu_price1);
		 }
		 
		 for (int i = 1; i < addmenu.length; i++) {
			 
			 OwnerMenuDTO ownermenuDTO = new OwnerMenuDTO();
			 ownermenuDTO.setSeq(seq);
			 ownermenuDTO.setMenu_explain(menu_explain);
			 ownermenuDTO.setMenu_group(menu_group);
			 ownermenuDTO.setMenu(menu);
			 ownermenuDTO.setPrice(price);
			 ownermenuDTO.setImgName(imgName);
			 ownermenuDTO.setAddmenu(addmenu[i]);
			 ownermenuDTO.setAddmenu_price(Integer.parseInt(addmenu_price[i])); 
			 ownermenuDTO.setSoldout(soldout);
			 ex = ownermenuService.ownerMenuAllInsert(ownermenuDTO);
			 sum = sum  + ex;
			 
		 }
		 int su = addmenu.length-1;
		 
		 ModelAndView modelAndView = new ModelAndView();
		 modelAndView.addObject("sum",sum);
		 modelAndView.addObject("su", su);
		 modelAndView.addObject("menu_group",menu_group);
		 modelAndView.addObject("menu",menu);
		 modelAndView.addObject("seq",seq);
		 modelAndView.addObject("soldout",soldout);
		 modelAndView.addObject("detail","../../owner/menumanagement/menuaddmenu.jsp");
		 modelAndView.addObject("display","../../owner/menumanagement/menumanaging2.jsp");
		 modelAndView.setViewName("../../owner/ownermain/ownermain.jsp");	
		return modelAndView;	
	 }
	 
	 @RequestMapping(value="/owner/menumanagement/sidemenuDelete.do")
	 public ModelAndView sidemenuDelete(HttpServletRequest request) {
		 
		 String seq = request.getParameter("seq");
		 System.out.println(seq);
		 String soldout = request.getParameter("soldout");
		 System.out.println(soldout);
		 String menu = request.getParameter("menu");
		 System.out.println(menu);
		 String menu_group = request.getParameter("menu_group");
		 System.out.println(menu_group);
		 int su = ownersidemenuService.sidemenuDelete(menu,seq);
		 
		 ModelAndView modelAndView = new ModelAndView();
		 modelAndView.addObject("seq",seq);
		 modelAndView.addObject("menu",menu);
		 modelAndView.addObject("menu_group",menu_group);
		 modelAndView.addObject("su",su);
		 modelAndView.addObject("soldout",soldout);
		 modelAndView.addObject("detail","../../owner/menumanagement/sidemenuDelete.jsp");
		 modelAndView.addObject("display","../../owner/menumanagement/menumanaging2.jsp");
		 modelAndView.setViewName("../../owner/ownermain/ownermain.jsp");	
		 return modelAndView;
		 
	 }
}

