<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- <link rel="stylesheet" href="https://uicdn.toast.com/grid/latest/tui-grid.css" /> -->
<!-- <script src="https://uicdn.toast.com/grid/latest/tui-grid.js"></script> -->
<script type="text/javascript">
	let userList;
	$(function (){
		$.ajax({
			url: "/orgChart/selectSampleUserInfo.do",
			method : "POST",
			contentType: 'application/json',
			dataType: "json",
			success: function(data) {
				
				console.log(data)
				userList = data;
			},
			error: function(xhr) {
				return alert("관리자에게 문의하세요");
			}
		})
		console.log(userList)
	})

</script>
<div class="content-sem">
	<div class="page-titles">
		<div class="content-header">
			<h5 class="font-medium m-b-0">Grid</h5>
			<div class="breadcrumb">
				<a href="index.html" class="basic-bc">
					<i class="xi-home-o"></i>
				</a>
				<a href="#" class="basic-bc">공통기능</a>
				<span class="basic-bc">Grid</span>
			</div>
		</div>
	</div>
	<div class="container-fluid">
		<div class="row sem-row">
			<div class="card-box">
				<div class="card">
					<div class="card-content">
						<input type="hidden" id ="insttInfoId" value="${user.insttInfoId }">
						<div id="sample1"></div>
						<button id="addRowBtn2">추가</button>
						<button id="removeRowBtn2">삭제</button>
						<button id="saveBtn2">저장</button>
						<div id="sample2" class="mb10"></div>
						<div id="sample3" class="mb10"></div>
						<button id="addRowBtn">추가</button>
						<button id="removeRowBtn">삭제</button>
						<div id="sample4" class="mb10"></div>
						<div id="sample5"></div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<script type="text/javascript">
//Lee
tui.Grid.applyTheme('striped');

class CustomCheckBox {
    constructor(props) {
        const el = document.createElement("input");
        el.type = 'checkbox';
        
        this.el = el;
        this.render(props);
    }

    getElement() {
        return this.el;
    }

