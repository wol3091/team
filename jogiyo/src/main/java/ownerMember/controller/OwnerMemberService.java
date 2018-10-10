package ownerMember.controller;


import ownerMember.bean.OwnerMemberDTO;

public interface OwnerMemberService {
	
	public int ownerMemberWrite(OwnerMemberDTO ownerMemberDTO);
	
	public int ownerMemberPasswordModify(OwnerMemberDTO ownerMemberDTO);
	
	public int ownerMemberEmailModify(OwnerMemberDTO ownerMemberDTO);
	
	public String ownerMemberLogin(String ownerId, String ownerPwd);
	
	public boolean ownerMemberIsExistId(String ownerId);
	
	public String searchPw(String ownerId, String ownerPwd);
	
	public OwnerMemberDTO changePw(String ownerId);
	
	public String searchSeq(String ownerId);
	
	public String emailSearch(String ownerId);
	
	public String getOwnerPwd(String ownerEmail1);
	
	public String seqId(String seq);
}
