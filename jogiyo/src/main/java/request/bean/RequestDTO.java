package request.bean;

public class RequestDTO {
	
	private int preseq;
	private String license_num1; 		// 사업자 번호
	private String license_num2; 		// 사업자 번호
	private String license_num3; 		// 사업자 번호
	private String registration; 		// 사업자등록증
	private String business_register; 	// 영업신고증
	private String register_name; 		// 사업주명
	private String business_phone1; 	// 사업자 휴대폰 번호
	private String business_phone2; 	// 사업자 휴대폰 번호
	private String business_phone3; 	// 사업자 휴대폰 번호
	private String restaurant_name; 	// 음식점 이름
	private String restaurant_phone1; 	// 음식점 전화번호 
	private String restaurant_phone2; 	// 음식점 전화번호 
	private String restaurant_phone3; 	// 음식점 전화번호 
	private String restaurant_address1; // 음식점 주소(우편번호)
	private String restaurant_address2; // 음식점 주소(도로명주소)
	private String restaurant_address3; // 음식점 주소(지번주소)
	private String restaurant_address4; // 음식점 주소(상세)
	private String category_menu; 		// 업종 카테고리
	private String delivery_option; 	// 배달 가능 여부
	private String yak; 				// 이용약관
	private String somename; 			// 원산지 
	private String access1; 			// 관리자 승인(사장님 사이트)
	private String temp_close;			// 임시운영정지여부
	private String seq; 				// 사업장 관리번호
	private String original; 			// 사업장 관리번호
	private String lower_price; 		// 최소주문금액  
	private String delivery_region;		// 배달가능지역(사장님 사이트) 
	private String money_method;		// 결제 수단 (사용자 사이트)
	private String weekday_start_H;		// 평일 시작 Hours
	private String weekday_start_M;		// 평일 시작 Minute
	private String weekday_end_H;		// 평일 마감 Hours
	private String weekday_end_M;		// 평일 마감 Minute
	private String saturday_start_H;	// 토요일 시작 Hours
	private String saturday_start_M;	// 토요일 시작 Minute
	private String saturday_end_H;		// 토요일 마감 Hours
	private String saturday_end_M;		// 토요일 마감 Minute
	private String sunday_start_H;		// 일요일 시작 Hours
	private String sunday_start_M;		// 일요일 시작 Minute
	private String sunday_end_H;		// 일요일 마감 Hours
	private String sunday_end_M;		// 일요일 마감 Minute
	private int delivery_cost;			// 배달료
	private String delivery_time; 		// 배달 소요시간
	
	public int getPreseq() {
		return preseq;
	}
	public void setPreseq(int preseq) {
		this.preseq = preseq;
	}
	public String getLicense_num1() {
		return license_num1;
	}
	public void setLicense_num1(String license_num1) {
		this.license_num1 = license_num1;
	}
	public String getLicense_num2() {
		return license_num2;
	}
	public void setLicense_num2(String license_num2) {
		this.license_num2 = license_num2;
	}
	public String getLicense_num3() {
		return license_num3;
	}
	public void setLicense_num3(String license_num3) {
		this.license_num3 = license_num3;
	}
	public String getRegistration() {
		return registration;
	}
	public void setRegistration(String registration) {
		this.registration = registration;
	}
	public String getBusiness_register() {
		return business_register;
	}
	
