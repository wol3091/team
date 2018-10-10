package ownermenu.controller;

import java.util.ArrayList;
import java.util.List;

import ownermenu.bean.OwnerMenuDTO;

public interface OwnerMenuService {
	
	public int ownerMenuInsert(OwnerMenuDTO ownerMenuDTO);
	
	public int ownerMenuAllInsert(OwnerMenuDTO ownerMenuDTO);
	
	public ArrayList<OwnerMenuDTO> ownerMainMenuList(String seq);
	
	public ArrayList<OwnerMenuDTO> ownerAllMenuList(String seq);
	
	public OwnerMenuDTO menuOther(String menu);
	
	/*public OwnerMenuDTO menuSoldout(String menu);*/
	
	public int soldoutUpdate(OwnerMenuDTO ownerMenuDTO);
	
	public ArrayList<OwnerMenuDTO> addMenu(String menu,String seq);
}
