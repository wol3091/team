package owner_orderlist.controller;

import java.util.ArrayList;


import owner_orderlist.bean.Owner_orderlistDTO;


public interface Owner_orderlistService {
	
	public ArrayList<Owner_orderlistDTO> owner_orderlist(String ceo_seq);
	
	public Owner_orderlistDTO owner_orderView(int seq);
	
	public int owner_orderlistWrite(Owner_orderlistDTO owner_orderlistDTO);
	
	public int owner_checkUpdate(Owner_orderlistDTO owner_orderlistDTO);
	
	public ArrayList<Owner_orderlistDTO> owner_order_id_view(String id);
	
}
