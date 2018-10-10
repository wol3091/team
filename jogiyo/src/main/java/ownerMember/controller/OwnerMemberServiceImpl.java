package ownerMember.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ownerMember.bean.OwnerMemberDTO;
import ownerMember.dao.OwnerMemberDAO;
import request.bean.RequestDTO;

@Service
public class OwnerMemberServiceImpl implements OwnerMemberService {
	
	@Autowired
	private OwnerMemberDAO ownerMemberDAO;

	@Override
	public int ownerMemberWrite(OwnerMemberDTO ownerMemberDTO) {
		return ownerMemberDAO.ownerMemberWrite(ownerMemberDTO);
	}

	@Override
	public int ownerMemberPasswordModify(OwnerMemberDTO ownerMemberDTO) {
		return ownerMemberDAO.ownerMemberPasswordModify(ownerMemberDTO);
	}
	
	@Override
	public int ownerMemberEmailModify(OwnerMemberDTO ownerMemberDTO) {
		return ownerMemberDAO.ownerMemberEmailModify(ownerMemberDTO);
	}
	
	@Override
	public String ownerMemberLogin(String ownerId, String ownerPwd) {
		return ownerMemberDAO.ownerMemberLogin(ownerId, ownerPwd);
	}

	@Override
	public boolean ownerMemberIsExistId(String ownerId) {
		return ownerMemberDAO.ownerMemberIsExistId(ownerId);
	}



	@Override
	public OwnerMemberDTO changePw(String ownerId) {
		return ownerMemberDAO.changePw(ownerId);
	}

	@Override
	public String searchPw(String ownerId, String ownerPwd) {
		return ownerMemberDAO.searchPw(ownerId, ownerPwd);
	}

	@Override
	public String searchSeq(String ownerId) {
		return ownerMemberDAO.searchSeq(ownerId);
	}

	@Override
	public String emailSearch(String ownerId) {
		return ownerMemberDAO.emailSearch(ownerId);
	}

	@Override
	public String getOwnerPwd(String ownerEmail1) {
		return ownerMemberDAO.getOwnerPwd(ownerEmail1);
	}

	@Override
	public String seqId(String seq) {
		return ownerMemberDAO.seqId(seq);
	}

	

	
	
}
