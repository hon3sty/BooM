package com.bm.spring.movie.controller;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.bm.spring.common.model.vo.PageInfo;
import com.bm.spring.common.template.Pagination;
import com.bm.spring.member.model.vo.Member;
import com.bm.spring.movie.model.service.MovieService;
import com.bm.spring.movie.model.vo.Location;
import com.bm.spring.movie.model.vo.MLike;
import com.bm.spring.movie.model.vo.Movie;
import com.bm.spring.movie.model.vo.Multiplex;
import com.bm.spring.movie.model.vo.Review;
import com.bm.spring.movie.model.vo.ScheduleTimetable;
import com.bm.spring.movie.model.vo.SelectValue;
import com.bm.spring.movie.model.vo.Tdetail;
import com.bm.spring.movie.model.vo.Theater;
import com.bm.spring.movie.model.vo.Ticket;
import com.bm.spring.movie.model.vo.Timetable;
import com.bm.spring.movie.model.vo.Tsuccess;
import com.bm.spring.product.model.vo.DateChk;
import com.google.gson.Gson;

@Controller
public class MovieController {
	
	@Autowired
	private MovieService movieService;
	
//	//MV_0030에서 필요한 리스트 가져오기
//	@RequestMapping("ticketing1.mv")
//	public String ticketing1GetList (Model model) {
//		//영화리스트 가져오기(제목,이미지)
//		ArrayList<Movie> movieList = movieService.movieGetList();
//		model.addAttribute("movieList",movieList);
//		
//		//지역과 영화관 가져오기
//		ArrayList<Multiplex> multiplexList = movieService.multiplexGetList();
//		model.addAttribute("multiplexList",multiplexList);
//		return "movie/MV_0030";
//	}
	
	/*---------------------- 도균 시작 -------------------------*/
	
	//예매 페이지 뮤비 리스트
		@RequestMapping("ticketing1.mv")
		public ModelAndView nowScreenMoviegetList (ModelAndView mv) {
			//영화리스트 가져오기(제목,이미지)
			ArrayList<Movie> movieList = movieService.nowScreenMoviegetList();
			mv.addObject("movieList",movieList);
			mv.setViewName("movie/MV_0030");
			
			return mv;
			//return "movie/MV_0030";
		}
	
		//지역 리스트
		@ResponseBody
		@RequestMapping(value="location.mv",produces="application/json; charset=UTF-8")
		public String locationGetList(String mvTitle) {
			
			ArrayList<Location> locationList = movieService.locationGetList(mvTitle);
			return new Gson().toJson(locationList);
		}
		
		//영화관 리스트
			@ResponseBody
			@RequestMapping(value="multiplex.mv",produces="application/json; charset=UTF-8")
			public String multiplexGetList(String lcName, String mvTitle) {
				Map<String, String> map = new HashMap<String, String>();
				map.put("lcName",lcName);
				map.put("mvTitle",mvTitle);
				ArrayList<Multiplex> multiplexList = movieService.multiplexGetList(map);
				return new Gson().toJson(multiplexList);
			}
			
			//시간표 리스트
			@ResponseBody
			@RequestMapping(value="timetable.mv",produces="application/json; charset=UTF-8")
			public String timetableGetList(String openDate,String mvTitle) {
				Map<String, String> map = new HashMap<String, String>();
				map.put("openDate",openDate);
				map.put("mvTitle",mvTitle);

				ArrayList<Timetable> timetableList = movieService.timetableGetList(map);
				return new Gson().toJson(timetableList);
			}
			
		
		//MV_0030영역 끝
		
