package orderlist.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import orderlist.bean.OrderlistDTO;

@Repository
public class OrderlistDAO {
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public int orderlistWrite(OrderlistDTO orderlistDTO) {
		return sqlSession.insert("mybatis.orderlistMapper.orderlistInsert",orderlistDTO) ;
	}
	
	

}
