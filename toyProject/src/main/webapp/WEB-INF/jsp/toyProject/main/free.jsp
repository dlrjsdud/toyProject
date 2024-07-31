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
</head>
<link rel="icon" href="data:;base64,iVBORw0KGgo=">
<body>
	<jsp:include page="/WEB-INF/jsp/toyProject/cmmn/navbar.jsp" />
	<div class="container-fluid">
		<div class="row">
			<jsp:include page="/WEB-INF/jsp/toyProject/cmmn/sidebar.jsp" />
			<main class="col-md-9 ml-sm-auto col-lg-10 px-md-4 py-4">
				<div class="d-flex align-items-center">
					<input type="text" name="searchInput" class="search" onkeydown="handleKeyDown(event)">
					<button class="btn btn-sm btn-primary ml-3" onclick="search();">검색</button>
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
	<script src="https://uicdn.toast.com/grid/latest/tui-grid.js"></script>

	<script type="text/javascript">
	
		const gridData = [ {
			index : '1',
			title : '첫 번째 글',
			id : '이건영',
			date : "24-08-01",
			views : "12"
		}, {
			index : '2',
			title : '두 번째 글',
			id : '이건영',
			date : "24-07-31",
			views : "43"
		}, {
			index : '3',
			title : '유 민지 똥',
			id : '이건영',
			date : "24-07-30",
			views : "12"
		}, {
			index : '4',
			title : '유 민지 응가',
			id : '이건영',
			date : "24-07-29",
			views : "23"
		}, {
			index : '5',
			title : '유 민지 바보',
			id : '이건영',
			date : "24-07-29",
			views : "44"
		} ];
		
		tui.Grid.applyTheme('striped', {
			  cell: {
			    header: {
			      background: '#eef'
			    },
			    evenRow: {
			      background: '#fee'
			    }
			  }
			});

		const grid = new tui.Grid({
			el : document.getElementById('freeGrid'),
			data : gridData,
			scrollX : false,
			scrollY : false,
			columns : [ {
				header : '번호',
				name : 'index'
			}, {
				header : '제목',
				name : 'title',
				width : 800
			}, {
				header : '작성자',
				name : 'id'
			}, {
				header : '작성일',
				name : 'date'
			}, {
				header : '조회',
				name : 'views'
			} ]
		});
		
		function search(){
			const searchInput = document.querySelector('.search').value.toLowerCase();
			const filteredData = gridData.filter(item => {
				return item.title.toLowerCase().includes(searchInput) ||
					   item.id.toLowerCase().includes(searchInput) ||
					   item.date.toLowerCase().includes(searchInput);
			});
			grid.resetData(filteredData);
		}
		
		function handleKeyDown(event) {
			if (event.key === 'Enter') {
				search();
			}
		}

		
	</script>
</body>
</html>