		//MV_0040영역 시작
		@RequestMapping("ticketing2.mv")
		public String seatGetList(String title, 
							      String mvImg, 
								  String mvLocation, 
								  String multiplex, 
								  String selectDay, 
								  String selectTime,
								  String period, 
								  String theaterNo,
								  String timetableNo,
								  Model model) {
			//예약좌석 get
			ArrayList<String> tDetailList = movieService.tDetailGetList(timetableNo);
	
			//map으로 가져가기
			Map<String, String> map = new HashMap<String, String>();
			map.put("title", title);
			map.put("mvImg", mvImg);
			map.put("mvLocation", mvLocation);
			map.put("multiplex", multiplex);
			map.put("selectDay", selectDay);
			map.put("selectTime", selectTime);
			map.put("period", period);
			map.put("theaterNo", theaterNo);
			map.put("timetableNo", timetableNo);
	
			model.addAttribute("map", map);
			model.addAttribute("tDetailList", tDetailList);
			
			return "movie/MV_0040";
		}
		
		
		//@RequestParam(value="seatList[]") ArrayList<String>seatList,
				@RequestMapping("ticketing3.mv")
				public String seatGetList(
										  Model model,
										  String title,
										  String mvImg,
										  String mvLocation,
										  String multiplex,
										  String selectDay,
										  String selectTime,
										  String theaterNo,
										  String period,
										  String selectedSeats,
										  String childNum, 
										  String adultNum,
										  String timetableNo){
					
					//selectedSeats 변환
					selectedSeats = selectedSeats.substring(1,selectedSeats.length());
					selectedSeats = selectedSeats.substring(0,selectedSeats.length()-1);
					selectedSeats = selectedSeats.replace("\"", "");
					
					//가격표 조회
					ArrayList<Ticket> ticketList = movieService.ticketGetList();
					
					//값 세팅
					SelectValue selectValue = new SelectValue();
					selectValue.setTitle(title);
					selectValue.setMvImg(mvImg);
					selectValue.setMvLocation(mvLocation);
					selectValue.setMultiplex(multiplex);
					selectValue.setSelectDay(selectDay); 
					selectValue.setSelectTime(selectTime);
					selectValue.setTheaterNo(theaterNo);
					selectValue.setPeriod(period);
					selectValue.setAdultNum(adultNum);
					selectValue.setChildNum(childNum);
					selectValue.setTicketList(ticketList);
					selectValue.setSelectedSeats(selectedSeats);
					selectValue.setTimetableNo(timetableNo);
					
					model.addAttribute("selectValue", selectValue);
					
					return "movie/MV_0050";
				}
		
	//MV_0040영역 끝
		
				@RequestMapping("ticketing4.mv")
				public String ticketInsert( Model model,
										   String title,
										   String mvImg,
										   String mvLocation,
										   String multiplex,
										   String selectDay,
										   String selectTime,
										   String theaterNo,
										   String period,
										   String selectedSeats,
										   String childNum, 
										   String adultNum,
										   String priceText,
										   String payment,
										   String timetableNo,
										   HttpSession session){
					
					Map<String, String> map = new HashMap<String, String>();
					String memberNo = String.valueOf(((Member)session.getAttribute("loginUser")).getMemberNo());
					String tsuccessNo = "";
					
					map.put("memberNo",memberNo);
					map.put("timetableNo",timetableNo);
					map.put("payment",payment);
					map.put("priceText",priceText);
					map.put("selectedSeats",selectedSeats);
					map.put("childNum",childNum);
					map.put("adultNum",adultNum);
					
					int result = movieService.ticketInsert(map);
					
					if(result >0) {
						tsuccessNo = movieService.tsuccessNoInsert(map);
						
					}else {
						System.out.println("실패");
					}
					
					//값 세팅
					SelectValue selectValue = new SelectValue();
					
					selectValue.setTitle(title);
					selectValue.setMvImg(mvImg);
					selectValue.setMvLocation(mvLocation);
					selectValue.setMultiplex(multiplex);
					selectValue.setSelectDay(selectDay); 
					selectValue.setSelectTime(selectTime);
					selectValue.setTheaterNo(theaterNo);
					selectValue.setPeriod(period);
					selectValue.setAdultNum(adultNum);
					selectValue.setChildNum(childNum);
					selectValue.setSelectedSeats(selectedSeats);
					selectValue.setPayment(payment);
					selectValue.setPriceText(priceText);
					selectValue.setTsuccessNo(tsuccessNo);
					selectValue.setMemberNo(memberNo);
					
					model.addAttribute("selectValue", selectValue);
					
					return "movie/MV_0060";
				}
		
		@RequestMapping("adminMovieList.mv")
		public String adminMovieListGet(@RequestParam(value="currentPage",defaultValue = "1") int currentPage,
									Model model) {
			
			//페이징처리를 위해 전체 게시글 개수 조회해오기
			//페이징처리 pageLimit 10
			//boardLimit 5
			int listCount = movieService.selectMovieCount(); //List지우기
			int pageLimit = 10;
			int boardLimit = 10;
			
			PageInfo pi = Pagination.getPageinfo(listCount, currentPage, pageLimit, boardLimit);
			
			ArrayList<Movie> movieList = movieService.movieGetAllList(pi);
			model.addAttribute("movieList", movieList);
			model.addAttribute("pi", pi);
			
			return "movie/MV_0090";
		}
				
		
		@GetMapping("movieUpdate.mv")
		public String movieUpdate(Model model,int mvNo) {
			Movie m = movieService.movieGetDetail(mvNo);
			model.addAttribute("m",m);
			return "movie/MV_0100";
		}
		
