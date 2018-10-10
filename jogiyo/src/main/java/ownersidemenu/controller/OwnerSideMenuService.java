package ownersidemenu.controller;

import java.util.ArrayList;

import ownersidemenu.bean.OwnerSideMenuDTO;

public interface OwnerSideMenuService {
	
	public int ownerSideMenuInsert(OwnerSideMenuDTO ownerSideMenuDTO);
	
	public ArrayList<OwnerSideMenuDTO> ownerSideMenuList(String seq);
	
	public OwnerSideMenuDTO sidemenuOther(String menu, String seq);
	
	public OwnerSideMenuDTO sidemenuSoldout(String menu);
	
	public int sidesoldoutUpdate(OwnerSideMenuDTO ownerSideMenuDTO);
	
	public int sidemenuDelete(String menu,String seq);
}
