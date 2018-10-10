package request.controller;


import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import request.bean.RequestDTO;
import request.dao.RequestDAO;

@Service
public class RequestServiceImpl implements RequestService{
	@Autowired
	private RequestDAO requestDAO;
	
	@Override
	public int write(RequestDTO requestDTO) {
		return requestDAO.write(requestDTO);
	}
	
	@Override
	public ArrayList<RequestDTO> adminAccept(String access1) {
		return (ArrayList<RequestDTO>) requestDAO.adminAccept(access1);
	}
	
	@Override
	public String certification(String license_num1, String license_num2, String license_num3, String business_phone1,
			String business_phone2, String business_phone3) {
		return requestDAO.certification(license_num1, license_num2, license_num3, business_phone1, business_phone2, business_phone3);
	}

	@Override
	public RequestDTO requestSelect(String seq) {
		return requestDAO.requestSelect(seq);
	}

	@Override
	public String getCategory(String seq) {
		return requestDAO.getCategory(seq);
	}

	@Override
	public int otherInfoUpdate(RequestDTO requestDTO) {
		return requestDAO.otherInfoUpdate(requestDTO);
	}

	@Override
	public int accessUpdate(RequestDTO requestDTO) {
		return requestDAO.accessUpdate(requestDTO);
	}

	@Override
	public RequestDTO adminAccept2(int preseq) {
		return requestDAO.adminAccept2(preseq);
	}

	@Override
	public int seqUpdate(RequestDTO requestDTO) {
		return requestDAO.seqUpdate(requestDTO);
	}

	@Override
	public ArrayList<RequestDTO> seqList(String access1, String seq) {
		return (ArrayList<RequestDTO>) requestDAO.seqList(access1, seq);
	}

	@Override
	public boolean isExistSeq(String seq) {
		return requestDAO.isExistSeq(seq);
	}

	@Override
	public int addressUpdate(RequestDTO requestDTO) {
		return requestDAO.addressUpdate(requestDTO);
	}

	@Override
    public int modify(RequestDTO RequestDTO) {
      return requestDAO.modify(RequestDTO);
    }
	
    @Override
    public int modify2(RequestDTO RequestDTO) {
      return requestDAO.modify2(RequestDTO);
    }

	@Override
	public int temp_closeUpdate(RequestDTO requestDTO) {
		return requestDAO.temp_closeUpdate(requestDTO);
	}

	@Override
	public ArrayList<RequestDTO> ownerList(String category_menu, String delivery_region) {
		return (ArrayList<RequestDTO>)requestDAO.ownerList(category_menu,delivery_region);
	}

	@Override
	public RequestDTO ownerView(String seq) {
		return requestDAO.ownerView(seq);
	}
	

//	10_8
	@Override
	public ArrayList<RequestDTO> ownerListByStar(String category_menu, String delivery_region) {
		return (ArrayList<RequestDTO>)requestDAO.ownerListByStar(category_menu,delivery_region);
	}

	@Override
	public ArrayList<RequestDTO> ownerListByPrice(String category_menu, String delivery_region) {
		return (ArrayList<RequestDTO>)requestDAO.ownerListByPrice(category_menu,delivery_region);
	}

	@Override
	public ArrayList<RequestDTO> ownerListByRiview(String category_menu, String delivery_region) {
		return (ArrayList<RequestDTO>)requestDAO.ownerListByRiview(category_menu,delivery_region);
	}

	@Override
	public String searchId(String business_phone1, String business_phone2, String business_phone3) {
		return requestDAO.searchId(business_phone1, business_phone2, business_phone3);
	}
	

}
