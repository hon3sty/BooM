<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- [게시판 : 고객센터] 공지사항 작성 : 이지은 -->
<title>공지사항</title>
<style type="text/css">
#cs{
	position: relative;
    width: 980px;
    margin: 0 auto;
}
#ntc2{
    float: left;
    width: 800px;
    height: 600px;
    padding-top: 15px;
    margin: -5px 0px 0px -5px;

}
#ntc2 #list li a {
    padding: 24px 20px 25px 17px; 
    display: block;
    width: 94px;
    height: 32px;
    color: #222;
    line-height: 150%;
    font-weight: 500;
   	background-color: #fff;
}
#ntc2 #list li {
    margin: 5px 0px 0px 5px;
    float: left;
}
#list{
	list-style: none;
}
#ntc1{
	position: relative;
    left: 200px;
    bottom: 300px;
    color: #fff;
}
h2.tit {
    padding: 0 0 26px 0;
    font-size: 1.8666em;
    font-weight: 400;
    letter-spacing: -1px;
    line-height: 1.1;
    color: #fff;
}
.board-list-util {
    margin: 30px 0 15px 0;
    text-align: right;
}
.board-list-util .result-count {
    position: relative;
    float: left;
    margin: 0;
    padding-top: 15px;
    line-height: 1.1;
    vertical-align: top;
}
.board-list-util select {
    display: inline-block;
    vertical-align: middle;
    width: 150px;
    height: 33px;
    border: 1px solid #d8d9db;
/*     border-radius: 3px; */
    padding: 0 5px;
    margin-right: 7px;
    margin-bottom: 3px;
}
.bootstrap-select.open>.dropdown-toggle {
    border-bottom: 0;
    border-radius: 4px 4px 0 0;
}
.board-search {
    position: relative;
    display: inline-block;
    vertical-align: middle;
    width: 230px;
    height: 36px;
    margin: 0;
    padding: 0 31px 0 0;
/*     border: 1px solid #d8d9db; */
    border-radius: 3px;
}
.board-search .input-text {
    display: block;
    width: 100%;
    height: 31.6px;
    border: 0;
}
.board-search .btn-search-input {
    position: absolute;
    right: 1px;
   	bottom: 5px;
}
.btn-search-input {
    overflow: hidden;
    width: 30px;
    height: 31px;
    margin: 0;
    padding: 0;
    font-size: 0;
    line-height: 0;
    border: none;
    text-indent: -9999px;
    background: #fff url(https://img.megabox.co.kr/static/pc/images/common/btn/btn-search-input.png) no-repeat center;
}
#uploadBtn {
    border: 1px solid #555;
    background-color: #555;
    line-height: 36px;
    height: 36px;
    border-radius: 4px;
    color: #fff;
    padding: 0 20px;
    margin-left: 10px;
}
.table-wrap {
    position: relative;
    border-top: 1px solid #fff;
}
.board-form tbody td, .board-form tbody th {
    position: relative;
    height: 50px;
    padding: 7px 15px;
    text-align: left;
    border-bottom: 1px solid #d1d5dd;
}
.input-text {
    display: inline-block;
    width: 100%;
    height: 32px;
    padding: 0 10px;
    line-height: 30px;
    color: #444;
    border: 1px solid #d8d9db;
    vertical-align: middle;
}
.board-form tbody th {
  	border-right: 1px solid #d1d5dd;
}
.input-textarea {
    display: inline-block;
    width: 100%;
    height: 200px;
    padding: 10px;
    line-height: 16px;
    color: #333;
    border-radius: 0!important;
    border: 1px solid #d8d9db;
    vertical-align: middle;
}
/* 파일 첨부 css 시작*/
.file-upload label {
    display: inline-block;
    padding: .5em .75em;
    color: #999;
    font-size: inherit;
    line-height: normal;
    vertical-align: middle;
    background-color: #fdfdfd;
    cursor: pointer;
    border: 1px solid #ebebeb;
    border-bottom-color: #e2e2e2;
    border-radius: .25em;
    margin-bottom: 0rem;
}
.file-upload .upload-name {
    display: inline-block;
    padding: .5em .75em;  /* label의 패딩값과 일치 */
    font-size: inherit;
    font-family: inherit;
    line-height: normal;
    vertical-align: middle;
    background-color: #f5f5f5;
    border: 1px solid #ebebeb;
    border-bottom-color: #e2e2e2;
    border-radius: .25em;
    -webkit-appearance: none; /* 네이티브 외형 감추기 */
    -moz-appearance: none;
    appearance: none;
}
/* imaged preview */
.file-upload .upload-display {  /* 이미지가 표시될 지역 */
    margin-bottom: 5px;
}
@media(min-width: 768px) { 
    .file-upload .upload-display {
        display: inline-block;
        margin-right: 5px;
        margin-bottom: 0;
    }
}
.file-upload .upload-thumb-wrap {  /* 추가될 이미지를 감싸는 요소 */
    display: inline-block;
    width: 54px;
    padding: 2px;
    vertical-align: middle;
    border: 1px solid #ddd;
    border-radius: 5px;
    background-color: #fff;
}
.file-upload .upload-display img {  /* 추가될 이미지 */
    display: block;
    max-width: 100%;
    width: 100% \9;
    height: auto;
}
/* 파일 첨부 css 끝*/
</style>
</head>

<body>
<!-- 헤더  include 영역 시작-->
<jsp:include page="../common/header.jsp"/>
<!-- 헤더  include 영역 끝-->