    render(props) {
        this.el.value = String(props.value);
        this.el.checked = Boolean(props.value);
    }
}
//Lee
  //Lee sample2
  const sample2 = new tui.Grid({
        el: document.getElementById('sample2'),
        scrollX: false,
        draggable: true,
		pageOptions: {
			useClient: true, // paginaton on -- perPage 수만큼 자동 pagination 됨
			perPage: 8  // pagination 나눌 페이지 수
		},
        rowHeaders: [
        	{ type : 'rowNum', header : "순번", width: 50, align : 'center'},
        	{ type : 'checkbox', header : `
                <label for="all-checkbox" class="checkbox">
                <input type="checkbox" id="all-checkbox" class="hidden-input" name="_checked" />
                <span class="custom-input"></span>
              </label>
            `}
        	],
        editingEvent: 'click', // - 셀 한번 클릭시 에딧 이벤트 실행 / default 두번 클릭 
        columns: [
                { header: '관리년도', name: '관리년도', editor: 'text', align: 'center' },
                { header: '평가모델명', name: '평가모델명', editor: 'text', align: 'center' },
                { header: '시작일자', name: '시작일자1', editor: 'text', align: 'center' },
                { header: '종료일자', name: '종료일자1', editor: 'text', align: 'center' },
                { header: '시작일자', name: '시작일자2', editor: 'text', align: 'center' },
                { header: '종료일자', name: '종료일자2', editor: 'text', align: 'center' },
                { header: '시작일자', name: '시작일자3', editor: 'text', align: 'center' },
                { header: '종료일자', name: '종료일자3', editor: 'text', align: 'center' },
                { header: '시작일자', name: '시작일자4', editor: 'text', align: 'center' },
                { header: '종료일자', name: '종료일자4', editor: 'text', align: 'center' },
                { header: '시작일자', name: '시작일자5', editor: 'text', align: 'center' },
                { header: '종료일자', name: '종료일자5', editor: 'text', align: 'center' },
                { header: '시작일자', name: '시작일자6', editor: 'text', align: 'center' },
                { header: '종료일자', name: '종료일자6', editor: 'text', align: 'center' },
                { header: '이관년도', name: '이관년도', editor: 'text', align: 'center' },
                { header: '기관정보', name: '기관정보', align: 'center', renderer: { type: CustomCheckBox } },
                { header: '사용자정보', name: '사용자정보', renderer: { type: CustomCheckBox }, align: 'center' },
                { header: '공통코드', name: '공통코드', renderer: { type: CustomCheckBox }, align: 'center' },
                { header: '지표', name: '지표', renderer: { type: CustomCheckBox }, align: 'center' },
            ],
            header: {
                height: 100,
                complexColumns: [
                    { header: '사용기간', name: 'parent1', childNames: ['시작일자1', '종료일자1'] },
                    { header: '지표설정기간', name: 'parent2', childNames: ['시작일자2', '종료일자2'] },
                    { header: '실적입력기간', name: 'parent3', childNames: ['시작일자3', '종료일자3'] },
                    { header: '1차 평가기간', name: 'parent4', childNames: ['시작일자4', '종료일자4'] },
                    { header: '이의제기기간', name: 'parent5', childNames: ['시작일자5', '종료일자5'] },
                    { header: '2차 평가기간', name: 'parent6', childNames: ['시작일자6', '종료일자6'] }
                ]
            },
		columnOptions: { },
      	data : { api : { // readData 외의 함수는 그리드 문서에서 확인
	   		readData : { url: '/orgChart/sample.do', method : 'POST'},
 	   		modifyData: { url: '/orgChart/sample.do', method: 'POST' },
	   		updateData: { url: '/orgChart/sample.do', method: 'POST' },
	   		createData: {url: '/orgChart/sample.do', method: 'POST'},
	   		deleteData: {url: '/orgChart/sample.do', method: 'POST'}
   		},
		contentType: 'application/json',
		headers: {'X-CSRF-TOKEN' : CRSF_VALUE} // ajax 요청시 꼭 필요
   }
      });
  sample2.disableColumn('지표'); //컬럼 readonly 활성화 https://nhn.github.io/tui.grid/latest/Grid#disable
  //Lee sample2

  //Lee sample3
   const sample3 = new tui.Grid({
        el: document.getElementById('sample3'),
        scrollX: false,
        scrollY: true,
        columns : [
			{header: '관리번호', name: '관리번호', editor: {type: 'text'},align: 'center',},
			{header: '지표명', name: '지표명', width: 600,align: 'center',},
			{header: '정성배점', name: '정성배점',align: 'center',},
			{header: '정량배점', name: '정량배점',align: 'center',},
			{header: '지표성격', name: '지표성격',align: 'center',},
		],
		treeColumnOptions: {
		    name: '관리번호', // 트리 형태로 표현될 컬럼 이름 설정
		    useIcon: true, // 아이콘 사용여부 
		    useCascadingCheckbox: true // 부모-자식 관계를 유지하며 체크 박스 상태를 변경할 지 설정
		    // indentWidth	- 자식 노드에 설정할 들여쓰기 너비의 기본 너비를 설정한다. 기본값은 22
	  },
	  treeColumnIndex: 0,
        editingEvent: 'click', // - 셀 한번 클릭시 에딧 이벤트 실행 / default 두번 클릭 
// 		columnOptions: { resizable: true },
      	data: { api : { // readData 외의 함수는 그리드 문서에서 확인
	   		readData : { url: '/orgChart/qwe.do', method : 'POST'}
   		},
		contentType: 'application/json',
		headers: {'X-CSRF-TOKEN' : CRSF_VALUE} // ajax 요청시 꼭 필요
   }
      });
   //Lee
  
  
