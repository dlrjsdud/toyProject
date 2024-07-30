<!DOCTYPE html>
<html lang="en">
<head>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>게시판 글 상세보기</title>
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
						<h5>글 제목</h5>
					</div>
					<div class="card-body">
						<h6 class="card-subtitle mb-2 text-muted">작성자: John Doe</h6>
						<h6 class="card-subtitle mb-2 text-muted">작성일: 2023-07-30</h6>
						<p class="card-text">여기에 글 내용을 입력합니다. 이 글은 예시 글입니다. 이 글은 게시판의 글 상세보기 페이지를 보여주기 위해 작성되었습니다.
						여기에 글 내용을 입력합니다. 이 글은 예시 글입니다. 이 글은 게시판의 글 상세보기 페이지를 보여주기 위해 작성되었습니다.
						여기에 글 내용을 입력합니다. 이 글은 예시 글입니다. 이 글은 게시판의 글 상세보기 페이지를 보여주기 위해 작성되었습니다.
						여기에 글 내용을 입력합니다. 이 글은 예시 글입니다. 이 글은 게시판의 글 상세보기 페이지를 보여주기 위해 작성되었습니다.
						여기에 글 내용을 입력합니다. 이 글은 예시 글입니다. 이 글은 게시판의 글 상세보기 페이지를 보여주기 위해 작성되었습니다.
						여기에 글 내용을 입력합니다. 이 글은 예시 글입니다. 이 글은 게시판의 글 상세보기 페이지를 보여주기 위해 작성되었습니다.
						여기에 글 내용을 입력합니다. 이 글은 예시 글입니다. 이 글은 게시판의 글 상세보기 페이지를 보여주기 위해 작성되었습니다.
						여기에 글 내용을 입력합니다. 이 글은 예시 글입니다. 이 글은 게시판의 글 상세보기 페이지를 보여주기 위해 작성되었습니다.
						여기에 글 내용을 입력합니다. 이 글은 예시 글입니다. 이 글은 게시판의 글 상세보기 페이지를 보여주기 위해 작성되었습니다.
						여기에 글 내용을 입력합니다. 이 글은 예시 글입니다. 이 글은 게시판의 글 상세보기 페이지를 보여주기 위해 작성되었습니다.
						여기에 글 내용을 입력합니다. 이 글은 예시 글입니다. 이 글은 게시판의 글 상세보기 페이지를 보여주기 위해 작성되었습니다.
						여기에 글 내용을 입력합니다. 이 글은 예시 글입니다. 이 글은 게시판의 글 상세보기 페이지를 보여주기 위해 작성되었습니다.
						여기에 글 내용을 입력합니다. 이 글은 예시 글입니다. 이 글은 게시판의 글 상세보기 페이지를 보여주기 위해 작성되었습니다.
						여기에 글 내용을 입력합니다. 이 글은 예시 글입니다. 이 글은 게시판의 글 상세보기 페이지를 보여주기 위해 작성되었습니다.
						여기에 글 내용을 입력합니다. 이 글은 예시 글입니다. 이 글은 게시판의 글 상세보기 페이지를 보여주기 위해 작성되었습니다.
						여기에 글 내용을 입력합니다. 이 글은 예시 글입니다. 이 글은 게시판의 글 상세보기 페이지를 보여주기 위해 작성되었습니다.
						여기에 글 내용을 입력합니다. 이 글은 예시 글입니다. 이 글은 게시판의 글 상세보기 페이지를 보여주기 위해 작성되었습니다.
						여기에 글 내용을 입력합니다. 이 글은 예시 글입니다. 이 글은 게시판의 글 상세보기 페이지를 보여주기 위해 작성되었습니다.
						여기에 글 내용을 입력합니다. 이 글은 예시 글입니다. 이 글은 게시판의 글 상세보기 페이지를 보여주기 위해 작성되었습니다.</p>
					</div>
					<div class="card-footer text-end">
						<a href="#" class="btn btn-primary">목록으로</a>
					</div>
				</div>

				<!-- 댓글 영역 시작 -->
				<div class="card mb-4">
					<div class="card-header">
						<h5>댓글</h5>
					</div>
					<div class="card-body">
						<form>
							<div class="form-group mb-3">
								<label for="comment">댓글을 입력하세요:</label>
								<textarea class="form-control" id="comment" rows="3"></textarea>
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
						<div class="mb-3">
							<h6>Jane Doe <small class="text-muted">2023-07-30 12:34</small></h6>
							<p>이 글 정말 유익하네요. 감사합니다!</p>
						</div>
						<div class="mb-3">
							<h6>John Smith <small class="text-muted">2023-07-30 13:45</small></h6>
							<p>좋은 정보 감사합니다.</p>
						</div>
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
</body>
</html>