package com.bm.spring.movie.model.dao;

import java.util.ArrayList;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.bm.spring.common.model.vo.PageInfo;
import com.bm.spring.movie.model.vo.Location;
import com.bm.spring.movie.model.vo.MLike;
import com.bm.spring.movie.model.vo.Movie;
import com.bm.spring.movie.model.vo.Multiplex;
import com.bm.spring.movie.model.vo.Review;
import com.bm.spring.movie.model.vo.Ticket;
import com.bm.spring.movie.model.vo.Timetable;

@Repository
public class MovieDao {
	
	//현재 상영중인 영화 제목,이미지 리스트
	public ArrayList<Movie> movieGetList(SqlSessionTemplate sqlSession) {
		return (ArrayList)sqlSession.selectList("movieMapper.movieGetList");
	}

	
	//지역 리스트
		public ArrayList<Location> locationGetList(SqlSessionTemplate sqlSession, String mvTitle) {
			return (ArrayList)sqlSession.selectList("movieMapper.locationGetList",mvTitle);
		}

		//영화관 리스트
		public ArrayList<Multiplex> multiplexGetList(SqlSessionTemplate sqlSession, Map map) {
			return (ArrayList)sqlSession.selectList("movieMapper.multiplexGetList",map);
		}
		
		//시간표 리스트
		public ArrayList<Timetable> timetableGetList(SqlSessionTemplate sqlSession, Map map) {
			return (ArrayList)sqlSession.selectList("movieMapper.timetableGetList",map);
		}
		
		//가격표 리스트
		public ArrayList<Ticket> ticketGetList(SqlSessionTemplate sqlSession) {
			return (ArrayList)sqlSession.selectList("movieMapper.ticketGetList");
		}

		//INSERT 시작
		//INSERT구문을 위한 TIMETABLE 조회
		public Timetable timetableGet(SqlSessionTemplate sqlSession, Map<String, String> map) {
			return sqlSession.selectOne("movieMapper.timetableGet",map);
		}
		
		//TSUCCESS테이블 INSERT
		public int ticketInsert(SqlSessionTemplate sqlSession, Map<String, String> map) {
			return sqlSession.insert("movieMapper.ticketInsert", map);
		}

		//성인 TDETAIL에 넣기 (TICKET에 아이,성인으로 구분되어서)
		public int adultInsert(SqlSessionTemplate sqlSession, Map<String, String> map) {
			return sqlSession.insert("movieMapper.adultInsert", map);
		}

		//아이 TDETAIL에 넣기 (TICKET에 아이,성인으로 구분되어서)	
		public int childInsert(SqlSessionTemplate sqlSession, Map<String, String> map) {
			return sqlSession.insert("movieMapper.childInsert", map);
		}
		
		//INSERT 성공시 TSUCCESS테이블에서 NO조회
		public String tsuccessNoInsert(SqlSessionTemplate sqlSession, Map<String, String> map) {
			return sqlSession.selectOne("movieMapper.tsuccessNoInsert", map);
		}

		//현제 좌석 조회
		public ArrayList<String> tDetailGetList(SqlSessionTemplate sqlSession, String timetableNo) {
			return (ArrayList)sqlSession.selectList("movieMapper.tDetailGetList", timetableNo);
		}
		/*
		 * int limit = pi.getBoardLimit();
			int offset = (pi.getCurrentPage()-1) * limit;
			
			RowBounds rowBounds = new RowBounds(offset,limit);
			
			return (ArrayList)sqlSession.selectList("boardMapper.selectList", null, rowBounds);
		 * */
		
		public int movieUpdate(SqlSessionTemplate sqlSession, Movie m) {
			return sqlSession.update("movieMapper.movieUpdate",m);
		}

		public int movieInsert(SqlSessionTemplate sqlSession, Movie m) {
			return sqlSession.insert("movieMapper.movieInsert", m);
		}

		public int movieDelete(SqlSessionTemplate sqlSession, int mvNo) {
			return sqlSession.update("movieMapper.movieDelete", mvNo);
		}
	

		////////------------------도균 끝
		
		
		////////----------------------연 시작
	//영화 상세정보 조회
	public Movie movieGetDetail(SqlSessionTemplate sqlSession, int mvNo) {
		return sqlSession.selectOne("movieMapper.movieGetDetail",mvNo);
	}

	//영화 조회수 증가
	public int increaseCount(SqlSessionTemplate sqlSession, int mvNo) {
		return sqlSession.update("movieMapper.increaseCount",mvNo);
	}

	//영화 상세정보에 들어갈 추천 영화 목록 조회
	public ArrayList<Movie> sameKeywordMvGetList(SqlSessionTemplate sqlSession, int mvNo) {
		return (ArrayList)sqlSession.selectList("movieMapper.sameKeywordMvGetList", mvNo);
	}

	//전체 영화 리스트 조회
	public ArrayList<Movie> movieGetAllList(SqlSessionTemplate sqlSession, PageInfo pi) {
		
		int limit = pi.getBoardLimit();
		int offset = (pi.getCurrentPage()-1) * limit;
		
		RowBounds rowBounds = new RowBounds(offset, limit);
		
		return (ArrayList)sqlSession.selectList("movieMapper.movieGetAllList",null,rowBounds);
	}