	public void setBusiness_register(String business_register) {
		this.business_register = business_register;
	}
	public String getRegister_name() {
		return register_name;
	}
	public void setRegister_name(String register_name) {
		this.register_name = register_name;
	}
	public String getBusiness_phone1() {
		return business_phone1;
	}
	public void setBusiness_phone1(String business_phone1) {
		this.business_phone1 = business_phone1;
	}
	public String getBusiness_phone2() {
		return business_phone2;
	}
	public void setBusiness_phone2(String business_phone2) {
		this.business_phone2 = business_phone2;
	}
	public String getBusiness_phone3() {
		return business_phone3;
	}
	public void setBusiness_phone3(String business_phone3) {
		this.business_phone3 = business_phone3;
	}
	public String getRestaurant_name() {
		return restaurant_name;
	}
	public void setRestaurant_name(String restaurant_name) {
		this.restaurant_name = restaurant_name;
	}
	public String getRestaurant_phone1() {
		return restaurant_phone1;
	}
	public void setRestaurant_phone1(String restaurant_phone1) {
		this.restaurant_phone1 = restaurant_phone1;
	}
	public String getRestaurant_phone2() {
		return restaurant_phone2;
	}
	public void setRestaurant_phone2(String restaurant_phone2) {
		this.restaurant_phone2 = restaurant_phone2;
	}
	public String getRestaurant_phone3() {
		return restaurant_phone3;
	}
	public void setRestaurant_phone3(String restaurant_phone3) {
		this.restaurant_phone3 = restaurant_phone3;
	}
	public String getRestaurant_address1() {
		return restaurant_address1;
	}
	public void setRestaurant_address1(String restaurant_address1) {
		this.restaurant_address1 = restaurant_address1;
	}
	public String getRestaurant_address2() {
		return restaurant_address2;
	}
	public void setRestaurant_address2(String restaurant_address2) {
		this.restaurant_address2 = restaurant_address2;
	}
	public String getRestaurant_address3() {
		return restaurant_address3;
	}
	public void setRestaurant_address3(String restaurant_address3) {
		this.restaurant_address3 = restaurant_address3;
	}
	public String getRestaurant_address4() {
		return restaurant_address4;
	}
	public void setRestaurant_address4(String restaurant_address4) {
		this.restaurant_address4 = restaurant_address4;
	}
	public String getCategory_menu() {
		return category_menu;
	}
	public void setCategory_menu(String category_menu) {
		this.category_menu = category_menu;
	}
	public String getDelivery_option() {
		return delivery_option;
	}
	public void setDelivery_option(String delivery_option) {
		this.delivery_option = delivery_option;
	}
	public String getYak() {
		return yak;
	}
	public void setYak(String yak) {
		this.yak = yak;
	}
	public String getSomename() {
		return somename;
	}
	public void setSomename(String somename) {
		this.somename = somename;
	}
	public String getAccess1() {
		return access1;
	}
	public void setAccess1(String access1) {
		this.access1 = access1;
	}
	public String getTemp_close() {
		return temp_close;
	}
	public void setTemp_close(String temp_close) {
		this.temp_close = temp_close;
	}
	public String getSeq() {
		return seq;
	}
	public void setSeq(String seq) {
		this.seq = seq;
	}
	public String getOriginal() {
		return original;
	}
	public void setOriginal(String original) {
		this.original = original;
	}
	public String getLower_price() {
		return lower_price;
	}
	public void setLower_price(String lower_price) {
		this.lower_price = lower_price;
	}
	public String getDelivery_region() {
		return delivery_region;
	}
	public void setDelivery_region(String delivery_region) {
		this.delivery_region = delivery_region;
	}
	public String getMoney_method() {
		return money_method;
	}
	public void setMoney_method(String money_method) {
		this.money_method = money_method;
	}
	public String getWeekday_start_H() {
		return weekday_start_H;
	}
	public void setWeekday_start_H(String weekday_start_H) {
		this.weekday_start_H = weekday_start_H;
	}
	public String getWeekday_start_M() {
		return weekday_start_M;
	}
	public void setWeekday_start_M(String weekday_start_M) {
		this.weekday_start_M = weekday_start_M;
	}
	public String getWeekday_end_H() {
		return weekday_end_H;
	}
	public void setWeekday_end_H(String weekday_end_H) {
		this.weekday_end_H = weekday_end_H;
	}
	public String getWeekday_end_M() {
		return weekday_end_M;
	}
	public void setWeekday_end_M(String weekday_end_M) {
		this.weekday_end_M = weekday_end_M;
	}
	public String getSaturday_start_H() {
		return saturday_start_H;
	}
	public void setSaturday_start_H(String saturday_start_H) {
		this.saturday_start_H = saturday_start_H;
	}
	public String getSaturday_start_M() {
		return saturday_start_M;
	}
	public void setSaturday_start_M(String saturday_start_M) {
		this.saturday_start_M = saturday_start_M;
	}
	public String getSaturday_end_H() {
		return saturday_end_H;
	}
	public void setSaturday_end_H(String saturday_end_H) {
		this.saturday_end_H = saturday_end_H;
	}
	public String getSaturday_end_M() {
		return saturday_end_M;
	}
	public void setSaturday_end_M(String saturday_end_M) {
		this.saturday_end_M = saturday_end_M;
	}
	public String getSunday_start_H() {
		return sunday_start_H;
	}
	public void setSunday_start_H(String sunday_start_H) {
		this.sunday_start_H = sunday_start_H;
	}
	public String getSunday_start_M() {
		return sunday_start_M;
	}
	public void setSunday_start_M(String sunday_start_M) {
		this.sunday_start_M = sunday_start_M;
	}
	public String getSunday_end_H() {
		return sunday_end_H;
	}
	public void setSunday_end_H(String sunday_end_H) {
		this.sunday_end_H = sunday_end_H;
	}
	public String getSunday_end_M() {
		return sunday_end_M;
	}
	public void setSunday_end_M(String sunday_end_M) {
		this.sunday_end_M = sunday_end_M;
	}
	public int getDelivery_cost() {
		return delivery_cost;
	}
	public void setDelivery_cost(int delivery_cost) {
		this.delivery_cost = delivery_cost;
	}
	public String getDelivery_time() {
		return delivery_time;
	}
	public void setDelivery_time(String delivery_time) {
		this.delivery_time = delivery_time;
	}
	
	
}