		@PostMapping("movieUpdate.mv")
		public String movieUpdate(Model model,
							      Movie m,
							      MultipartFile upfile,
							      HttpSession session) {

			//새로운 첨부파일 업로드시 
			if(!upfile.getOriginalFilename().equals("")) {

				//기존에 있던 파일 삭제
				new File(session.getServletContext().getRealPath(m.getMvImg())).delete();
				
				
				//아래에서 작업한 saveFile메소드 사용 
				String changeName = saveFile(upfile,session);
				m.setMvImg(changeName);
			}
			
			int result = movieService.movieUpdate(m);
			
			return adminMovieListGet(1, model);
		}
		
		//현재 넘어온 첨부파일 그 자체를 서버의 폴더에 저장시키는 메소드(모듈)
		public String saveFile(MultipartFile upfile,HttpSession session) {
			String path= "resources/img/movieImg/";
			//1.원본파일명 뽑기 
			String originName = upfile.getOriginalFilename();
			
			//2.시간 형식 뽑기
			//"202212050153533"
			String currentTime = new SimpleDateFormat("yyyyMMddHHmmss").format(new Date());
			
			//3.확장자 추출하기
			String ext = originName.substring(originName.lastIndexOf("."));
			
			//4.랜덤숫자 추출하기 5자리
			int ranNum = (int)(Math.random() * 90000 + 10000); // 5자리 랜덤값
			
			//6.파일을 업로드할 실질적인 위치(물리경로)찾기 
			String savePath = session.getServletContext().getRealPath("/resources/img/movieImg/");
			
			String changeName = currentTime+ranNum+ext;
			
			try {
			//7.물리경로+변경이름으로 파일 생성 및 업로드	
				upfile.transferTo(new File(savePath+changeName));
			} catch (IllegalStateException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}
			
			return path+changeName;
		}
			
		@GetMapping("movieInsert.mv")
		public String movieInsert() {
			return "movie/MV_0110";
		}
		
		@PostMapping("movieInsert.mv")
		public String movieInsert(Model model,
							      Movie m,
							      MultipartFile upfile,
							      HttpSession session) {
			if(!upfile.getOriginalFilename().equals("")) {
				
//				if(!m.getMvImg().contains("https://")) {
//					//기존에 있던 파일 삭제
//					new File(session.getServletContext().getRealPath(m.getMvImg())).delete();
//				}
				
				//아래에서 작업한 saveFile메소드 사용 
				String changeName = saveFile(upfile,session);
				m.setMvImg(changeName);
			}
			int result = movieService.movieInsert(m);
			
			return adminMovieListGet(1, model);
		}
			
		@ResponseBody
		@RequestMapping("movieDelete.mv")
		public String movieDelete(@RequestParam(value="mvNoArr[]")List<String> mvNoArr
								  ,Model model) {
			int result = movieService.movieDelete(mvNoArr);
			return String.valueOf(result);
			
		}
		
		
		//230109 도균 
		//영화 상영스케줄 등록페이지 이동(MV_0120)
				@RequestMapping("adminMovieScheduleEdit.mv")
				public String adminMovieScheduleEdit(Model model) {
						
					ArrayList<Movie> movieList = movieService.movieGetList();
					model.addAttribute("movieList",movieList);
					
					return "movie/MV_0120";
				}
				
				
				//영화 선택하면 해당영화의 상영시간,개봉일, 종영일등 영화 정보 조회해오는 에이젝스(나중에 날짜 선택할때  min, max 속성에 넣어줄것)
				@ResponseBody
				@RequestMapping(value="movieScheDate.mv", produces="application/json; charset=UTF-8;")
				public String movieSelectSchedule(Model model) {
					
					
					
					return "";//new Gson().toJson();
				}
				
				//영화 상영스케줄 지역 리스트 불러오는 에이젝스
				@ResponseBody
				@RequestMapping(value="movieScheLocation.mv", produces="application/json; charset=UTF-8;")
				public String movieScheLocation() {
					
					ArrayList<Location> locationList = movieService.scheduleLocationGetList();	
					return new Gson().toJson(locationList);
				}
				
				//영화 상영스케줄 선택한 지역에 있는 영화관(Multiplex)리스트 불러오는 에이젝스
				@ResponseBody
				@RequestMapping(value="movieScheMultiplex.mv", produces="application/json; charset=UTF-8;")
				public String movieScheMultiplex(String lcName) {
					
					ArrayList<Multiplex> multiplexList = movieService.scheduleMultiplexGetList(lcName);
					return new Gson().toJson(multiplexList);
				}
				
				//영화 상영스케줄 선택한 지역,영화관,영화관에 일치하는 상영관 리스트 불러오는 에이젝스
				@ResponseBody
				@RequestMapping(value="movieScheTheater.mv", produces="application/json; charset=UTF-8;")
				public String movieScheTheater(int mpNo) {
					ArrayList<Theater> multiplexList = movieService.movieScheTheater(mpNo);
					return new Gson().toJson(multiplexList);
				}
				
				
				
