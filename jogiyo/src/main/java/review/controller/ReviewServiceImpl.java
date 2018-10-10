package review.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import review.bean.ReviewDTO;
import review.dao.ReviewDAO;

@Service
public class ReviewServiceImpl implements ReviewService{
	
	
	@Autowired
	private ReviewDAO reviewDAO;

	@Override
	public ArrayList<ReviewDTO> reviewBoardList(String seq) {
		return (ArrayList<ReviewDTO>)reviewDAO.reviewBoardList(seq);
	}

	@Override
	public int getTotalA() {
		return reviewDAO.getTotalA();
	}

	@Override
	public int starPoint() {
		return reviewDAO.starPoint();
	}

	@Override
	public int reviewWrite(ReviewDTO reviewDTO) {
		return reviewDAO.reviewWrite(reviewDTO);
	}

	@Override
	public ArrayList<ReviewDTO> allReviewList(String ceo_seq) {
		return (ArrayList<ReviewDTO>)reviewDAO.allReviewList(ceo_seq);
	}

	@Override
	public ArrayList<ReviewDTO> nReviewList(String ceo_seq) {
		return (ArrayList<ReviewDTO>)reviewDAO.nReviewList(ceo_seq);
	}

	@Override
	public int owner_answer(ReviewDTO reviewDTO) {
		return reviewDAO.owner_answer(reviewDTO);
	}	
}
