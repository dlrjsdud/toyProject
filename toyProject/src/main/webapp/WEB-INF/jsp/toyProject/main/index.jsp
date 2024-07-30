<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Bootstrap 5 Simple Admin Dashboard</title>
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
				<nav aria-label="breadcrumb">
					<ol class="breadcrumb">
						<li class="breadcrumb-item"><a href="#">Home</a></li>
						<li class="breadcrumb-item active" aria-current="page">Overview</li>
					</ol>
				</nav>
				<h1 class="h2">전체 게시글</h1>
				<p>This is the homepage of a simple admin interface which is part of a tutorial written on Themesberg</p>
				<div class="row my-4">
					<div class="col-12 col-md-6 col-lg-3 mb-4 mb-lg-0">
						<div class="card">
							<h5 class="card-header">오늘 방문객 수 </h5>
							<div class="card-body">
								<h5 class="card-title">345k</h5>
								<p class="card-text">Feb 1 - Apr 1, United States</p>
								<p class="card-text text-success">18.2% increase since last month</p>
							</div>
						</div>
					</div>
					<div class="col-12 col-md-6 mb-4 mb-lg-0 col-lg-3">
						<div class="card">
							<h5 class="card-header">총 게시글 수</h5>
							<div class="card-body">
								<h5 class="card-title">$2.4k</h5>
								<p class="card-text">Feb 1 - Apr 1, United States</p>
								<p class="card-text text-success">4.6% increase since last month</p>
							</div>
						</div>
					</div>
					<div class="col-12 col-md-6 mb-4 mb-lg-0 col-lg-3">
						<div class="card">
							<h5 class="card-header">Purchases</h5>
							<div class="card-body">
								<h5 class="card-title">43</h5>
								<p class="card-text">Feb 1 - Apr 1, United States</p>
								<p class="card-text text-danger">2.6% decrease since last month</p>
							</div>
						</div>
					</div>
					<div class="col-12 col-md-6 mb-4 mb-lg-0 col-lg-3">
						<div class="card">
							<h5 class="card-header">Traffic</h5>
							<div class="card-body">
								<h5 class="card-title">64k</h5>
								<p class="card-text">Feb 1 - Apr 1, United States</p>
								<p class="card-text text-success">2.5% increase since last month</p>
							</div>
						</div>
					</div>
				</div>
				<div class="row">
					<div>
					<!-- 게시글 영역 -->
					</div>
					<div class="col-12 col-xl-4">
						<div class="card">
							<h5 class="card-header">Traffic last 6 months</h5>
							<div class="card-body">
								<div id="traffic-chart"></div>
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
	<script
		src="https://cdn.jsdelivr.net/chartist.js/latest/chartist.min.js"></script>
	<!-- Github buttons -->
	<script async defer src="https://buttons.github.io/buttons.js"></script>
	<script>
		new Chartist.Line('#traffic-chart',
				{
					labels : [ 'January', 'Februrary', 'March', 'April', 'May',
							'June' ],
					series : [ [ 23000, 25000, 19000, 34000, 56000, 64000 ] ]
				}, {
					low : 0,
					showArea : true
				});
	</script>
</body>
</html>