				//영화 상영스케줄 등록 (입력된 데이터 다 담아서 인서트)
				@RequestMapping("movieScheduleInsert.mv")
				public String movieScheduleInsert(String mvNo,
												  String theaterNo,
												  String multiplexNo,
												  String selectDay,
												  String selectTime,
												  Model model) {
					
					selectTime = selectTime.replace(":", "");
					selectTime += "00";
					
					Map<String, String> map = new HashMap<String, String>();
					map.put("selectDay",selectDay);
					map.put("mvNo",mvNo);
					map.put("theaterNo",theaterNo);
					map.put("multiplexNo",multiplexNo);
					map.put("selectDay",selectDay);
					map.put("selectTime",selectTime);
					
					int result = movieService.movieScheduleInsert(map);
					String alertMsg ="";
					if(result >0) {
						alertMsg = "시간표 등록 성공";
					}else {
						alertMsg = "시간표 등록 실패";
					}
					return "redirect:/";
				}
				
					
				//영화 상영스케줄 수정
				@RequestMapping("movieScheduleUpdate.mv")
				public String movieScheduleUpdate() {
						
					return "";
				}
				
				//영화 상영스케줄 삭제
				@GetMapping("movieScheduleDelete.mv")
				public String movieScheduleDelete(@RequestParam(value="currentPage",defaultValue = "1") int currentPage,
												  Model model) {
					int listCount = movieService.selectTimetableCount(); //List지우기
					int pageLimit = 10;
					int boardLimit = 10;
					
					PageInfo pi = Pagination.getPageinfo(listCount, currentPage, pageLimit, boardLimit);

					ArrayList<ScheduleTimetable> timetableList = movieService.scheduleTimetableGetList(pi);
					model.addAttribute("timetableList", timetableList);
					model.addAttribute("pi",pi);
					return "movie/MV_0140";
				}
				
				@ResponseBody
				@RequestMapping("movieScheduleDelete.mv")
				public String movieScheduleDelete(@RequestParam(value="timeNoArr[]")List<String> timeNoArr
										  ,Model model) {
					int result = movieService.movieScheduleDelete(timeNoArr);
					return String.valueOf(result);
				}
				
				@ResponseBody
				@RequestMapping(value="mainMovieGetList.mv", produces="application/json; charset=UTF-8;")
				public String mainMovieGetList() {
					ArrayList<Movie> movieList= movieService.mainMovieGetList();
					return new Gson().toJson(movieList);
				}
				
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	
	/*---------------------- 도균 끝 -------------------------*/
	
	
	
	
/*   -----------------------     연 시작         ----------------------------  */
	
	//MV_0010 영화 전체리스트 조회
		@RequestMapping("movieList.mv")
		public String movieGetList(@RequestParam(value="currentPage", defaultValue="1") int currentPage ,Model model) {
			
			//영화리스트 페이징 처리
			int listCount = movieService.selectMovieCount();
			int pageLimit = 10;
			int movieLimit = 16; //한페이지에 보여질 영화 갯수
			
			PageInfo pi = Pagination.getPageinfo(listCount, currentPage, pageLimit, movieLimit);
			
			//영화 전체 조회
			ArrayList<Movie> movieAllList = movieService.movieGetAllList(pi);
			model.addAttribute("movieAllList",movieAllList);
			model.addAttribute("pi",pi);
			
			//System.out.println(movieAllList);
			
			return "movie/MV_0010";
		}
		
		//MV_0020 영화 상세페이지 
		@RequestMapping("movieDetail.mv")
		public String movieGetDetail(HttpSession session,@RequestParam(value="mno") int mvNo, Model model) {
			
			//영화 조회수 증가
			int result  = movieService.increaseCount(mvNo);
			
		    //System.out.println("결과 : "+result);
			
			if(result>0) {
			 
			 //영화번호로 영화 상세보기 정보 조회
			 Movie m = movieService.movieGetDetail(mvNo);
			 
			 //영화번호로 리뷰 정보 조회
			 ArrayList<Review> mrList = movieService.movieReviewGetList(mvNo);
			 
			 
			 
			 //회원정보가 있으면 해당 영화가 좋아요디비에 있는지 조회 
			 MLike ml = new MLike();
			 Member mem = (Member) session.getAttribute("loginUser");
			 int mlikeHeart = 0;
			 if(mem!=null) {//회원정보가 있을때
				 
		     int memberNo = mem.getMemberNo();
			
				ml.setMemberNo(memberNo);
				ml.setMvNo(mvNo);
			 MLike mlChk = movieService.movieLikeCheckGet(ml);
	            
				if(mlChk == null) {//해당영화가 좋아요 디비에 없을때
					
					mlikeHeart = 0;
					
				}else {//해당영화가 좋아요 디비에 있을때
					
					mlikeHeart = 1;

				}
			 
			  }
			 //영화 평점 조회
			 double starAvg = movieService.movieStarAvgGet(mvNo);
			 
			 
			 //해당 영화와 같은 카테고리인 추천영화 목록 조회
			 ArrayList<Movie> mList = movieService.sameKeywordMvGetList(mvNo);
			 
			 model.addAttribute("m",m);
			 model.addAttribute("mList",mList);
			 model.addAttribute("mrList",mrList);
			 model.addAttribute("starAvg",starAvg);
			 model.addAttribute("mlikeHeart",mlikeHeart);
			 
//			 System.out.println("추천영화 : "+mList);
			 
			 return "movie/MV_0020";
			}else {
			    model.addAttribute("errorMsg","조회실패");
				return "common/errorPage";
			
			}
			
		}
		
