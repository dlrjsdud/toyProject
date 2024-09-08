<!DOCTYPE html>
<html lang="en">
<head>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>게시판 글 상세보기</title>
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
				<div class="card mb-4">
					<div class="card-header">
						<h5>${post.title}</h5>
					</div>
					<div class="card-body">
						<h6 class="card-subtitle mb-2 text-muted">작성자: ${post.email}</h6>
						<h6 class="card-subtitle mb-2 text-muted">작성일:
							${post.created_at}</h6>
						<p class="card-text" id="postContent">${post.content}</p>
					</div>
					<div class="card-footer text-end">
						<a class="btn btn-primary"
							onclick="window.history.back(); return false;">목록으로</a>
					</div>
				</div>

				<!-- 댓글 영역 시작 -->
				<div class="card mb-4">
					<div class="card-header">
						<h5>댓글</h5>
					</div>
					<div class="card-body">
						<form id="commentForm">
							<input type="hidden" name="post_id" value="${post.post_id}">
							<div class="form-group mb-3">
								<label for="comment">댓글을 입력하세요:</label>
								<textarea class="form-control" id="comment" name="comment"
									rows="3"></textarea>
							</div>
							<button type="submit" class="btn btn-primary">댓글 달기</button>
						</form>
					</div>
				</div>

				<!-- 댓글 리스트 시작 -->
				<div class="card mb-4">
					<div class="card-header">
						<h5>댓글 목록</h5>
					</div>
					<div class="card-body">
						<c:forEach var="comment" items="${comment}">
							<div class="mb-3">
								<h6>${comment.email}
									<small class="text-muted">${comment.created_at}</small>
								</h6>
								<p>${comment.content}</p>
							</div>
						</c:forEach>
					</div>
				</div>
				<!-- 댓글 리스트 끝 -->

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

	<script src="/toyProject/js/post.js"></script>
</body>
</html>