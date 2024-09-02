<!DOCTYPE html>
<html lang="en">
<head>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>게시판 글쓰기</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha1/css/bootstrap.min.css" integrity="sha384-r4NyP46KrjDleawBgD5tp8Y7UzmLA05oM1iAEQ17CSuDqnUK2+k9luXQOfXJCJ4I" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/chartist.js/latest/chartist.min.css">
<link type="text/css" rel="stylesheet" href="/toyProject/css/bootStrap/bootStrap.css"/>
</head>
<body>
	<jsp:include page="/WEB-INF/jsp/toyProject/cmmn/navbar.jsp" />
	<div class="container-fluid">
		<div class="row">
			<jsp:include page="/WEB-INF/jsp/toyProject/cmmn/sidebar.jsp" />
			<main class="col-md-9 ml-sm-auto col-lg-10 px-md-4 py-4">
				<div class="card mb-4">
					<div class="card-header">
						<h5>글 쓰기</h5>
					</div>
					<div class="card-body">
						<form method="post" action="/toyProject/register.do">
							<div class="form-group mb-3">
								<label for="title">글 제목:</label>
								<input type="text" class="form-control" id="title" name="title" required>
							</div>
							<div class="form-group mb-3">
								<label for="content">글 내용:</label>
								<textarea class="form-control" id="content" name="content" rows="10" required></textarea>
							</div>
							<div class="text-end">
								<button type="submit" class="btn btn-primary">글 등록</button>
								<a class="btn btn-secondary" onclick="window.history.back(); return false;">취소</a>
							</div>
						</form>
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
</body>
</html>