		//영화리스트(MV_0010) 인기순 필터
		@RequestMapping("mvBest.mv")
		public String movieGetmvBest(@RequestParam(value="currentPage", defaultValue="1") int currentPage ,Model model) {
			
			
			//영화리스트 페이징 처리
			int listCount = movieService.selectMovieCount();
			int pageLimit = 10;
			int movieLimit = 16; //한페이지에 보여질 영화 갯수
			
			PageInfo pi = Pagination.getPageinfo(listCount, currentPage, pageLimit, movieLimit);
			
			//영화 전체 조회
			ArrayList<Movie> mvBestList = movieService.movieGetmvBest(pi);
			model.addAttribute("mvFilter","인기순");
			model.addAttribute("movieAllList",mvBestList);
			model.addAttribute("pi",pi);
			
			//System.out.println(mvBestList);
			
			return "movie/MV_0010";
		}
		
		//영화리스트(MV_0010) 예매순 필터
	    @RequestMapping("mvHigh.mv")
		public String movieGetmvHigh(@RequestParam(value="currentPage", defaultValue="1") int currentPage ,Model model) {
			

			//영화리스트 페이징 처리
			int listCount = movieService.selectMovieCount();
			int pageLimit = 10;
			int movieLimit = 16; //한페이지에 보여질 영화 갯수
			
			PageInfo pi = Pagination.getPageinfo(listCount, currentPage, pageLimit, movieLimit);
			
			//영화 전체 조회
			ArrayList<Movie> mvHighList = movieService.movieGetmvHigh(pi);
			model.addAttribute("mvFilter","예매율순");
			model.addAttribute("movieAllList",mvHighList);
			model.addAttribute("pi",pi);
			
			return "movie/MV_0010";
			
			
		}
		
		//영화리스트(MV_0010) 최신순 필터
	    @RequestMapping("mvNew.mv")
		public String movieGetmvNew(@RequestParam(value="currentPage", defaultValue="1") int currentPage ,Model model) {
			
	    	//영화리스트 페이징 처리
			int listCount = movieService.selectMovieCount();
			int pageLimit = 10;
			int movieLimit = 16; //한페이지에 보여질 영화 갯수
			
			PageInfo pi = Pagination.getPageinfo(listCount, currentPage, pageLimit, movieLimit);
			
			//영화 전체 조회
			ArrayList<Movie> mvNewList = movieService.movieGetmvNew(pi);
			model.addAttribute("mvFilter","최신순");
			model.addAttribute("movieAllList",mvNewList);
			model.addAttribute("pi",pi);
			
			return "movie/MV_0010";
		}
		
		//영화리스트(MV_0010) 현재상영작 필터
		@RequestMapping("mvNow.mv")
		public String movieGetmvNow(@RequestParam(value="currentPage", defaultValue="1") int currentPage ,Model model) {
		
			//영화리스트 페이징 처리
			int listCount = movieService.selectNowMovieCount();
			int pageLimit = 10;
			int movieLimit = 16; //한페이지에 보여질 영화 갯수
			
			PageInfo pi = Pagination.getPageinfo(listCount, currentPage, pageLimit, movieLimit);
			
			//영화 전체 조회
			ArrayList<Movie> mvNowList = movieService.movieGetmvNow(pi);
			model.addAttribute("mvFilter","현재상영작");
			model.addAttribute("movieAllList",mvNowList);
			model.addAttribute("pi",pi);
			
			return "movie/MV_0010";
			
		}
		
