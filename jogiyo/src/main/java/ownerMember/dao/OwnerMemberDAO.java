package ownerMember.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import ownerMember.bean.OwnerMemberDTO;
import request.bean.RequestDTO;



@Repository
public class OwnerMemberDAO {
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public int ownerMemberWrite(OwnerMemberDTO ownerMemberDTO) {
		return sqlSession.insert("mybatis.ownermember.ownermemberInsert", ownerMemberDTO);
	}

	public int ownerMemberPasswordModify(OwnerMemberDTO ownerMemberDTO) {
		return sqlSession.update("mybatis.ownermember.ownermemberPasswordModify", ownerMemberDTO);
	}
	
	public int ownerMemberEmailModify(OwnerMemberDTO ownerMemberDTO) {
		return sqlSession.update("mybatis.ownermember.ownermemberEmailModify", ownerMemberDTO);
	}

	public String ownerMemberLogin(String ownerId, String ownerPwd) {
		Map<String, String> map = new HashMap<String, String>();
		map.put("ownerId", ownerId);
		map.put("ownerPwd", ownerPwd);
		return sqlSession.selectOne("mybatis.ownermember.ownermemberLogin", map);
	}

	public boolean ownerMemberIsExistId(String id) {
		boolean exist = false;
		if(sqlSession.selectOne("mybatis.ownermember.isExistId", id) != null) {
			exist = true;
		}
		return exist;
	}
	public String searchPw(String ownerId, String ownerPwd) {
		Map<String, String> map = new HashMap<String, String>();
		map.put("ownerId", ownerId);
		map.put("ownerPwd", ownerPwd);
		return sqlSession.selectOne("mybatis.ownermember.ownermemberLogin", map);
	}
	
	public OwnerMemberDTO changePw(String ownerId) {
		return sqlSession.selectOne("mybatis.ownermember.changePw", ownerId);
	}
	
	public String searchSeq(String ownerId) {
		return sqlSession.selectOne("mybatis.ownermember.searchSeq",ownerId);
	} 
	
	public String emailSearch(String ownerId) {
		return sqlSession.selectOne("mybatis.ownermember.emailSearch",ownerId);
	}
	
	public String getOwnerPwd(String ownerEmail1) {
		return sqlSession.selectOne("mybatis.ownermember.getOwnerPwd",ownerEmail1);
	}
	
	public String seqId(String seq) {
		return sqlSession.selectOne("mybatis.ownermember.seqId",seq);
	}
}