	//전체 영화 수 조회
	public int selectMovieCount(SqlSessionTemplate sqlSession) {
		return sqlSession.selectOne("movieMapper.selectMovieCount");
	}

	//인기순 조회
	public ArrayList<Movie> movieGetmvBest(SqlSessionTemplate sqlSession,PageInfo pi) {
		
		int limit = pi.getBoardLimit();
		int offset = (pi.getCurrentPage()-1) * limit;
		
		RowBounds rowBounds = new RowBounds(offset, limit);
		
		return (ArrayList)sqlSession.selectList("movieMapper.movieGetmvBest",null,rowBounds);
	}

	//예매율순 조회
	public ArrayList<Movie> movieGetmvHigh(SqlSessionTemplate sqlSession, PageInfo pi) {
		int limit = pi.getBoardLimit();
		int offset = (pi.getCurrentPage()-1) * limit;
		
		RowBounds rowBounds = new RowBounds(offset, limit);
		
		return (ArrayList)sqlSession.selectList("movieMapper.movieGetmvHigh",null,rowBounds);
	}

	//현재상영작 조회
	public ArrayList<Movie> movieGetmvNow(SqlSessionTemplate sqlSession, PageInfo pi) {
		int limit = pi.getBoardLimit();
		int offset = (pi.getCurrentPage()-1) * limit;
		
		RowBounds rowBounds = new RowBounds(offset, limit);
		
		return (ArrayList)sqlSession.selectList("movieMapper.movieGetmvNow",null,rowBounds);
	}

	//최신순 조회
	public ArrayList<Movie> movieGetmvNew(SqlSessionTemplate sqlSession, PageInfo pi) {
		int limit = pi.getBoardLimit();
		int offset = (pi.getCurrentPage()-1) * limit;
		
		RowBounds rowBounds = new RowBounds(offset, limit);
		
		return (ArrayList)sqlSession.selectList("movieMapper.movieGetmvNew",null,rowBounds);
	}

	//검색결과 수 조회
	public int selectSearchMovieCount(SqlSessionTemplate sqlSession, String searchKeyword) {
	
		return sqlSession.selectOne("movieMapper.selectSearchMovieCount",searchKeyword);
	}

	//검색결과 리스트 조회
	public ArrayList<Movie> movieGetmvSearch(SqlSessionTemplate sqlSession, PageInfo pi, String searchKeyword) {
		int limit = pi.getBoardLimit();
		int offset = (pi.getCurrentPage()-1) * limit;
		
		RowBounds rowBounds = new RowBounds(offset, limit);
		
		return (ArrayList)sqlSession.selectList("movieMapper.movieGetmvSearch",searchKeyword,rowBounds);
	}

	//현재상영작 검색 결과수 조회
	public int selectNowMovieCount(SqlSessionTemplate sqlSession) {
		return sqlSession.selectOne("movieMapper.selectNowMovieCount");
	}

	//영화 리뷰 리스트 조회
	public ArrayList<Review> movieReviewGetList(SqlSessionTemplate sqlSession, int mvNo) {
		return (ArrayList)sqlSession.selectList("movieMapper.movieReviewGetList",mvNo);
	}

	
	//영화 상세보기 리뷰 인서트
	public int movieReviewInsert(SqlSessionTemplate sqlSession, Review re) {
		
		return sqlSession.insert("movieMapper.movieReviewInsert",re);
	}

	
	//영화 상세보기 평균 별점 조회
	public double movieStarAvgGet(SqlSessionTemplate sqlSession, int mvNo) {
		return sqlSession.selectOne("movieMapper.movieStarAvgGet",mvNo);
	}

	//영화 좋아요 인서트
	public int movieLikeInsert(SqlSessionTemplate sqlSession, MLike ml) {
		return sqlSession.insert("movieMapper.movieLikeInsert",ml);
	}

	//영화 좋아요 중복검사
	public MLike movieLikeCheckGet(SqlSessionTemplate sqlSession, MLike ml) {
		return sqlSession.selectOne("movieMapper.movieLikeCheckGet",ml);
	}

	//좋아요 디비 삭제
	public int movieLikeDelete(SqlSessionTemplate sqlSession, MLike ml) {
		return sqlSession.delete("movieMapper.movieLikeDelete",ml);
	}

	//마이페이지 내가 쓴 리뷰
 	public ArrayList<Review> movieMyReviewGetList(SqlSessionTemplate sqlSession, int memberNo) {
		return (ArrayList)sqlSession.selectList("movieMapper.movieMyReviewGetList",memberNo);
	}


	public ArrayList<Movie> nowScreenMoviegetList(SqlSessionTemplate sqlSession) {
		return (ArrayList)sqlSession.selectList("movieMapper.nowScreenMoviegetList");
	}


	public ArrayList<Location> scheduleLocationGetList(SqlSessionTemplate sqlSession) {
		return (ArrayList)sqlSession.selectList("movieMapper.scheduleLocationGetList");
	}

}
