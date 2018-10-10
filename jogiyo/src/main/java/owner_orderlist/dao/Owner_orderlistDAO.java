package owner_orderlist.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


import owner_orderlist.bean.Owner_orderlistDTO;

@Repository
public class Owner_orderlistDAO {
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public List<Owner_orderlistDTO> owner_orderlist(String ceo_seq) {
		return sqlSession.selectList("mybatis.owner_orderlistMapper.owner_orderlist",ceo_seq);
	}

	public Owner_orderlistDTO owner_orderView(int seq) {
		return sqlSession.selectOne("mybatis.owner_orderlistMapper.owner_orderView",seq);
	}
	
	public int owner_orderlistWrite(Owner_orderlistDTO owner_orderlistDTO) {
		return sqlSession.insert("mybatis.owner_orderlistMapper.owner_orderlistInsert",owner_orderlistDTO) ;
	}
	
	public int owner_checkUpdate(Owner_orderlistDTO owner_orderlistDTO) {
		return sqlSession.update("mybatis.owner_orderlistMapper.owner_checkUpdate",owner_orderlistDTO);
	}
	
	public List<Owner_orderlistDTO> owner_order_id_view(String id) {
		return sqlSession.selectList("mybatis.owner_orderlistMapper.owner_order_id_view",id);
	}
	
}
