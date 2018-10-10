package review.bean;

public class ReviewDTO {
	
	private int review_seq;
	private String id;
	private String nickname;
	private String ceo_seq;
	private String ceoOK;
	private String content;
	private String ceoContent;
	private String starpoint;
	private String image;
	private String orderlist;
	private String writeCheck;
	private String logtime;
	private String logtimeCeo;

	public int getReview_seq() {
		return review_seq;
	}
	public void setReview_seq(int review_seq) {
		this.review_seq = review_seq;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public String getCeo_seq() {
		return ceo_seq;
	}
	public void setCeo_seq(String ceo_seq) {
		this.ceo_seq = ceo_seq;
	}
	public String getCeoOK() {
		return ceoOK;
	}
	public void setCeoOK(String ceoOK) {
		this.ceoOK = ceoOK;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getCeoContent() {
		return ceoContent;
	}
	public void setCeoContent(String ceoContent) {
		this.ceoContent = ceoContent;
	}
	public String getStarpoint() {
		return starpoint;
	}
	public void setStarpoint(String starpoint) {
		this.starpoint = starpoint;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public String getOrderlist() {
		return orderlist;
	}
	public void setOrderlist(String orderlist) {
		this.orderlist = orderlist;
	}	
	public String getWriteCheck() {
		return writeCheck;
	}
	public void setWriteCheck(String writeCheck) {
		this.writeCheck = writeCheck;
	}
	public String getLogtime() {
		return logtime;
	}
	public void setLogtime(String logtime) {
		this.logtime = logtime;
	}
	public String getLogtimeCeo() {
		return logtimeCeo;
	}
	public void setLogtimeCeo(String logtimeCeo) {
		this.logtimeCeo = logtimeCeo;
	}
	
	
}
