package review.controller;

import java.util.ArrayList;

import review.bean.ReviewDTO;

public interface ReviewService {
	//리뷰 목록
	ArrayList<ReviewDTO> reviewBoardList(String seq);
	
	//리뷰 목록 카운트
	public int getTotalA();
	
	//별점
	public int starPoint();
	
	//리뷰 작성
	public int reviewWrite(ReviewDTO reviewDTO);

	ArrayList<ReviewDTO> allReviewList(String ceo_seq);
	ArrayList<ReviewDTO> nReviewList(String ceo_seq);
	
	public int owner_answer(ReviewDTO reviewDTO);
}
