package ownermenu.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import ownermenu.bean.OwnerMenuDTO;

@Repository
public class OwnerMenuDAO {
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public int ownerMenuInsert(OwnerMenuDTO ownerMenuDTO) {
		return sqlSession.insert("mybatis.ownerMenuMapper.ownerMenuInsert",ownerMenuDTO);
	}
	public int ownerMenuAllInsert(OwnerMenuDTO ownerMenuDTO) {
		return sqlSession.insert("mybatis.ownerMenuMapper.ownerMenuAllInsert",ownerMenuDTO);
	}
	
	
	public OwnerMenuDTO menuOther(String menu) {
		return sqlSession.selectOne("mybatis.ownerMenuMapper.menuOther",menu);
	}
	
	public OwnerMenuDTO menuSoldout(String menu) {
		return sqlSession.selectOne("mybatis.ownerMenuMapper.menuSoldout",menu);
	}
	
	
	
	public int soldoutUpdate(OwnerMenuDTO ownerMenuDTO) {
		return sqlSession.update("mybatis.ownerMenuMapper.soldoutUpdate",ownerMenuDTO);
	}
	
	public List<OwnerMenuDTO> addMenu(String menu, String seq) {
		Map<String, String> map = new HashMap<String, String>();
		map.put("menu", menu);
		map.put("seq", seq);
		return sqlSession.selectList("mybatis.ownerMenuMapper.addMenu", map);
	}
	
	
	public List<OwnerMenuDTO> ownerMainMenuList(String seq) {
		return sqlSession.selectList("mybatis.ownerMenuMapper.ownerMainMenuList",seq);
	}
	
	//이걸 왜 ownerMenuDTO로? 우선 seq로 바꿈
	public List<OwnerMenuDTO> ownerAllMenuList(String seq) {
		return sqlSession.selectList("mybatis.ownerMenuMapper.ownerAllMenuList", seq);
	}
	
	
	
}
