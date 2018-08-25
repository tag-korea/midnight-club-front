<link href="assets/plugins/jquery-datatable/media/css/dataTables.bootstrap.min.css" rel="stylesheet" type="text/css" />
<link href="assets/plugins/jquery-datatable/extensions/FixedColumns/css/dataTables.fixedColumns.min.css" rel="stylesheet" type="text/css" />
<link href="assets/plugins/datatables-responsive/css/datatables.responsive.css" rel="stylesheet" type="text/css" media="screen" />

<script type="text/javascript" src="assets/plugins/jquery-datatable/media/js/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="assets/plugins/jquery-datatable/extensions/TableTools/js/dataTables.tableTools.min.js"></script>
<script type="text/javascript" src="assets/plugins/jquery-datatable/media/js/dataTables.bootstrap.js"></script>
<script type="text/javascript" src="assets/plugins/jquery-datatable/extensions/Bootstrap/jquery-datatable-bootstrap.js"></script>
<script type="text/javascript" src="assets/plugins/datatables-responsive/js/datatables.responsive.js"></script>
<script type="text/javascript" src="assets/plugins/datatables-responsive/js/lodash.min.js"></script>

<script type="text/javascript" class="code-js">
	$(document).ready(function() {
		    $('#gridNotice').DataTable({
		    	pageLength: 3,	// 한 페이지에 기본으로 보여줄 항목 수
                bPaginate: false,	// 페이징 처리를 할 것인지를 정한다. "false"로 주면 "pageLength"와는 관계 없이 전체 데이터를 출력한다
                bLengthChange: false,	// 한 페이지에 보여줄 항목 수를 변경할 것인지를 정한다. "true"로 주면 그리드에 리스트박스를 추가한다.
                lengthMenu : [ [ 3, 5, 10, -1 ], [ 3, 5, 10, "All" ] ],	// "bLengthChange" 리스트 항목을 구성할 옵션들을 정해준다.
                bAutoWidth: false,	// 자동 컬럼 폭을 계산하여 반영한다.
                processing: false,	// "true"로 주면 값을 가져오는 등의 처리 상황에서 대기가 발생할 때, "processing"인디케이터를 보여준다.
                ordering: false,	// 항목들에 대한 정렬을 사용할 것인가를 결정한다.
                serverSide: false,	// 그리드 내에서 이루어지는 모든 상황들(검색, 페이징, 정렬 등)에 대한 처리를 서버측에서 수행할 것인가를 뜻한다. 
                					// "false"로 주면 처음 한번 서버에서 모든 데이터를 다 가져온 뒤, 각각의 상황에 맞게 클라이언트에서 처리한다. 
                					// 데이터의 양이 적을 것이라는 확신이 있다면 "false"인 것이 더 유리하다. 
                					// 하지만 데이터 양이 많다면 한번에 너무 많은 데이터를 가져와야 하기 때문에 첫 로딩에 많은 시간이 걸리고 오류가 발생할 수 있다. 
                					// 그 데이터 양의 기준은 약 1만건이라고 하는데, 5천건이 넘어가는 순간부터 속도의 저하가 오는 듯 하다. 
                					// "ServerSide"를 사용하기 위해서는 서버단의 처리에 다소 많은 작업이 추가되어 화면 별로 미리 결정하고 개발에 들어가는 것이 좋다. 
                					// 추후 수정에 들어가는 공수가 많을 것이기 때문이다.
                searching: false,	// 글로벌 searching 기능을 제공하는데, 타이핑한 캐릭터 별로 검색이 자동 적용되기 때문에 상당히 강력하다.
                ajax : {
                    "url":"http://13.124.92.184:9320/notice/list",
                    "type":"GET",
                    "dataSrc":"",
                    "data": function (d) {
                    }
                },
                columns : [
                    {data: "account", "render": function (data) {
                                var image = '<div class="'; 
	                    	if (data.level < 900) {
	                    	    image += 'bg-wrapper'; 
	                    	} else {
                                    image += 'bg-wrapper-border';
	                    	}
	                    	image += '"><img width=40 height=40 src="' + data.icon.borderImageUrl + '" /></div><div class="font-data-table">LV' + data.level + '</div>';
                                return image;	                    	
                          }
		    },
                    {data: "account.userId"},
                    {data: "title"},
                    {data: "viewCount"},
                    {data: "createdDate"}
                ]
		    });
		} );
</script>
	
<!-- BEGIN PlACE PAGE CONTENT HERE -->
<table id="gridNotice" class="table table-striped table-bordered table-hover" >
    <thead>
        <tr>
            <th>icon</th>
            <th>userId</th>
            <th>title</th>
            <th>viewCount</th>
            <th>createdDate</th>
        </tr>
    </thead>
    <!-- tbody 태그 필요 없다. -->
</table>
				
<!-- END PLACE PAGE CONTENT HERE -->