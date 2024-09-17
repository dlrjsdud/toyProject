$(document).ready(function() {
	loadRankList();
});

function loadRankList() {
	$.ajax({
		url: '/toyProject/rank.do', // 요청할 URL
		type: 'GET', // HTTP 메서드
		dataType: 'json', // 기대하는 데이터 형식
		success: function(data) {
			// headerArea에 내용 추가
			document.getElementById('headerArea').innerHTML = '일간 인기글';

			// contentArea에 내용 추가
			let contentHtml = '';
			data.forEach(function(item, index) {
				contentHtml += `<p class="card-text">${index + 1}위 - "${item.title}"</p>`;
			});

			document.getElementById('contentArea').innerHTML = contentHtml;
		},
		error: function(xhr, status, error) {
			console.error('Error:', error); // 오류 처리
		}
	});
}

function loadNotices() {
	$.ajax({
		url: '/toyProject/indexNotice.do', // 요청할 URL
		type: 'GET', // HTTP 메서드
		dataType: 'json', // 기대하는 데이터 형식
		success: function(data) {
			// headerArea에 내용 추가
			document.getElementById('headerArea').innerHTML = '공지사항';

			// contentArea에 내용 추가
			let contentHtml = '';
			data.forEach(function(item, index) {
				contentHtml += `<p class="card-text">${index + 1}위 - "${item.title}"</p>`;
			});

			document.getElementById('contentArea').innerHTML = contentHtml;
		},
		error: function(xhr, status, error) {
			console.error('Error:', error); // 오류 처리
		}
	});
}