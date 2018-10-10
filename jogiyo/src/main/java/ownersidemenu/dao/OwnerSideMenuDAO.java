package ownersidemenu.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import ownermenu.bean.OwnerMenuDTO;
import ownersidemenu.bean.OwnerSideMenuDTO;

@Repository
public class OwnerSideMenuDAO {
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public int ownerSideMenuInsert(OwnerSideMenuDTO ownerSideMenuDTO) {
		return sqlSession.insert("mybatis.ownerSideMenuMapper.ownerSideMenuInsert",ownerSideMenuDTO);
	}
	
	
	
	public List<OwnerSideMenuDTO> ownerSideMenuList(String seq) {
		return sqlSession.selectList("mybatis.ownerSideMenuMapper.ownerSideMenuList",seq);
	}
	
	public OwnerSideMenuDTO sidemenuOther(String menu,String seq) {
		Map<String, String> map = new HashMap<String,String>();
		map.put("menu", menu);
		map.put("seq", seq);
		return sqlSession.selectOne("mybatis.ownerSideMenuMapper.sidemenuOther",map);
	}
	
	public OwnerSideMenuDTO sidemenuSoldout(String menu) {
		return sqlSession.selectOne("mybatis.ownerSideMenuMapper.sidemenuSoldout",menu);
	}
	
	public int sidesoldoutUpdate(OwnerSideMenuDTO ownerSideMenuDTO) {
		return sqlSession.update("mybatis.ownerSideMenuMapper.sidesoldoutUpdate",ownerSideMenuDTO);
	}
	
	public int sidemenuDelete(String menu,String seq) {
		Map<String, String> map = new HashMap<String,String>();
		map.put("menu", menu);
		map.put("seq", seq);
		return sqlSession.delete("mybatis.ownerSideMenuMapper.sidemenuDelete",map);
	}
	
}
