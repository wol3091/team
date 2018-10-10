package orderlist.bean;

public class OrderlistDTO {
	
	
	private String id;
	private String ceo_seq;
	private String food;
	private int foodQty;
	private int foodPrice;
	private String delivery_region;
	private String logtime;
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getCeo_seq() {
		return ceo_seq;
	}
	public void setCeo_seq(String ceo_seq) {
		this.ceo_seq = ceo_seq;
	}
	public String getFood() {
		return food;
	}
	public void setFood(String food) {
		this.food = food;
	}
	public int getFoodQty() {
		return foodQty;
	}
	public void setFoodQty(int foodQty) {
		this.foodQty = foodQty;
	}
	public int getFoodPrice() {
		return foodPrice;
	}
	public void setFoodPrice(int foodPrice) {
		this.foodPrice = foodPrice;
	}
	public String getDelivery_region() {
		return delivery_region;
	}
	public void setDelivery_region(String delivery_region) {
		this.delivery_region = delivery_region;
	}
	public String getLogtime() {
		return logtime;
	}
	public void setLogtime(String logtime) {
		this.logtime = logtime;
	}
	
	
}
