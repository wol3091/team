package orderlist.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import orderlist.bean.OrderlistDTO;
import orderlist.dao.OrderlistDAO;

@Service
public class OrderlistServiceImpl implements OrderlistService {
	
	
	@Autowired
	private OrderlistDAO orderlistDAO;
	
	@Override
	public int orderlistWrite(OrderlistDTO orderlistDTO) {
		return orderlistDAO.orderlistWrite(orderlistDTO);

	}

}
