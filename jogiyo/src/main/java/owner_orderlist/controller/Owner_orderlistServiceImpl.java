package owner_orderlist.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import owner_orderlist.bean.Owner_orderlistDTO;
import owner_orderlist.dao.Owner_orderlistDAO;

@Service
public class Owner_orderlistServiceImpl implements Owner_orderlistService{
	@Autowired
	private Owner_orderlistDAO owner_orderlistDAO;

	
	@Override
	public int owner_orderlistWrite(Owner_orderlistDTO owner_orderlistDTO) {
		return owner_orderlistDAO.owner_orderlistWrite(owner_orderlistDTO);
	}


	@Override
	public ArrayList<Owner_orderlistDTO> owner_orderlist(String ceo_seq) {
		return (ArrayList<Owner_orderlistDTO>) owner_orderlistDAO.owner_orderlist(ceo_seq);
	}

	@Override
	public Owner_orderlistDTO owner_orderView(int seq) {
		return owner_orderlistDAO.owner_orderView(seq);
	}



	@Override
	public int owner_checkUpdate(Owner_orderlistDTO owner_orderlistDTO) {
		return owner_orderlistDAO.owner_checkUpdate(owner_orderlistDTO);
	}
	
	@Override
	public ArrayList<Owner_orderlistDTO> owner_order_id_view(String id) {
		return (ArrayList<Owner_orderlistDTO>) owner_orderlistDAO.owner_order_id_view(id);
	}



	
}
