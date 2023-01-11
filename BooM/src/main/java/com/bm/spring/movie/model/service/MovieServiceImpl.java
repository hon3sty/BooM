package com.bm.spring.movie.model.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bm.spring.common.model.vo.PageInfo;
import com.bm.spring.movie.model.dao.MovieDao;
import com.bm.spring.movie.model.vo.Location;
import com.bm.spring.movie.model.vo.MLike;
import com.bm.spring.movie.model.vo.Movie;
import com.bm.spring.movie.model.vo.Multiplex;
import com.bm.spring.movie.model.vo.Review;
import com.bm.spring.movie.model.vo.ScheduleTimetable;
import com.bm.spring.movie.model.vo.Tdetail;
import com.bm.spring.movie.model.vo.Theater;
import com.bm.spring.movie.model.vo.Ticket;
import com.bm.spring.movie.model.vo.Timetable;
import com.bm.spring.movie.model.vo.Tsuccess;

@Service
public class MovieServiceImpl implements MovieService{

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Autowired
	private MovieDao moviedao;
	
	
	//영화 제목,이미지 리스트
		@Override
		public ArrayList<Movie> movieGetList() {
			return moviedao.movieGetList(sqlSession);
		}

		//지역 리스트
		@Override
		public ArrayList<Location> locationGetList(String mvTitle) {
				return moviedao.locationGetList(sqlSession,mvTitle);	
			}

		//영화관 리스트
		@Override
		public ArrayList<Multiplex> multiplexGetList(Map map) {
			return moviedao.multiplexGetList(sqlSession,map);
		}
		
		
		//시간표 리스트
			@Override
			public ArrayList<Timetable> timetableGetList(Map map) {
				return moviedao.timetableGetList(sqlSession,map);
			}

			//가격표 리스트
			@Override
			public ArrayList<Ticket> ticketGetList() {
				return moviedao.ticketGetList(sqlSession);
			}

			//TSUCCESS테이블 INSERT
			@Override
			public int ticketInsert(Map<String, String> map) {
				//timeNo를 통해서 다른번호 조회
				Timetable t = moviedao.timetableGet(sqlSession,map);
				int result = 0;
				
				if(t != null) {
					//조회한 값을 map에 추가
					map.put("mvNo",String.valueOf(t.getMvNo()));
					map.put("theaterNo",String.valueOf(t.getTheaterNo()));
					
					result = moviedao.ticketInsert(sqlSession,map);

					int childNum = Integer.parseInt(map.get("childNum"));
					int adultNum = Integer.parseInt(map.get("adultNum"));
					
					// ","단위로 끊어주기
					String[] seatArr = map.get("selectedSeats").split(",");
					
					//TDETAIL테이블 INSERT(티켓이 아이인 경우)
					int index =0;
					for(int i=0 ; i<childNum ; i++) {
						map.put("selectedSeats",seatArr[i]);
						result *= moviedao.childInsert(sqlSession,map);
						index++;
					}

					//TDETAIL테이블 INSERT(티켓이 어른인 경우)
					for(int i=index ; i<seatArr.length ; i++) {
						map.put("selectedSeats",seatArr[i]);
						result *= moviedao.adultInsert(sqlSession,map);
					}
				}
				return result;
			}

			//INSERT 성공시 TSUCCESS테이블에서 NO조회
			@Override
			public String tsuccessNoInsert(Map<String, String> map) {
				return moviedao.tsuccessNoInsert(sqlSession,map);
			}

			//현제 좌석 조회
			@Override
			public ArrayList<String> tDetailGetList(String timetableNo) {
				return moviedao.tDetailGetList(sqlSession,timetableNo);
			}
			
			//영화 수정
			@Override
			public int movieUpdate(Movie m) {
				return moviedao.movieUpdate(sqlSession, m);
			}

			//영화 추가
			@Override
			public int movieInsert(Movie m) {
				return moviedao.movieInsert(sqlSession, m);
			}

			//영화 삭제
			@Override
			public int movieDelete(List<String> mvNoArr) {
				int result = 0;
				for(String s : mvNoArr) {
					result +=  moviedao.movieDelete(sqlSession, Integer.parseInt(s));
				}
				return result;
			}
			
			
	//230109 도균
			//timetable 추가시 필요한 Multiplex 조회
			@Override
			public ArrayList<Multiplex> scheduleMultiplexGetList(String lcName) {
				return moviedao.scheduleMultiplexGetList(sqlSession , lcName);
			}

