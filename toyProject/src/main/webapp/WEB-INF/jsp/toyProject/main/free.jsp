<!DOCTYPE html>
<html lang="en">
<head>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Bootstrap 5 Simple Admin Dashboard</title>
<link rel="stylesheet"
	href="https://uicdn.toast.com/grid/latest/tui-grid.css" />
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha1/css/bootstrap.min.css"
	integrity="sha384-r4NyP46KrjDleawBgD5tp8Y7UzmLA05oM1iAEQ17CSuDqnUK2+k9luXQOfXJCJ4I"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/chartist.js/latest/chartist.min.css">
<link type="text/css" rel="stylesheet"
	href="/toyProject/css/bootStrap/bootStrap.css" />
<link rel="stylesheet" href="https://uicdn.toast.com/tui.pagination/latest/tui-pagination.css" />
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
</head>
<link rel="icon" href="data:;base64,iVBORw0KGgo=">
<body>
	<jsp:include page="/WEB-INF/jsp/toyProject/cmmn/navbar.jsp" />
	<div class="container-fluid">
		<div class="row">
			<jsp:include page="/WEB-INF/jsp/toyProject/cmmn/sidebar.jsp" />
			<main class="col-md-9 ml-sm-auto col-lg-10 px-md-4 py-4">
				<div class="d-flex align-items-center">
					<input type="text" name="searchInput" class="search"
						onkeydown="handleKeyDown(event)">
					<button class="btn btn-sm btn-primary ml-3" onclick="search();">검색</button>
					<a class="btn btn-sm btn-warning ml-auto"
						href="${pageContext.request.contextPath}/write.do">글쓰기</a>
				</div>
				<h1></h1>
				<div id="freeGrid"></div>
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
	<script type="text/javascript" src="https://uicdn.toast.com/tui.pagination/v3.4.0/tui-pagination.js"></script>
	<script src="https://uicdn.toast.com/grid/latest/tui-grid.js"></script>

	<script src="/toyProject/js/free.js"></script>
</body>
</html>