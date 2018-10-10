package request.controller;

import java.util.ArrayList;
import java.util.List;

import request.bean.RequestDTO;

public interface RequestService {
	public int write(RequestDTO requestDTO);
	
	public ArrayList<RequestDTO> adminAccept(String access1);
	
	public String certification(String license_num1, String license_num2, String license_num3, String business_phone1, String business_phone2, String business_phone3);
	
	public RequestDTO requestSelect(String seq);
	
	public String getCategory(String seq);
	
	public int otherInfoUpdate(RequestDTO requestDTO);
	
	public int accessUpdate(RequestDTO requestDTO);
	
	public RequestDTO adminAccept2(int preseq);
	
	public int seqUpdate(RequestDTO requestDTO);
	
	public ArrayList<RequestDTO> seqList(String access1, String seq);
	
	public boolean isExistSeq(String seq);
	
	public int addressUpdate(RequestDTO requestDTO);
	
	public int modify(RequestDTO RequestDTO);
	   
	public int modify2(RequestDTO RequestDTO);
	
	public int temp_closeUpdate(RequestDTO requestDTO);
	
	public String searchId(String business_phone1, String business_phone2, String business_phone3);
	
	//추가
	ArrayList<RequestDTO> ownerList(String category_menu,String delivery_region);
	RequestDTO ownerView(String seq);
	

//	10_8
	ArrayList<RequestDTO> ownerListByStar(String category_menu,String delivery_region);
	ArrayList<RequestDTO> ownerListByPrice(String category_menu,String delivery_region);
	ArrayList<RequestDTO> ownerListByRiview(String category_menu,String delivery_region);
}