<div id="cs">
	<div id="cols-content">
		<section class="product spad">
     		 <div class="row">
		 		  <!-- 사이드바 시작 -->
		          <div class="col-lg-4 col-md-6 col-sm-8">
		              <div class="product__sidebar">
		    			<div class="product__sidebar__comment">
					        <div class="section-title">
					            <h5><a href="csMainForm.bo" style="color:#fff;">고객센터</a></h5>
					        </div>
					        <div class="product__sidebar__comment__item">
					            <div class="product__sidebar__comment__item__pic">
					            </div>
					            <div class="product__sidebar__comment__item__text">
					                <h5><a href="noticeList.bo" style="color:#e53637;">공지사항</a></h5>
					            </div>
					        </div>
					        <div class="product__sidebar__comment__item">
					            <div class="product__sidebar__comment__item__pic">
					            </div>
					            <div class="product__sidebar__comment__item__text">
					                <h5><a href="faqListForm.bo">자주하는 질문</a></h5>
					            </div>
					        </div>
					        <div class="product__sidebar__comment__item">
					            <div class="product__sidebar__comment__item__pic">
					            </div>
					            <div class="product__sidebar__comment__item__text">
					                <h5><a href="#">1:1 문의</a></h5>
					            </div>
					        </div>
					        <div class="product__sidebar__comment__item">
					            <div class="product__sidebar__comment__item__pic">
					            </div>
					            <div class="product__sidebar__comment__item__text">
					                <h5><a href="#">분실물 문의</a></h5>
					            </div>
					        </div>
					    </div>
					</div>
				</div>
				<!-- 사이드바 끝 -->
				
				<!-- 리스트 영역 시작 -->
				<div id="ntc1">
					<h2 class="tit">공지사항</h2>
					<form name="regFrm" method="post" id="ntc2">
					<input type="hidden" name="inqLclCd" value="INQD01">
					<input type="hidden" name="custInqStatCd" value="INQST1">
					<input type="hidden" name="cdLvl" value="3">
					<input type="hidden" name="fileNo" value="">

					<div class="table-wrap mt10">
						<table class="board-form va-m">
							<colgroup>
								<col style="width:150px;">
								<col>
								<col style="width:150px;">
								<col>
							</colgroup>
							<tbody>
								<tr>
									<th scope="row"><label for="qnaCustInqTitle">제목*</label> <em class="font-orange"></em></th>
									<td colspan="3" style="width:700px;"><input type="text" name="custInqTitle" id="qnaCustInqTitle" class="input-text" maxlength="100"></td>
								</tr>
								<tr>
									<th scope="row"><label for="textarea">내용*</label> <em class="font-orange"></em></th>
									<td colspan="3" style="width:700px;">
										<div class="textarea">
											<textarea id="textarea" name="custInqCn" rows="5" cols="30" title="내용입력" 
											class="input-textarea" placeholder="내용 입력" style="width:100%;" maxlength="500"></textarea>
											<div class="util">
												<p class="count" style="color:#fff">
													<span id="textareaCnt">0</span> / 500
												</p>
											</div>
										</div>
									</td>
								</tr>
								<tr>
									<th scope="row">첨부파일</th>
									<td colspan="3">
										<div class="file-upload preview-image">
										    <input type="text" class="upload-name" value="파일선택" disabled="disabled">
										   	 	<label for="input-file">파일선택</label> 
										    <input type="file" id="input-file" class="upload-hidden" style="display:none;"> 
										</div>
									</td>
								</tr>
							</tbody>
						</table>
					</div>
					<br>
					<div class="anime__details__btn" style="text-align:center;">
                        <a href="noticeInsert.bo" class="follow-btn">등록</a>
                    </div>
				</form>
					<!-- 리스트 영역 끝 -->
 				 </div>
			</div>
		</section>
	</div>
</div>

<!-- 본문 글자 수 세기 -->
 <script>
        $(function(){
            $("#textarea").keyup(function(){    
                $("#textareaCnt").text($(this).val().length); 
            });
        });
 
  
  $(document).ready(function(){

     //$('#ex_filename').change(function() {
     //	var filename = $(this).val();
     //	$('.upload-name').val(filename);
     //});

     var fileTarget = $('.file-upload .upload-hidden');

     fileTarget.on('change', function(){  // 값이 변경되면
          if(window.FileReader){  // modern browser
               var filename = $(this)[0].files[0].name;
          } 
          else {  // old IE
               var filename = $(this).val().split('/').pop().split('\\').pop();  // 파일명만 추출
          }

          // 추출한 파일명 삽입
          $(this).siblings('.upload-name').val(filename);
     });
}); 

//preview image 
var imgTarget = $('.preview-image .upload-hidden');

imgTarget.on('change', function(){
     var parent = $(this).parent();
     parent.children('.upload-display').remove();

     if(window.FileReader){
          //image 파일만
          if (!$(this)[0].files[0].type.match(/image\//)) return;

          var reader = new FileReader();
          reader.onload = function(e){
               var src = e.target.result;
               parent.prepend('<div class="upload-display"><div class="upload-thumb-wrap"><img src="'+src+'" class="upload-thumb"></div></div>');
          }
          reader.readAsDataURL($(this)[0].files[0]);
     }

     else {
          $(this)[0].select();
          $(this)[0].blur();
          var imgSrc = document.selection.createRange().text;
          parent.prepend('<div class="upload-display"><div class="upload-thumb-wrap"><img class="upload-thumb"></div></div>');

          var img = $(this).siblings('.upload-display').find('img');
          img[0].style.filter = "progid:DXImageTransform.Microsoft.AlphaImageLoader(enable='true',sizingMethod='scale',src=\""+imgSrc+"\")";        
     }
});

</script>
</body>
</html>