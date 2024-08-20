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

const dataSource = {
	api: {
		readData: { url: '/toyProject/getFree.do', method: 'GET', contentType: 'application/json' }
	}
};

const grid = new tui.Grid({
	el: document.getElementById('freeGrid'),
	data: dataSource,
	scrollX: false,
	scrollY: false,
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

fetch('/toyProject/getFree.do')
    .then(response => {
        console.log('Response status:', response.status);
        if (!response.ok) {
            throw new Error('Network response was not ok');
        }
        return response.json();
    })
    .then(data => {
        console.log('Response data:', data);
    })
    .catch(error => console.error('Error:', error));

grid.on('click', (ev) => {
	const rowKey = ev.rowKey;
	const rowData = grid.getRow(rowKey);
	const post_id = encodeURIComponent(rowData.post_id);
	const url = `${pageContext.request.contextPath}/post.do?a=`;
	window.location.href = url + post_id;
});

function search() {
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