			//timetable 추가시 필요한 Theater 조회
			@Override
			public ArrayList<Theater> movieScheTheater(int mpNo) {
				return moviedao.movieScheTheater(sqlSession , mpNo);
			}

			//timetable 추가
			@Override
			public int movieScheduleInsert(Map<String, String> map) {
				return moviedao.movieScheduleInsert(sqlSession , map);
			}

			//timetable 개수
			@Override
			public int selectTimetableCount() {
				return moviedao.selectTimetableCount(sqlSession);
			}
			
			//timetable 조회(삭제시)
			@Override
			public ArrayList<ScheduleTimetable> scheduleTimetableGetList(PageInfo pi) {
				return moviedao.scheduleTimetableGetList(sqlSession,pi);
			}

			//timetable 삭제
			@Override
			public int movieScheduleDelete(List<String> timeNoArr) {
				int result = 0;
				for(String s : timeNoArr) {
					result +=  moviedao.movieScheduleDelete(sqlSession, Integer.parseInt(s));
				}
				return result;
			}
	
			@Override
			public ArrayList<Movie> mainMovieGetList() {
				return moviedao.mainMovieGetList(sqlSession);
			}

		
		//--------------------------------도균끝
	
	
	//전체 영화 리스트
	@Override
	public ArrayList<Movie> movieGetAllList(PageInfo pi) {
		return moviedao.movieGetAllList(sqlSession, pi);
	}
	
	

	//영화 상세정보 조회
	@Override
	public Movie movieGetDetail(int mvNo) {
		return moviedao.movieGetDetail(sqlSession, mvNo);
	}

	//영화 조회수 증가
	@Override
	public int increaseCount(int mvNo) {
		return moviedao.increaseCount(sqlSession, mvNo);
	}

	
	//영화상세페이지에 들어갈 추천 영화 목록 조회
	@Override
	public ArrayList<Movie> sameKeywordMvGetList(int mvNo) {
		return moviedao.sameKeywordMvGetList(sqlSession, mvNo);
	}

	//전체 영화 수 조회
	@Override
	public int selectMovieCount() {
		
		return moviedao.selectMovieCount(sqlSession);
	}

	//인기순 조회
 	@Override
	public ArrayList<Movie> movieGetmvBest(PageInfo pi) {
		return moviedao.movieGetmvBest(sqlSession,pi);
	}

 	//예매율순 조회
	@Override
	public ArrayList<Movie> movieGetmvHigh(PageInfo pi) {
		return moviedao.movieGetmvHigh(sqlSession,pi);
	}

	//현재상영작 조회
	@Override
	public ArrayList<Movie> movieGetmvNow(PageInfo pi) {
		return moviedao.movieGetmvNow(sqlSession,pi);
	}

	//최신순 조회
	@Override
	public ArrayList<Movie> movieGetmvNew(PageInfo pi) {
		return moviedao.movieGetmvNew(sqlSession,pi);
	}

	//검색결과 수 조회
	@Override
	public int selectSearchMovieCount(String searchKeyword) {
		return moviedao.selectSearchMovieCount(sqlSession,searchKeyword);
	}

	//검색결과 리스트 조회
	@Override
	public ArrayList<Movie> movieGetmvSearch(PageInfo pi, String searchKeyword) {
		return moviedao.movieGetmvSearch(sqlSession,pi,searchKeyword);
	}

	//현재상영작 검색결과 수 조회
	@Override
	public int selectNowMovieCount() {
		return moviedao.selectNowMovieCount(sqlSession);
	}

	//영화 리뷰 리스트 조회
	@Override
	public ArrayList<Review> movieReviewGetList(int mvNo) {
		return moviedao.movieReviewGetList(sqlSession,mvNo);
	}

	//영화 상세보기 리뷰 인서트 
	@Override
	public int movieReviewInsert(Review re) {
		
		return moviedao.movieReviewInsert(sqlSession,re);
	}

	//영화 상세페이지 평균별점 조회
	@Override
	public double movieStarAvgGet(int mvNo) {
		return moviedao.movieStarAvgGet(sqlSession,mvNo);
	}

	//영화 좋아요 인서트
	@Override
	public int movieLikeInsert(MLike ml) {
		return moviedao.movieLikeInsert(sqlSession, ml);
	}

