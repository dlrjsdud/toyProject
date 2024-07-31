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
		
		grid.on('click', (ev) => {
		    const rowKey = ev.rowKey;
		    const rowData = grid.getRow(rowKey);
		    const index = encodeURIComponent(rowData.index);
		    const url = `${pageContext.request.contextPath}/post.do?a=`;
		    window.location.href = url+index;
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