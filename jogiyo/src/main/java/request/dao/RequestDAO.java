package request.dao;


import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import request.bean.RequestDTO;

@Repository
public class RequestDAO {
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public int write(RequestDTO requestDTO) {				
		return sqlSession.insert("mybatis.requestMapper.requestInsert", requestDTO);
	}	
	
	public String certification(String license_num1, String license_num2, String license_num3, String business_phone1, String business_phone2, String business_phone3) {
		Map<String, String> map = new HashMap<String, String>();
		map.put("license_num1", license_num1);
		map.put("license_num2", license_num2);
		map.put("license_num3", license_num3);
		map.put("business_phone1", business_phone1);
		map.put("business_phone2", business_phone2);
		map.put("business_phone3", business_phone3);
		
		return sqlSession.selectOne("mybatis.requestMapper.certification", map);
	}
	
	public RequestDTO requestSelect(String seq) {
		return sqlSession.selectOne("mybatis.requestMapper.requestSelect", seq);
	}
	
	public String getCategory(String seq) {
		return sqlSession.selectOne("mybatis.requestMapper.getCategory",seq);
		
	}
	
	public int otherInfoUpdate(RequestDTO requestDTO) {
		return sqlSession.update("mybatis.requestMapper.otherInfoUpdate", requestDTO);
		
	}
	
	public int accessUpdate(RequestDTO requestDTO) {
		return sqlSession.update("mybatis.requestMapper.accessUpdate", requestDTO);
		
	}
	public List<RequestDTO> adminAccept(String access1) {
		return sqlSession.selectList("mybatis.requestMapper.adminAccept", access1);
	}
	
	
	public RequestDTO adminAccept2(int preseq) {
		return sqlSession.selectOne("mybatis.requestMapper.adminAccept2", preseq);
	}
	
	public int seqUpdate(RequestDTO requestDTO) {
		return sqlSession.update("mybatis.requestMapper.seqUpdate", requestDTO);
		
	}
	
	public List<RequestDTO> seqList(String access1, String seq) {
		Map<String, String> map = new HashMap<String, String>();
		map.put("access1", access1);
		map.put("seq", seq);
		return sqlSession.selectList("mybatis.requestMapper.seqList", map);
	}
	
	public boolean isExistSeq(String seq) {
		boolean exist = false;
		if(sqlSession.selectOne("mybatis.requestMapper.isExistSeq", seq) != null) {
			exist = true;
		}
		return exist;
	}
	
	public int addressUpdate(RequestDTO requestDTO) {
		return sqlSession.update("mybatis.requestMapper.addressUpdate", requestDTO);
	}
	
	public int modify(RequestDTO requestDTO) {
	      return sqlSession.update("mybatis.requestMapper.modify", requestDTO);
	}
	   
    public int modify2(RequestDTO requestDTO) {
      return sqlSession.update("mybatis.requestMapper.modify2", requestDTO);
    }
    
    public int temp_closeUpdate(RequestDTO requestDTO) {
    	return sqlSession.update("mybatis.requestMapper.temp_closeUpdate",requestDTO);
    }
    
    
    
    //추가한거
  //게시판 목록 조회
  	public List<RequestDTO> ownerList(String category_menu,String delivery_region) {
  		Map<String, String> map = new HashMap<String,String>();
  		map.put("category_menu", category_menu);
  		map.put("delivery_region", delivery_region);
  		return sqlSession.selectList("mybatis.requestMapper.ownerList", map);
  	}
  	
  	public RequestDTO ownerView(String seq) {
		return sqlSession.selectOne("mybatis.requestMapper.ownerView", seq);
	}
  	
  	 //10_8 sectionTest 정렬용
  	public List<RequestDTO> ownerListByStar(String category_menu,String delivery_region) {
  		Map<String, String> map = new HashMap<>();
  		map.put("category_menu", category_menu);
  		map.put("delivery_region", delivery_region);
  		return sqlSession.selectList("mybatis.requestMapper.ownerListByStar", map);
  	}
  	
  	public List<RequestDTO> ownerListByPrice(String category_menu,String delivery_region) {
  		Map<String, String> map = new HashMap<>();
  		map.put("category_menu", category_menu);
  		map.put("delivery_region", delivery_region);
  		return sqlSession.selectList("mybatis.requestMapper.ownerListByPrice", map);
  	}
  	
  	public List<RequestDTO> ownerListByRiview(String category_menu,String delivery_region) {
  		Map<String, String> map = new HashMap<>();
  		map.put("category_menu", category_menu);
  		map.put("delivery_region", delivery_region);
  		return sqlSession.selectList("mybatis.requestMapper.ownerListByRiview", map);
  	}
  	
  	public String searchId(String business_phone1, String business_phone2, String business_phone3) {
  		Map<String, String> map = new HashMap<String,String>();
  		map.put("business_phone1", business_phone1);
  		map.put("business_phone2", business_phone2);
  		map.put("business_phone3", business_phone3);
  		return sqlSession.selectOne("mybatis.requestMapper.searchId",map);
  	}
  	
}
