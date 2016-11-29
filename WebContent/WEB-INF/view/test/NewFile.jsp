<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!-- 기본 템플릿을 작성! -->
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">
<!-- Optional theme -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css"
	integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp"
	crossorigin="anonymous">
<!-- Latest compiled and minified JavaScript -->

<!-- 초기화 -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>



<style>
* {
	margin: 0;
	padding: 0
}

body {
	font-family: 'Open Sans', arial, sans-serif;
}

li {
	list-style: none;
}

a {
	text-decoration: none;
}
</style>


<style>
#top_view{
position: fixed;

top: 0; left: 0; right:0;
height : 50px;

 padding:3px;
  background-color:#fff;
  font-color:#FF8000;
  height:50px;
  width:100px;
  margin:5px;
  font-size:30px;
  font-weight:700;


}

#down_view{
position: fixed;

top: 0; left: 0; right:0;
height : 50px;

 padding:3px;
  background-color:#fff;
  font-color:#FF8000;
  height:50px;
  

}

#wrap {
	overflow: hidden;
}

#wrap>#main_lab {
	float: left;
	width: 400px
}

#wrap>#content_wrap {
	float: right;
	width: 100%;
	margin-right: -430px
}

#main_lab {
	position: fixed;
	top: 50px;
	bottom: 50px;
	left: 0;
	width: 400px;
}

#content_wrap {

   width: 400px;
	
}

#wrap>#content_wrap>#content {
	padding-right: 500px;
}
</style>

<body>
   

	<div id="wrap">
	
	 <div id="top_view">
    <a class="logo" href="#" style="color: #FF8000">Pupu</a> 
    </div>

    
		<nav id="main_lab">

			
			<ul class="nav">
				<li>


					<p>
						<button class="btn" id="btn" type="submit">

							<img class="btn-img" src="/users/${uid }" width="380"
								height="300">
						</button>

					</p>
				</li>
			</ul>
			<p>
				무엇을 원하던 전부!</br>
			</p>



		</nav>

		<div id="content_wrap">
		    
		    
			<div id="content">
				<div class="col-sm-12" id="featured">
					<div class="page-header text-muted">
						<i class="glyphicon glyphicon-pencil"></i> <b>내가 남긴말이 나타나는 곳
							이란다</b>
						<button type="submit" onclick="loadDoc()" class="btn"
							style="color: #FF8000">
							<b><i class="glyphicon glyphicon-heart"></i>LIKE</b>
						</button>
						<span>
							<button type="submit" id="bt" class="btn" style="color: #FF8000">
								<i class="glyphicon glyphicon-remove"></i><b>WRITE</b>
							</button>
						</span>



					</div>


					<div class="row">
						<div class="col-sm-10">
							<div id="port" >
							<textarea style="width:500;  height: 100;   background: #E6E6E6;"  placeholder="COMMENT" id="write">  
								</textarea>
							</div>
						</div>
					</div>
					
					
					
					
				</div>
				
	           


			
		    <div id="ccc">
		    
		    
		    </div>



     	  <div class="row">
     	  <div class="col-sm-4 text-center">
             <h3>상품정보</h3>
              <a href="#"><img src="//placehold.it/400/f0f0f0"
										class="img-respsonsive img-circle" height="100"/></a>
										
            
            </div>
            
            
             <div class="col-sm-4 text-center">
             <h3>상품정보</h3>
              <a href="#"><img src="//placehold.it/400/f0f0f0"
										class="img-respsonsive img-circle" height="100"/></a>
										
            
            </div>
            
            
             <div class="col-sm-4 text-center">
             <h3>상품정보</h3>
              <a href="#"><img src="//placehold.it/400/f0f0f0"
										class="img-respsonsive img-circle" height="100"/></a>
										
            
            </div>
            </div>
         

			</div>
			
            

		</div>
       

	</div>
	<!-- script references -->

			<script>
	$("#bt").dblclick(function(){
		
		$(document.getElementById("port")).slideToggle();
	});
	
	 $("#write").change(function(){
		  var memo =$("#write").val();
		  $("#write").val("");
		 // $.get("/memo/service",memo); 
		  $("#ccc").append('<h2>'+memo+'</h2>');
		  $("#ccc").append('<b>'+"IP:"+'</b>');
		  $("#ccc").append("<a href='#' class='pull-right'>");
		  $("#ccc").append("<img src='http://api.randomuser.me/portraits/thumb/women/17.jpg' class='img-circle'/>");
		  $("#ccc").append('</a>');
		  $("#ccc").append('<hr>');
		   
		   
	   });
	
	
	
</script>

</body>