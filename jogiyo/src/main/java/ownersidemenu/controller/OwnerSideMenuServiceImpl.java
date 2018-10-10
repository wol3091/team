package ownersidemenu.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ownersidemenu.bean.OwnerSideMenuDTO;
import ownersidemenu.dao.OwnerSideMenuDAO;

@Service
public class OwnerSideMenuServiceImpl implements OwnerSideMenuService {
	
	@Autowired
	OwnerSideMenuDAO ownerSideMenuDAO;
	
	@Override
	public int ownerSideMenuInsert(OwnerSideMenuDTO ownerSideMenuDTO) {
		return ownerSideMenuDAO.ownerSideMenuInsert(ownerSideMenuDTO);
	}

	@Override
	public ArrayList<OwnerSideMenuDTO> ownerSideMenuList(String seq) {
		return (ArrayList<OwnerSideMenuDTO>) ownerSideMenuDAO.ownerSideMenuList(seq);
	}

	@Override
	public OwnerSideMenuDTO sidemenuOther(String menu, String seq) {
		return ownerSideMenuDAO.sidemenuOther(menu,seq);
	}

	@Override
	public OwnerSideMenuDTO sidemenuSoldout(String menu) {
		return ownerSideMenuDAO.sidemenuSoldout(menu);
	}

	@Override
	public int sidesoldoutUpdate(OwnerSideMenuDTO ownerSideMenuDTO) {
		return ownerSideMenuDAO.sidesoldoutUpdate(ownerSideMenuDTO);
	}

	@Override
	public int sidemenuDelete(String menu,String seq) {
		return ownerSideMenuDAO.sidemenuDelete(menu,seq);
	}
	
	
}