	//좋아요 중복 디비 조회 
	@Override
	public MLike movieLikeCheckGet(MLike ml) {
		return moviedao.movieLikeCheckGet(sqlSession, ml);
	}

	//좋아요 디비 삭제
	@Override
	public int movieLikeDelete(MLike ml) {
		return moviedao.movieLikeDelete(sqlSession, ml);
	}

	//마이페이지 내가 쓴 리뷰 리스트 조회
	@Override
	public ArrayList<Review> movieMyReviewGetList(int memberNo) {
		return moviedao.movieMyReviewGetList(sqlSession,memberNo);
	}

	//현재 상영중인 영화 제목 및 이미지 리스트
	@Override
	public ArrayList<Movie> nowScreenMoviegetList() {
		return moviedao.nowScreenMoviegetList(sqlSession);

	}

	//timetable 추가시 필요한 location 조회
		@Override
		public ArrayList<Location> scheduleLocationGetList() {
			return moviedao.scheduleLocationGetList(sqlSession);
		}

	//무비 리뷰 업데이트
	@Override
	public int movieReviewUpdate(Review r) {
		return moviedao.movieReviewUpdate(sqlSession,r);
	}

	//무비리뷰 삭제(업데이트)
	@Override
	public int movieReviewDelete(Review r) {
		return moviedao.movieReviewDelete(sqlSession,r);
	}

	//마이페이지 영화 좋아요 리스트
	@Override
	public ArrayList<Movie> movieMyMLikeGetList(int memberNo, PageInfo pi) {
		return moviedao.movieMyMLikeGetList(sqlSession,memberNo,pi);
	}

	//마이페이지 영화 좋아요 갯수  
	@Override
	public int selectMyMLikeMovieCount(int memberNo) {
		return moviedao.selectMyMLikeMovieCount(sqlSession,memberNo);
	}

	//회원의 전체 예매내역 갯수 조회
	@Override
	public int selectMyTSuccessCount(int memberNo) {
		return moviedao.selectMyTSuccessCount(sqlSession,memberNo);
	}

	//회원의 전체 예매내역 조회
	@Override
	public ArrayList<Tsuccess> movieMyTSuccessGetList(int memberNo, PageInfo pi) {
		return moviedao.movieMyTSuccessGetList(sqlSession,memberNo,pi);
	}

	//예매내역 날짜검색결과 갯수
	@Override
	public int selectTicketDateCount(Tsuccess ts) {
		return moviedao.selectTicketDateCount(sqlSession,ts);
	}

	//예매내역 날짜검색결과 리스트
	@Override
	public ArrayList<Tsuccess> movieTicketDateGetList(Tsuccess ts, PageInfo pi) {
		return moviedao.movieTicketDateGetList(sqlSession,ts,pi);
	}

	//선택한 예매번호의 상세정보 조회1
	@Override
	public Tsuccess movieTSuccessGet(Tdetail td) {
		return moviedao.movieTSuccessGet(sqlSession,td);
	}

	//선택한 예매번호의 상세정보 조회2
	@Override
	public ArrayList<Tdetail> movieMyTDetailGetList(Tdetail td) {
		return moviedao.movieMyTDetailGetList(sqlSession,td);
	}

	//좋아요기반 추천영화 리스트
	@Override
	public ArrayList<Movie> movieRecommendGetList(int memberNo) {
		return moviedao.movieRecommendGetList(sqlSession,memberNo);
	}

	//예매내역 취소 
	@Override
	public int myTicketDelete(Tdetail td) {
		return moviedao.myTicketDelete(sqlSession,td);
	}

	//예매 전체취소
	@Override
	public int myTicketAllDelete(Tdetail td) {
		return moviedao.myTicketAllDelete(sqlSession,td);
	}

	//예매전체취소2
	@Override
	public int myTicketAlldelete2(Tdetail td) {
		return moviedao.myTicketAlldelete2(sqlSession,td);
	}

	//예매 부분취소2
	@Override
	public int myTicketDelete2(Tdetail td) {
		return moviedao.myTicketDelete2(sqlSession,td);
	}

	//취소된 티켓 수
	@Override
	public int myCancleTicketCount(Tdetail td) {
		return moviedao.myCancleTicketCount(sqlSession,td);
	}
	
	
	
}
