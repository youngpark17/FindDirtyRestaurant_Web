<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ page import="java.io.PrintWriter"%>
<%@ page import="res.ResDAO"%>
<%@ page import="res.Res"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.io.InputStreamReader"%>
<%@ page import="java.net.HttpURLConnection"%>
<%@ page import="java.net.URL"%>
<%@ page import="java.io.BufferedReader"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<meta name="description" content="">
<meta name="author" content="">

<title>Starter Template for Bootstrap</title>

<!-- Bootstrap core CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<!-- Custom styles for this template -->
<link href="./css/starter-templete.css" rel="stylesheet">
<script src="./js/index.js?v=<%=System.currentTimeMillis() %>"></script>

</head>

<body>

	<nav class="navbar navbar-inverse navbar-fixed-top">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#navbar" aria-expanded="false"
					aria-controls="navbar">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#">Find Dirty Restaurant</a>
			</div>
			<div id="navbar" class="collapse navbar-collapse">
				<ul class="nav navbar-nav">
					<li class="active"><a href="#">Home</a></li>
					<li><a href="#about">About</a></li>
					<li><a href="#contact">Contact</a></li>
				</ul>
			</div>
			<!--/.nav-collapse -->
		</div>
	</nav>

	<div class="container">

		<div class="starter-template">
			<h1>Find Dirty Restaurant</h1>
			<p class="lead">서울시 중구 식품위생법 위반 업소의 데이터</p>
		</div>

	</div>
	<!-- /.container -->


	<div class="input-group" style="display: flex; margin-bottom: 15px;">
		<div class="dropdown" style="margin-right: 10px;">
			<button class="btn btn-default dropdown-toggle" type="button"
				id="dropdownMenu1" data-toggle="dropdown" aria-expanded="true">정렬 기준<span class="caret"></span>
			</button>
			<ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu1">
				<li role="presentation"><a id="bt1" role="menuitem" tabindex="-1"
					href="#">번호로 정렬</a></li>
				<li role="presentation"><a id="bt2" role="menuitem" tabindex="-1"
					href="#">업소명 정렬</a></li>
				<li role="presentation"><a id="bt3" role="menuitem" tabindex="-1"
					href="#">날짜별 정렬</a></li>
			</ul>
		</div>
		<div class="dropdown">
			<button class="btn btn-default dropdown-toggle" type="button"
				id="dropdownMenu2" data-toggle="dropdown" aria-expanded="true">정렬 방법<span class="caret"></span>
			</button>
			<ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu1">
				<li role="presentation"><a id="bt4" role="menuitem" tabindex="-1"
					href="#">오름차순 정렬</a></li>
				<li role="presentation"><a id="bt5" role="menuitem" tabindex="-1"
					href="#">내림차순 정렬</a></li>
			</ul>
		</div>
		
     	 <button class="btn btn-default" id="sort-btn" style="margin-left:10px;">정렬해서 보기</button>
      


	</div>


	<table class="table">
		<thead>
			<tr>
				<th scope="col">#</th>
				<th scope="col">음식점 명</th>
				<th scope="col">위반 날짜</th>
				<th scope="col">처분 내용</th>
				<th scope="col">주소</th>
			</tr>
		</thead>
		<tbody>
	
			<% List<Res> list = (ArrayList)request.getAttribute("list");
			for(int i=0; i<list.size(); i++){
				
			%>
			<tr>
				<td><%= i+1 %></td>
				<td><%= list.get(i).getName() %></td>
				<td><%= list.get(i).getDate()%></td>
				<td><%= list.get(i).getContent()%></td>
				<td><%= list.get(i).getAdd()%></td>
			</tr>
			
			<%} %>

		
		</tbody>
	</table>


	<!-- Bootstrap core JavaScript
    ================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->
	<script src="./js/index.js"></script>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
</body>
</html>
