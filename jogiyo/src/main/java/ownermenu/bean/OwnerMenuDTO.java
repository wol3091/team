package ownermenu.bean;

public class OwnerMenuDTO {
	
	private String seq;
	private String menu_group;	//카테로기
	private String menu_explain;	//음식 설명
	private String menu;  			//음식 이름
	private int price;				//메뉴 가격
	private String imgName; 		//메뉴의 이미지 파일 이름
	private String addmenu; 		//추가 메뉴 이름
	private int addmenu_price;		//추가 메뉴 가격
	private String soldout;			//품절여부 y/n으로
	
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
	public String getAddmenu() {
		return addmenu;
	}
	public void setAddmenu(String addmenu) {
		this.addmenu = addmenu;
	}
	public int getAddmenu_price() {
		return addmenu_price;
	}
	public void setAddmenu_price(int addmenu_price) {
		this.addmenu_price = addmenu_price;
	}
	public String getSoldout() {
		return soldout;
	}
	public void setSoldout(String soldout) {
		this.soldout = soldout;
	}
	
	
}