const data = [
	  {
	    c1: 'foo',
	    _attributes: {
	      expanded: true // default: false
	    },
	    _children: [
	      {
	        c1: 'baz',
	        _children: [
	              {
	            	  c1: 'qux',
	            		  _children: [
	        	              {
	        	            	  c1: 'zxc',
	        	            	  _children: []
	        	              }],
	              }],
	      },
	    ],
	    c2 : 1
	  },{
		 c1: 'notree',
		 c2: 23
	  },{
		  c1:'notree1',
		  c2: 45
	  }
	];

	const sample5 = new tui.Grid({
		el : document.getElementById("sample5"),
		scrollX: true,
		scrollY: true,
		columns : [
			{header: '트리샘플', name: 'c1', editor: {type: 'text'}},
			{header: 'summray샘플', name: 'c2', },
			{header: '샘플3', name: 'S3', editor: {type: 'checkbox', options: { listItems: [{text:'옵션1', value:1},{text:'옵션2', value:2}] } } },
		],
		treeColumnOptions: {
		    name: 'c1', // 트리 형태로 표현될 컬럼 이름 설정
		    useIcon: true, // 아이콘 사용여부 
		    useCascadingCheckbox: true // 부모-자식 관계를 유지하며 체크 박스 상태를 변경할 지 설정
		    // indentWidth	- 자식 노드에 설정할 들여쓰기 너비의 기본 너비를 설정한다. 기본값은 22
	  },
	  summary: {
		    position: 'bottom', // top도 가능
		    height: 100,  // by pixel
		    columnContent: {
		      c1: {
		        template() {
		          return 'summary footer';
		        }
		      },
		      c2: {
		        template(summary) { // sum: 합계 avg: 평균값 min: 최솟값 max: 최댓값 cnt: 로우의 개수
		          return  'max: ' + summary.max + '<br>min: ' + summary.min +'<br>sum: ' + summary.sum + '<br>avg: ' + summary.avg + '<br>cnt: ' + summary.cnt;
		        }
		      },
		    }
	  }
	});

	sample5.resetData( data );
	
	sample5.on('expand', ev => {
	      const { rowKey } = ev;
	      const descendantRows = sample5.getDescendantRows(rowKey);
	      if (!descendantRows.length) {
	        sample5.appendRow(
	          {
	            c1: 'dynamic loading data',
	            _children: [
	              {
	                c1: 'leaf row'
	              },
	              {
	                c1: 'internal row',
	                _children: []
	              }
	            ]
	          },
	          { parentRowKey: rowKey }
	        );
	      }
	    });
		   
      // row 추가 버튼
      var addRowBtn = document.getElementById('addRowBtn');
      addRowBtn.addEventListener('click', function() {
          sample4.prependRow({}); // 앞에 추가
          // sample4.appendRow({}) -- 맨 뒤에 추가
      });
      // row 삭제 버튼
      var removeRowBtn = document.getElementById('removeRowBtn');
      removeRowBtn.addEventListener('click', function() {
    	  var rowKeys = sample4.getCheckedRowKeys();
    	  if(rowKeys.length != 0){
    		  sample4.removeRows(rowKeys)
    	  }else{
    		  alert('삭제할 로우를 선택해 주세요.')
    	  }
      })  
      
      //Lee
       var addRowBtn2 = document.getElementById('addRowBtn2');
      addRowBtn2.addEventListener('click', function() {
          sample2.prependRow({}); // 앞에 추가
      });
      
      var removeRowBtn2 = document.getElementById('removeRowBtn2');
      removeRowBtn2.addEventListener('click', function() {
    	  var rowKeys = sample2.getCheckedRowKeys();
    	  if(rowKeys.length != 0){
    		  sample2.removeRows(rowKeys)
    	  }else{
    		  alert('삭제할 로우를 선택해 주세요.')
    	  }
      })  
      
      var saveBtn2 = document.getElementById('saveBtn2');
      saveBtn2.addEventListener('click', function() {
			sample2.request('modifyData');
      });
      //Lee
      
      
      function deptList() {
			let dept ;
			$.ajax({
				url: CONTEXT_PATH + "/tuiSam/selectDeptList.do",
				async: false,
				type: "POST",
				dataType: "json",
				data: { insttInfoId: $('#insttInfoId').val() },
				success: function(data) {
					dept = data;
				},
				error: function(xhr) {
					return alert("관리자에게 문의하세요");
				}
			})
			return dept;
		}
		
		function clsfList() {
			let clsf ;
			$.ajax({
				url: CONTEXT_PATH + "/tuiSam/selectClsfList.do",
				async: false,
				type: "POST",
				dataType: "json",
				data: { insttInfoId: $('#insttInfoId').val() },
				success: function(data) {
					clsf = data;
				},
				error: function(xhr) {
					return alert("관리자에게 문의하세요");
				}
			})
			return clsf; 
		}

		function ofcpsList() {
			let ofcps ;
			$.ajax({
				url: CONTEXT_PATH + "/tuiSam/selectOfcpsList.do",
				async: false,
				type: "POST",
				dataType: "json",
				data: { insttInfoId: $('#insttInfoId').val() },
				success: function(data) {
					ofcps = data;
				},
				error: function(xhr) {
					return alert("관리자에게 문의하세요");
				}
			})
			return ofcps; 
		}
		function hdofList() {
			let hdof ;
			$.ajax({
				url: CONTEXT_PATH + "/tuiSam/selectHdofList.do",
				async: false,
				type: "POST",
				dataType: "json",
				data: { insttInfoId: $('#insttInfoId').val() },
				success: function(data) {
					hdof = data;
				},
				error: function(xhr) {
					return alert("관리자에게 문의하세요");
				}
			})
			return hdof; 
		}
</script>