		//영화리스트(MV_0010)  검색결과
		@RequestMapping("mvSearch.mv")
		public String movieGetmvSearch(@RequestParam(value="currentPage", defaultValue="1") int currentPage 
				                       ,String SearchKeyword
				                       ,Model model) {
		
			//검색결과 리스트 페이징 처리
			String SearchKeyword1 = (SearchKeyword.replace(" ", "")).toLowerCase();
			int listCount = movieService.selectSearchMovieCount(SearchKeyword1);
			int pageLimit = 10;
			int movieLimit = 16; //한페이지에 보여질 영화 갯수
			
			//System.out.println("검색어 : "+(SearchKeyword.replace(" ", "")).toLowerCase());
			
			PageInfo pi = Pagination.getPageinfo(listCount, currentPage, pageLimit, movieLimit);
			
			//영화 전체 조회
			ArrayList<Movie> mvSearchList = movieService.movieGetmvSearch(pi,SearchKeyword1);
			//model.addAttribute("mvFilter","검색결과");
			model.addAttribute("movieAllList",mvSearchList);
			model.addAttribute("SearchKeyword",SearchKeyword);
		    model.addAttribute("pi",pi);
			
			return "movie/MV_0080";
			
			
			
		}
		
		//영화 상세보기 리뷰 인서트
		@ResponseBody
		@RequestMapping(value="mvReviewInsert.mv", produces="application/json; charset=UTF-8;")
		public String movieReviewInsert(int memberNo, int mvNo, String reContent, double reStar) {
			
			
//			System.out.println(memberNo+"  "+mvNo+"  "+reContent+"  "+reStar);
			
			Review re = new Review();
			re.setMemberNo(memberNo);
			re.setMvNo(mvNo);
			re.setReContent(reContent);
			re.setReStar(reStar);
			
			int result = movieService.movieReviewInsert(re);
			
			ArrayList<Review> mrList = null;
			
			if(result>0) {
				//영화번호로 리뷰 정보 조회
			 mrList = movieService.movieReviewGetList(mvNo);
			 
			}
			 
			
//			System.out.println("결과 : "+result);
			
			
			return new Gson().toJson(mrList);
		}
		
		//영화 상세보기 좋아요
		@ResponseBody
		@RequestMapping(value="MLike.mv", produces="application/json; charset=UTF-8;")
		public String movieLikeInsert(int memberNo, int mvNo) {
			
			MLike ml = new MLike();
			int result = 0;
			
			ml.setMvNo(mvNo);
			ml.setMemberNo(memberNo);
			
//			System.out.println("좋아요멤버넘버 : "+memberNo);
//			System.out.println("좋아요무비넘버 : "+mvNo);
			
			//가지고 온 회원번호화 영화번호를 가지고 좋아요 테이블에 디비가 있는지 없는지 조회해오는 구문
			MLike mlChk = movieService.movieLikeCheckGet(ml);
            
			if(mlChk == null) {
				
				//중복값이 없으면 좋아요 테이블에 인서트
				result = movieService.movieLikeInsert(ml);
				
				if(result>0) {
					result=1; //인서트 성공
				}else {
					result = 2; //인서트 실패
				}
				
			}else {
				
				//중복값이 있으면 좋아요 테이블에서 디비 삭제(딜리트)
				result = movieService.movieLikeDelete(ml);
				
				if(result>0) {
					result = 3; //삭제성공
				}else {
					result= 2; //삭제실패
				}

			}
			
			return new Gson().toJson(result);
		}
		
		//마이페이지 내가 쓴 영화 리뷰 조회(MY_0050)
		@RequestMapping("review.my")
		public String movieMyReviewGetList(HttpSession session, Model model) {
			
			//로그인한 멤버넘버 확인
			Member m = (Member) session.getAttribute("loginUser");
			int memberNo = m.getMemberNo();
			//memberNo = 1;
			
			ArrayList<Review> myReviewList = movieService.movieMyReviewGetList(memberNo);
			model.addAttribute("myReviewList",myReviewList);
			System.out.println("마이페이지리뷰결과 : "+myReviewList);
			System.out.println("마이페이지멤버번호결과 : "+memberNo);
			
			return "mypage/MY_0050";
		}
		
		//영화 리뷰 수정 (업데이트)
		@ResponseBody
		@RequestMapping(value="mvUpdateReview.mv", produces="application/json; charset=UTF-8;")
		public String movieReviewUpdate(int memberNo,int reNo, String reContent, double reStar) {
			
			Review r = new Review();
			
			r.setMemberNo(memberNo);
			r.setReNo(reNo);
			r.setReContent(reContent);
			r.setReStar(reStar);
			
			int result = movieService.movieReviewUpdate(r);
			
			if(result>0){//업데이트 성공
				result = 1;
			}else {//업데이트 실패
				result=0;
			}
			
			return new Gson().toJson(result);
		}
		
		//영화 리뷰 삭제 (업데이트)
		@ResponseBody
		@RequestMapping(value="mvDeleteReview.mv", produces="application/json; charset=UTF-8;")
		public String movieReviewDelete(int reNo, int memberNo) {
			
			Review r = new Review();
			r.setMemberNo(memberNo);
			r.setReNo(reNo);
			
			int result = movieService.movieReviewDelete(r);
			
			if(result>0){//삭제 성공
				result=1;
			}else {//삭제 실패
				result=0;
			}
			
			return new Gson().toJson(result);
		}
		
