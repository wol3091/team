package ownermenu.controller;


import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ownermenu.bean.OwnerMenuDTO;
import ownermenu.dao.OwnerMenuDAO;

@Service
public class OwnerMenuServiceImpl implements OwnerMenuService {

	@Autowired
	private OwnerMenuDAO ownerMenuDAO;
	
	@Override
	public int ownerMenuInsert(OwnerMenuDTO ownerMenuDTO) {
		return ownerMenuDAO.ownerMenuInsert(ownerMenuDTO);
	}
	
	@Override
	public int ownerMenuAllInsert(OwnerMenuDTO ownerMenuDTO) {
		return ownerMenuDAO.ownerMenuAllInsert(ownerMenuDTO);
	}

	
	
	@Override
	public ArrayList<OwnerMenuDTO> ownerMainMenuList(String seq) {
		return (ArrayList<OwnerMenuDTO>) ownerMenuDAO.ownerMainMenuList(seq);
	}

	

	@Override
	public ArrayList<OwnerMenuDTO> ownerAllMenuList(String seq) {
		return (ArrayList<OwnerMenuDTO>) ownerMenuDAO.ownerAllMenuList(seq);
	}


	@Override
	public OwnerMenuDTO menuOther(String menu) {
		return ownerMenuDAO.menuOther(menu);
	}

	/*@Override
	public OwnerMenuDTO menuSoldout(String menu) {
		return ownerMenuDAO.menuOther(menu);
	}
*/
	@Override
	public int soldoutUpdate(OwnerMenuDTO ownerMenuDTO) {
		return ownerMenuDAO.soldoutUpdate(ownerMenuDTO);
	}

	@Override
	public ArrayList<OwnerMenuDTO> addMenu(String menu,String seq) {
		return (ArrayList<OwnerMenuDTO>) ownerMenuDAO.addMenu(menu,seq);
	}



	
	
	
	



	

	
	
}
