<!DOCTYPE html>
<html>
<head>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%
	String pageMainGrid = request.getParameter("pageMainGrid");
	if (pageMainGrid == null || pageMainGrid.isEmpty()) {
		pageMainGrid = "noticePage.jsp";
	}
%>
<meta charset="UTF-8" />
<title>천사와 악마의 놀이터 미드나잇클럽 - Midnight Club</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
<link rel="apple-touch-icon" href="pages/ico/60.png">
<link rel="apple-touch-icon" sizes="76x76" href="pages/ico/76.png">
<link rel="apple-touch-icon" sizes="120x120" href="pages/ico/120.png">
<link rel="apple-touch-icon" sizes="152x152" href="pages/ico/152.png">
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="apple-touch-fullscreen" content="yes">
<meta name="apple-mobile-web-app-status-bar-style" content="default">
<meta content="" name="description" />
<meta content="" name="author" />
<link href="assets/css/my_test.css" rel="stylesheet" type="text/css" />
<link href="assets/plugins/pace/pace-theme-flash.css" rel="stylesheet" type="text/css" />
<link href="assets/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<link href="assets/plugins/font-awesome/css/font-awesome.css" rel="stylesheet" type="text/css" />
<link href="assets/plugins/jquery-scrollbar/jquery.scrollbar.css" rel="stylesheet" type="text/css" media="screen" />
<link href="assets/plugins/select2/css/select2.min.css" rel="stylesheet" type="text/css" media="screen" />
<link href="assets/plugins/switchery/css/switchery.min.css" rel="stylesheet" type="text/css" media="screen" />
<script src="assets/plugins/jquery/jquery-3.2.1.min.js" type="text/javascript"></script>
<script src="assets/plugins/switchery/js/switchery.min.js" type="text/javascript"></script>
<link href="pages/css/pages-icons.css" rel="stylesheet" type="text/css">
<link class="main-stylesheet" href="pages/css/themes/light.css" rel="stylesheet" type="text/css" />
<script type="text/javascript">
  function changePage(page) {
<%if (page == "petition") {
				pageMainGrid = "index3.jsp";
			}%>
  }
</script>
</head>
<body class="fixed-header menu-pin box-layout menu-pin">
	<div class="container">
		<!-- BEGIN SIDEBAR -->
		<jsp:include page="mainLeftPage.jsp"></jsp:include>
		<!-- END SIDEBAR -->
		<!-- START PAGE-CONTAINER -->
		<div class="page-container">
			<!-- START PAGE HEADER WRAPPER -->
			<!-- START HEADER -->
			<jsp:include page="mainHeaderPage.jsp"></jsp:include>
			<!-- END HEADER -->
			<!-- END PAGE HEADER WRAPPER -->
			<!-- START PAGE CONTENT WRAPPER -->
			<div class="page-content-wrapper">
				<!-- START PAGE CONTENT WRAPPER -->
				<!-- 내용 -->
				<jsp:include page="mainContensPage.jsp"></jsp:include>
				<!-- START FOOTER -->
				<jsp:include page="mainFooterPage.jsp"></jsp:include>
				<!-- END FOOTER -->
			</div>
			<!-- END PAGE CONTENT WRAPPER -->
			<!-- END PAGE CONTENT WRAPPER -->
		</div>
		<!-- END PAGE CONTAINER -->
	</div>
	<!--START QUICKVIEW -->
	<jsp:include page="mainQuickViewPage.jsp"></jsp:include>
	<!-- END QUICKVIEW-->
	<!-- START OVERLAY -->
	<jsp:include page="mainOverlayHidePage.jsp"></jsp:include>
	<!-- END OVERLAY -->
	
	<!-- Include JavaScript -->
	<jsp:include page="includeJS.jsp"></jsp:include>
</body>
</html>
