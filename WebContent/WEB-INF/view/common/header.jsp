<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<form>
	<input type="text" size="20" style="float: left" placeholder="검색어입력" />
	<input type="button" value="search" /><br /> <br />
	<div align="left">
		<a href="/index.nhn" style="float: left"> 홈으로</a>
	</div>
</form>
<div style="width: 200; float: right">


	<a href="/cart"><input type="button" value="장바구니" /></a> <a
		href=""><input type="button" value="도움말" /></a> <a
		href="javascript:login()"> <input type="button" value="로그인"
		id="showlog" />
	</a>

	</div>
	<script>
		function login() {
		
			var uri = "/login.nhn";

			window.open(uri, "c", "height=400,width=300");
		}
	</script>

</div>