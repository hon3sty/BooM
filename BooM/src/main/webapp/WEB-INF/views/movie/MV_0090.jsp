<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- 영화 리스트 관리페이지(관리자)/ 우도균 -->
<title>영화리스트 관리페이지</title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Oswald:wght@300;400;500;600;700&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Mulish:wght@300;400;500;600;700;800;900&display=swap"
    rel="stylesheet">

    <!-- Css Styles -->
    <link rel="stylesheet" href="resources/css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="resources/css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="resources/css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="resources/css/plyr.css" type="text/css">
    <link rel="stylesheet" href="resources/css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="resources/css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="resources/css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="resources/css/style.css" type="text/css">
    <Style>
         * {
            margin: 0;
            padding: 0;
            color:white;
         }

         table {
            border-collapse: collapse;
         }

         caption {
            display: none;
         }

         a {
            text-decoration: none;
            color: inherit;
         }

         .board_list_wrap {
            padding: 50px;
            width: 1500px;
         }

         .board_list {
            width: 100%;
            border-top: 2px solid red;
         }

         .board_list tr {
            border-bottom: 1px solid #ccc;
         }

         .board_list th,
         .board_list td {
            padding: 10px;
            font-size: 14px;
         }

         .board_list .tit {
            text-align: left;
         }

         .board_list .tit:hover {
            text-decoration: underline;
         }

         /* .board_list_wrap{
            background-color: white;
         } */
         .board_list_wrap .paging {
            margin-top: 20px;
            text-align: center;
            font-size: 0;
         }
         .board_list_wrap .paging a {
            display: inline-block;
            margin-left: 10px;
            padding: 5px 10px;
            border-radius: 100px;
            font-size: 12px;
         }
         .board_list_wrap .paging a:first-child {
            margin-left: 0;
         }

         .board_list_wrap .paging a.bt {
            border: 1px solid #eee;
            background: #eee;
         }

         .board_list_wrap .paging a.num {
            border: 1px solid green;
            font-weight: 600;
            color: green;
         }

         .board_list_wrap .paging a.num.on {
            background: green;
            color: #fff;
         }

         .paging{
            color: black;
         }
         .board_list .num,
         .board_list .check {
		       width: 5%;
		   }
		    
		   .board_list .title {
		      width: 55%;
		      text-align: left;
		      padding-left: 50px;
		   }
         .board_list .date {
		      width: 15%;
		   }
	</style>
</head>

<body>
   
   <!--해더바 영역 시작-->
   <!--해더바 영역 끝  -->

   
   <!-- Blog Details Section Begin -->
   <section class="blog-details spad">
      <div class="container">
          <div class="row d-flex justify-content-center">
              <div class="col-lg-12">
                  <div class="product__page__title" style="margin: 10px;">
                      <div class="row">
                          <div class="col-lg-12 col-md-12 col-sm-12">
                              <div class="section-title">
                              <!-- ============== 예매페이지1 타이틀 영역 ============= -->
                                  <h4>관리자 페이지(리스트)</h4>
                              </div>
                          </div>
                      </div>
                  </div>
              </div>
              
            <div class="board_list_wrap">
               <!--추가 삭제 버튼 시작-->
               <div style="float: right; margin-bottom: 10px;">
                  <button style="color: black;">추가</button>
                  <button style="color: black;">삭제</button>
               </div>
               <!--추가 삭제 버튼 끝-->
               <!--영화 list 시작-->
               <table class="board_list">
                  <caption>게시판 목록</caption>
                  <thead>
                        <tr>
                           <th class="check"><input type="checkbox" onclick="selectAll(this);"></th>
                           <th class="num">번호</th>
                           <th class="title">제목</th>
                           <th >감독</th>
                           <th class="date">작성일</th>
                        </tr>
                  </thead>
                  <tbody>
                     <tr>
                        <td class="check"><input type="checkbox" name="mno"></td>
                        <td class="num">5</td>
                        <td class="tit title">
                           <a href="#">제목5</a>
                        </td>
                        <td>관리자</td>
                        <td class="date">2019-11-20</td>
                     </tr>
                     <tr>
                        <td class="check"><input type="checkbox" name="mno"></td>
                        <td class="num">4</td>
                        <td class="tit title">
                           <a href="#">제목4</a>
                        </td>
                        <td>관리자</td>
                        <td class="date">2019-11-12</td>
                     </tr>
                     <tr>
                        <td class="check"><input type="checkbox" name="mno"></td>
                        <td>3</td>
                        <td class="tit title">
                           <a href="#">제목3</a>
                        </td>
                        <td>관리자</td>
                        <td class="date">2019-11-02</td>
                     </tr>
                     <tr>
                        <td class="check"><input type="checkbox" name="mno"></td>
                        <td class="num">2</td>
                        <td class="tit title">
                           <a href="#">제목2 </a>
                        </td>
                        <td>관리자</td>
                        <td class="date">2019-10-28</td>
                     </tr>
                     <tr>
                        <td class="check"><input type="checkbox" name="mno"></td>
                        <td class="num">1</td>
                        <td class="tit title">
                           <a href="#">제목1 </a>
                        </td>
                        <td>관리자</td>
                        <td class="date">2019-10-24</td>
                     </tr>
                  </tbody>
               </table>
               <!--영화 list 끝-->
               <!-- 페이징 시작 -->
               <div class="product__pagination" style="text-align: center;">
                  <a href="#" class="current-page">1</a>
                  <a href="#">2</a>
                  <a href="#">3</a>
                  <a href="#">4</a>
                  <a href="#">5</a>
                  <a href="#"><i class="fa fa-angle-double-right"></i></a>
               </div>
               <!-- 페이징 끝 -->
            </div>
         </div>
      </div>
   </section>
      
      <!--풋터바 영역 시작-->
      <!--풋터바 영역 끝  -->
</body>

<script>
   //체크박스 클릭시 전체 선택
   function selectAll(selectAll)  {
      const checkboxes 
      = document.getElementsByName('mno');
      
      checkboxes.forEach((checkbox) => {
         checkbox.checked = selectAll.checked;
      })
   }

</script>

</html>