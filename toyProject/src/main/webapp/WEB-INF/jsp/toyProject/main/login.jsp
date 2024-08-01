<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Bootstrap 5 Login Page</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha1/css/bootstrap.min.css" integrity="sha384-r4NyP46KrjDleawBgD5tp8Y7UzmLA05oM1iAEQ17CSuDqnUK2+k9luXQOfXJCJ4I" crossorigin="anonymous">
<link type="text/css" rel="stylesheet" href="/toyProject/css/bootStrap/bootStrap.css"/>
</head>
<body>
	<jsp:include page="/WEB-INF/jsp/toyProject/cmmn/navbar.jsp" />
	<div class="container-fluid">
		<div class="row">
			<jsp:include page="/WEB-INF/jsp/toyProject/cmmn/sidebar.jsp" />
			<main class="col-md-9 ml-sm-auto col-lg-10 px-md-4 py-4">
			
				
				<div class="row my-4">
					<div class="col-12 mb-4">
						<div class="card" >
							<h5 class="card-header">로그인</h5>
							<div class="card-body">
								<a href="/toyProject/login/naver-login.do"><img src="/toyProject/images/toyProject/btnG.png" style="width: 100px; height: 35px" ></a>
								<br>
								<a href="https://nid.naver.com/oauth2.0/authorize" th:href="@{https://nid.naver.com/oauth2.0/authorize(client_id=${naverClientId}, redirect_uri=${naverRedirectUri}, response_type='code', state=${state})}">
							       <img src="/toyProject/images/toyProject/btnG.png" style="width: 100px; height: 35px" alt="네이버 로그인 버튼">
							    </a>
							    <a href="https://nid.naver.com/oauth2.0/authorize?response_type=code&client_id=Lytfg0QCqUNQaYbNPusV&state=1234&redirect_uri=http%3A%2F%2Flocalhost%3A8081%2Flogin%2Fnaver%2Fcode">dd</a>
							</div>
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
</body>
</html>