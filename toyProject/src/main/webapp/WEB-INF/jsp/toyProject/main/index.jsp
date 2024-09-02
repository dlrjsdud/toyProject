<!DOCTYPE html>
<html lang="en">
<head>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Bootstrap 5 Simple Admin Dashboard</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha1/css/bootstrap.min.css"
	integrity="sha384-r4NyP46KrjDleawBgD5tp8Y7UzmLA05oM1iAEQ17CSuDqnUK2+k9luXQOfXJCJ4I"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/chartist.js/latest/chartist.min.css">
<link type="text/css" rel="stylesheet"
	href="/toyProject/css/bootStrap/bootStrap.css" />
</head>
<body>
	<jsp:include page="/WEB-INF/jsp/toyProject/cmmn/navbar.jsp" />
	<div class="container-fluid">
		<div class="row">
			<jsp:include page="/WEB-INF/jsp/toyProject/cmmn/sidebar.jsp" />
			<main class="col-md-9 ml-sm-auto col-lg-10 px-md-4 py-4">
				<!-- 버튼 클릭할때마다 기간에 맞는 인기글 리스트 가져오기(비동기) -->
				<button class="btn btn-sm btn-secondary ml-3 mt-2"
					onclick="loadDailyTopPosts()">일간 인기글</button>
				<button class="btn btn-sm btn-warning ml-3 mt-2"
					onclick="loadNotices()">공지사항</button>
				<div class="row my-4">
					<div class="col-12 mb-4">
						<div class="card">
							<h5 class="card-header">일간 인기글</h5>
							<div class="card-body" id="contentArea"></div>
						</div>
					</div>
				</div>
				<jsp:include page="/WEB-INF/jsp/toyProject/cmmn/footer.jsp" />
			</main>
		</div>
	</div>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
		integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha1/js/bootstrap.min.js"
		integrity="sha384-oesi62hOLfzrys4LxRF63OJCXdXDipiYWBnvTl9Y9/TRlw5xlKIEHpNyvvDShgf/"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/chartist.js/latest/chartist.min.js"></script>
	<!-- Github buttons -->
	<script async defer src="https://buttons.github.io/buttons.js"></script>
	<script src="/toyProject/js/index.js"></script>
</body>
</html>