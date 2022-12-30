<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <title>faq 아코디언</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
 <style type="text/css">
.card{
	background-color:rgba(255, 255, 255, 0.2);
}
.card-body{
	background-color:#fff;
}

 </style>
</head>
<body>

<div class="container" style="padding-top:20px; padding-left:0px;">
	<br>
  <div id="accordion"> 
    <div class="card">
      <div class="card-header">
        <a class="card-link" data-toggle="collapse">
          Collapsible Group Item #1
        </a>
      </div>
      <div id="collapseOne" class="collapse" data-parent="#accordion">
        <div class="card-body">
          Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.
        </div>
      </div>
    </div>
    <div class="card">
      <div class="card-header">
        <a class="collapsed card-link" data-toggle="collapse">
        Collapsible Group Item #2
      </a>
      </div>
      <div id="collapseTwo" class="collapse" data-parent="#accordion">
        <div class="card-body">
          Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.
        </div>
      </div>
    </div>
    <div class="card">
      <div class="card-header">
        <a class="collapsed card-link" data-toggle="collapse">
          Collapsible Group Item #3
        </a>
      </div>
      <div id="collapseThree" class="collapse" data-parent="#accordion">
        <div class="card-body">
          Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.
        </div>
      </div>
    </div>
  </div>
</div>
    
 	<script>
        $(function(){
            $(".card-header").click(function(){

                var $answer = $(this).next();

                if($answer.css("display")=="none"){//p태그의 display가 none일때
                   
                	$answer.slideDown();
                }else{
                	
                    $answer.slideUp();
                }
            })
        })
    </script>
</body>
</html>