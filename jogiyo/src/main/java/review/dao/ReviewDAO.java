package review.dao;


import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import ownersidemenu.bean.OwnerSideMenuDTO;
import review.bean.ReviewDTO;


@Repository
public class ReviewDAO {
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	//리뷰 목록 조회
	public List<ReviewDTO> reviewBoardList(String seq) {
		return sqlSession.selectList("mybatis.reviewMapper.reviewBoardList", seq);
	}
	
	//리뷰 목록 카운트
	public int getTotalA() {
		return sqlSession.selectOne("mybatis.reviewMapper.getTotalA");
	}
		
	//리뷰 작성
	public int reviewWrite(ReviewDTO reviewDTO) {
		return sqlSession.insert("mybatis.reviewMapper.reviewWrite", reviewDTO);
	}
	
	//별점
	public int starPoint() {
		return sqlSession.selectOne("mybatis.reviewMapper.starPoint");
	}
	
	public List<ReviewDTO> allReviewList(String ceo_seq) {
		return sqlSession.selectList("mybatis.reviewMapper.allReviewList", ceo_seq);
	}
	
	public List<ReviewDTO> nReviewList(String ceo_seq) {
		return sqlSession.selectList("mybatis.reviewMapper.nReviewList", ceo_seq);
	}
	
	public int owner_answer(ReviewDTO reviewDTO) {
		return sqlSession.update("mybatis.reviewMapper.owner_answer",reviewDTO);
	}
	
}
