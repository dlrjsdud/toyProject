<!DOCTYPE html>
<html lang="en">
<head>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Bootstrap 5 Login Page</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha1/css/bootstrap.min.css" integrity="sha384-r4NyP46KrjDleawBgD5tp8Y7UzmLA05oM1iAEQ17CSuDqnUK2+k9luXQOfXJCJ4I" crossorigin="anonymous">
<link type="text/css" rel="stylesheet" href="/toyProject/css/bootStrap/bootStrap.css"/>
</head>
<body>
	<div class="container d-flex align-items-center justify-content-center" style="height: 100vh;">
		<div class="row justify-content-center w-100">
			<div class="col-md-6">
				<div class="card">
					<div class="card-header text-center">
						<h3>로그인</h3>
					</div>
					<div class="card-body">
						<form>
							<div class="form-group mb-3">
								<label for="email">이메일 주소</label>
								<input type="email" class="form-control" id="email" placeholder="Enter email">
							</div>
							<div class="form-group mb-3">
								<label for="password">비밀번호</label>
								<input type="password" class="form-control" id="password" placeholder="Password">
							</div>
							<button type="submit" class="btn btn-primary w-100">로그인</button>
						</form>
					</div>
					<div class="card-footer text-center">
						<a href="#">비밀번호 찾기</a>
					</div>
				</div>
			</div>
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