package member.dao;

import java.util.HashMap;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import member.bean.MemberDTO;

@Repository
public class MemberDAO {
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public int write(MemberDTO memberDTO) {
		return sqlSession.insert("mybatis.member.memberInsert", memberDTO);
	}
	
	public int modify(MemberDTO memberDTO) {
		return sqlSession.update("mybatis.member.memberModify", memberDTO);
	}
	
	public MemberDTO getMember(String id) {
		return sqlSession.selectOne("mybatis.member.memberGet", id);
	}
	
	public String login(String id, String pwd) {
		Map<String, String> map = new HashMap<>();
		map.put("id", id);
		map.put("pwd", pwd);
		return sqlSession.selectOne("mybatis.member.memberLogin", map);
	}
	
	public boolean isExistId(String id) {
		boolean exist = false;
		if(sqlSession.selectOne("mybatis.member.isExistId", id) != null) {
			exist = true;
		}
		return exist;
	}
	
	public String getPwd(String pwd) {
		return sqlSession.selectOne("mybatis.member.getPwd", pwd);
	}
}
