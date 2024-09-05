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
	el: document.getElementById('freeGrid'),
	scrollX: false,
	scrollY: false,
	pageOptions: {
   		useClient: true,
    	perPage: 10
  	},
	columns: [{
		header: '번호',
		name: 'post_id'
	}, {
		header: '제목',
		name: 'title',
		width: 800
	}, {
		header: '작성자',
		name: 'email'
	}, {
		header: '작성일',
		name: 'created_at'
	}, {
		header: '조회',
		name: 'view_count'
	}]
});

let ajaxGridData;

$.ajax({
    url: '/toyProject/getFree.do',
    type: 'GET',
    dataType: 'json',
    success: function(response) {
        if (response.result) {
            // 서버 응답에서 data 배열 가져오기
            const data = response.data;

            // 새로운 gridData 배열 생성
            ajaxGridData = [];

            // data가 배열이므로 반복문 사용
            data.forEach(item => {
                ajaxGridData.push({
                    post_id: item.post_id,
                    title: item.title,
                    email: item.email,
                    created_at: item.created_at,
                    view_count: item.view_count
                });
            });

            // 그리드에 데이터 설정
            grid.resetData(ajaxGridData);
        } else {
            console.error('데이터를 가져오는 데 실패했습니다.');
        }
    },
    error: function(jqXHR, textStatus, errorThrown) {
        console.error('Error:', textStatus, errorThrown);
    }
});



grid.on('click', (ev) => {
	const rowKey = ev.rowKey;
	const rowData = grid.getRow(rowKey);
	const post_id = encodeURIComponent(rowData.post_id);
	const url = `post.do?post_id=`;
	window.location.href = url + post_id;
});

function search() {
	const searchInput = document.querySelector('.search').value;
	
	if (!searchInput || searchInput.trim() === '') {
		grid.resetData(ajaxGridData);
		return;
	}

	const filteredData = ajaxGridData.filter(item => {
		return item.title.toLowerCase().includes(searchInput.toLowerCase()) ||
			item.post_id.toString().toLowerCase().includes(searchInput.toLowerCase()) ||
			item.created_at.toLowerCase().includes(searchInput.toLowerCase());
	});
	
	grid.resetData(filteredData);
}

function handleKeyDown(event) {
	if (event.key === 'Enter') {
		search();
	}
}