		//마이페이지 좋아요 목록 조회
		@RequestMapping("myLikeMovieList.mv")
		public String movieMyMLikeGetList(HttpSession session, Model model,@RequestParam(value="currentPage", defaultValue="1") int currentPage) {
		 
			int memberNo = ((Member)session.getAttribute("loginUser")).getMemberNo();
			//영화리스트 페이징 처리
			int listCount = movieService.selectMyMLikeMovieCount(memberNo);
			int pageLimit = 10;
			int movieLimit = 16; //한페이지에 보여질 영화 갯수
			
//			System.out.println("좋아요 멤버넘버 : "+memberNo);
//			System.out.println("좋아요 리스트카운트 : "+listCount);
			PageInfo pi = Pagination.getPageinfo(listCount, currentPage, pageLimit, movieLimit);
			
		  
		   ArrayList<Movie> myLikeMovieList = movieService.movieMyMLikeGetList(memberNo,pi);
		   model.addAttribute("myLikeMovieList",myLikeMovieList);
		   model.addAttribute("pi",pi);
			
			return "movie/MV_0150";
			
		}
		
		//마이페이지 예매내역 조회
		@RequestMapping("myTicketList.mv")
		public String movieMyTSuccessGetList(HttpSession session, Model model,@RequestParam(value="currentPage", defaultValue="1") int currentPage) {
			
			int memberNo = ((Member)session.getAttribute("loginUser")).getMemberNo();
			//예매리스트 페이징 처리
			int listCount = movieService.selectMyTSuccessCount(memberNo);
			int pageLimit = 10;
			int movieLimit = 5; //한페이지에 보여질 예매내역 갯수
			
			PageInfo pi = Pagination.getPageinfo(listCount, currentPage, pageLimit, movieLimit);
			
			ArrayList<Tsuccess> tsList = movieService.movieMyTSuccessGetList(memberNo,pi);
			
			System.out.println("예매내역 결과 : "+tsList);
			model.addAttribute("tsList", tsList);
			model.addAttribute("pi", pi);
			model.addAttribute("tkFilter", null);
			
			
			return "movie/MV_0160";
			
		}
		
		//예매목록 날짜 조회
		@RequestMapping("mvTicketDate.mv")
		public String movieTicketDateGetList(DateChk date,HttpSession session,Model model
				,@RequestParam(value="currentPage", defaultValue="1") int currentPage) {
			
			String memberNo=String.valueOf(((Member)session.getAttribute("loginUser")).getMemberNo());
			
			Tsuccess ts = new Tsuccess();
			ts.setMvDateChk(date);
			ts.setMemberNo(memberNo);
			
		
			//System.out.println("조회날짜 : "+date.getStartDate()+" , "+date.getEndDate());
			//예매리스트 페이징 처리
			int listCount = movieService.selectTicketDateCount(ts);
			int pageLimit = 10;
			int movieLimit = 5; //한페이지에 보여질 예매내역 갯수
			
			PageInfo pi = Pagination.getPageinfo(listCount, currentPage, pageLimit, movieLimit);
			
			System.out.println("예매날짜조회페이징 : "+pi);
			
			ArrayList<Tsuccess> tsList = movieService.movieTicketDateGetList(ts,pi);
		
			//System.out.println("예매내역 결과 : "+tsList);
			model.addAttribute("tsList", tsList);
			model.addAttribute("pi", pi);
			model.addAttribute("startDate", date.getStartDate());
			model.addAttribute("endDate", date.getEndDate());
			model.addAttribute("tkFilter", "기간조회");
			
			
			
			return "movie/MV_0160"; 
		}
		
