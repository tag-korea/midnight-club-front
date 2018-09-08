<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%
	String pageMainGrid = request.getParameter("pageMainGrid");
	if (pageMainGrid == null || pageMainGrid.isEmpty()) {
		pageMainGrid = "main.jsp";
	}
%>
<!-- START PAGE CONTENT -->
<div class="content">
	<!-- START JUMBOTRON -->
	<div class="jumbotron" data-pages="parallax">
		<div class=" container-fluid container-fixed-lg sm-p-l-0 sm-p-r-0">
			<div class="inner">
				<!-- START BREADCRUMB -->
				<ol class="breadcrumb">
					<li class="breadcrumb-item active">공지사항</li>
				</ol>
				<!-- END BREADCRUMB -->
			</div>
		</div>
	</div>
	<!-- END JUMBOTRON -->
	<!-- START CONTAINER FLUID -->
	<div class="container-fluid container-fixed-lg">
		<!-- BEGIN PlACE PAGE CONTENT HERE -->
		<jsp:include page="<%=pageMainGrid%>"></jsp:include>
		<!-- END PLACE PAGE CONTENT HERE -->
	</div>
	<!-- END CONTAINER FLUID -->
</div>
<!-- END PAGE CONTENT -->
