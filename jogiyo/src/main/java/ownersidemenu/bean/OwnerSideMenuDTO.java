package ownersidemenu.bean;

public class OwnerSideMenuDTO {
	
	private String seq;			 		// 어떤집 메뉴인지
	private String menu_group;   		// 메인메뉴인지 사이드메뉴인지
	private String menu_explain; 		// 음식 설명  
	private String menu; 				// 음식 이름
	private int price;				    // 음식 가격
	private String imgName;				// 음식 사진
	private String soldout;				// 품절여부(y/n)(1/0)
	
	public String getSeq() {
		return seq;
	}
	public void setSeq(String seq) {
		this.seq = seq;
	}
	public String getMenu_group() {
		return menu_group;
	}
	public void setMenu_group(String menu_group) {
		this.menu_group = menu_group;
	}
	public String getMenu_explain() {
		return menu_explain;
	}
	public void setMenu_explain(String menu_explain) {
		this.menu_explain = menu_explain;
	}
	public String getMenu() {
		return menu;
	}
	public void setMenu(String menu) {
		this.menu = menu;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getImgName() {
		return imgName;
	}
	public void setImgName(String imgName) {
		this.imgName = imgName;
	}
	public String getSoldout() {
		return soldout;
	}
	public void setSoldout(String soldout) {
		this.soldout = soldout;
	}
}