		//마이페이지 예매내역 상세페이지 조회
		@RequestMapping("myTicketDetail.mv")
		public String movieMyTDetailGetList(HttpSession session, Model model,@RequestParam(value="tkno") String tkNo) {
			String memberNo = String.valueOf(((Member)session.getAttribute("loginUser")).getMemberNo());
			
			//System.out.println("예매상세번호 : "+tkNo);
			//예매 상세내역 조회
			
			Tdetail td = new Tdetail();
			 td.setMemberNo(memberNo);
			 td.setTkNo(tkNo);
			
			Tsuccess ts = movieService.movieTSuccessGet(td);
			ArrayList<Tdetail> tdList = movieService.movieMyTDetailGetList(td);
			
			System.out.println("예매목록1 : "+ts);
			System.out.println("예매목록2 : "+tdList);
			
			model.addAttribute("ts",ts);
			model.addAttribute("tdList",tdList);
			
			return "movie/MV_0170";
			
		}
		
		
		//마이페이지 예매상세조회 티켓 취소
		@ResponseBody
		@RequestMapping(value="myTicketDelete.mv", produces="application/json; charset=UTF-8;")
		public String myTicketDelete(HttpSession session,@RequestParam(value="mvNoArray[]")List<String> mvNoArray, String tkNo,int allListLength, int chkListLength) {
			
			String memberNo = String.valueOf(((Member)session.getAttribute("loginUser")).getMemberNo());
			Tdetail td = new Tdetail();
			td.setMemberNo(memberNo);
			td.setMvNoArray(mvNoArray);
			td.setTkNo(tkNo);
			
			System.out.println("멤버번호 : "+memberNo);
			System.out.println("선택번호 : "+td.getMvNoArray());
			System.out.println("디테일 넘버 : "+tkNo);
			int result1 =0;
			int result2 =0;
			int result =0;
			
			//System.out.println("선택된 갯수 : "+chkListLength);
			//System.out.println("총 데이터 갯수 : "+allListLength);
			
			if(allListLength==chkListLength) {//전체취소
				
				//tdetail 수정
				result1 = movieService.myTicketAllDelete(td);
				
				System.out.println("result1 : "+result1);
				
				//tsuccess수정
				result2 = movieService.myTicketAlldelete2(td);
				
				System.out.println("result1 : "+result2);
				
				if(result1*result2>0) {
					 
					result = 1; //전체취소 결과
					
				}else {
					
					result = 0; //전체취소 실패
					
				}
				
				
				
			}else if(allListLength>chkListLength){//부분취소
				
				//tdetail 수정
				result1 = movieService.myTicketDelete(td);
				
				
				//취소된 티켓과 전체 주문 수 비교
				int countTk = movieService.myCancleTicketCount(td);
				
				if(allListLength==countTk) {//주문수 == 취소된 티켓 수 = 전체 취소
					
					result2 = movieService.myTicketAlldelete2(td);
				
				}else {//주문수 > 취소된 티켓 수 = 부분 취소
					
					//tsuccess 수정
				result2 = movieService.myTicketDelete2(td);
					
				}
				
				if(result1*result2>0) {
					
					result = 2; //부분취소 결과
					
				}else {
					
					result = 0; //부분취소 실패
					
				} 
				
			}
			
			//System.out.println("결과행수 : "+result);
			
		    
			
			return new Gson().toJson(result);
		}
		
		
		
		//추천영화 페이지 리스트 조회
		@RequestMapping("movieRecommend.mv")
		public String movieRecommendGetList(HttpSession session, Model model,@RequestParam(value="currentPage", defaultValue="1") int currentPage) {
			
			int memberNo = ((Member)session.getAttribute("loginUser")).getMemberNo();
			
			//추천영화리스트 페이징 처리
			int listCount = movieService.selectMyMLikeMovieCount(memberNo);
			int pageLimit = 10;
			int movieLimit = 6; //한페이지에 보여질 영화 갯수
			
//			System.out.println("좋아요 멤버넘버 : "+memberNo);
//			System.out.println("좋아요 리스트카운트 : "+listCount);
			PageInfo pi = Pagination.getPageinfo(listCount, currentPage, pageLimit, movieLimit);
			
		  
		   ArrayList<Movie> mvLikeList = movieService.movieMyMLikeGetList(memberNo,pi);
		   
		   //현재상영영화 리스트
		   ArrayList<Movie> mvBestList = new ArrayList<>();
		  
		   //좋아요기반 추천영화 리스트
		   ArrayList<Movie> mvRecoList = new ArrayList<>();
		 
		   //좋아요 디비가 있는지 없는지 확인
		   if(mvLikeList.isEmpty()) {//좋아요가 없으면
			  
			  //좋아요 디비가 없으면 현재상영순으로 조회
			  mvBestList = movieService.movieGetmvBest(pi);
			  mvRecoList = null; 
			   
			   
		   }else {//좋아요가 있으면
			 //좋아요 디비가 있으면 해당 키워드로 영화 조회
			   
			 mvBestList = movieService.movieGetmvNow(pi);
			 mvRecoList = movieService.movieRecommendGetList(memberNo);   
			   
		   
		   }
		   
		  // System.out.println("좋아요기반추천리스트 : "+mvRecoList);
		  // System.out.println("현재상영작추천리스트 : "+mvBestList);
		   
		   model.addAttribute("mvBestList",mvBestList);
		   model.addAttribute("mvRecoList",mvRecoList);
		   
		   
			return "movie/MV_0130";
		
		}
		
		
		
/*  ------------------------------   연 끝     -------------------------------------   */
		
		
		
		
		
		
		
}
