package admin.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import admin.dao.AdminDAO;

@Service
public class AdminServiceImpl implements AdminService {
	
	@Autowired
	private AdminDAO adminDAO;
	
	@Override
	public String adminLogin(String admin_id, String admin_pwd) {
		
		return adminDAO.adminLogin(admin_id, admin_pwd);
	}

}
