<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%
	String pageMainGrid = request.getParameter("pageMainGrid");
	if ( pageMainGrid == null || pageMainGrid.isEmpty() ) {
		pageMainGrid = "index2.jsp";
	}
%>
<nav class="page-sidebar" data-pages="sidebar">
	<!-- BEGIN SIDEBAR MENU TOP TRAY CONTENT-->
	<div class="sidebar-overlay-slide from-top" id="appMenu"></div>
	<!-- END SIDEBAR MENU TOP TRAY CONTENT-->
	<!-- BEGIN SIDEBAR MENU HEADER-->
	<div class="sidebar-header">
		<img src="assets/img/logo_midnight_club.png" alt="logo" class="brand"
			data-src="assets/img/logo_midnight_club.png"
			data-src-retina="assets/img/logo_midnight_club.png" width="170" height="50">
	</div>
	<!-- END SIDEBAR MENU HEADER-->
	<!-- START SIDEBAR MENU -->
	<div class="sidebar-menu">
		<!-- BEGIN SIDEBAR MENU ITEMS-->
		<ul class="menu-items">
			<li class=""><a href="javascript:;"> <span class="title">게임리스트</span> <span class=" arrow"></span>
			</a> <span class="icon-thumbnail"><i data-feather="grid"></i></span>
				<ul class="sub-menu">
					<li class=""><a href="#">검은사막</a> <span
						class="icon-thumbnail">sp</span></li>
					<li class=""><a href="#">리니지</a> <span
						class="icon-thumbnail">sp</span></li>
					<li class=""><a href="#">라그나로크</a> <span
						class="icon-thumbnail">sp</span></li>
				</ul></li>
			<li class="" onclick="changePage('petition')"><a href="#"> <span class="title">청원 게시판</span>
			</a> <span class="icon-thumbnail "><i data-feather="shield"></i></span></li>
			<li class=""><a href="#"> <span class="title">후원 게시판</span>
			</a> <span class="icon-thumbnail "><i data-feather="list"></i></span></li>
			<li class=""><a href="#"> <span class="title">게임 게시판</span>
			</a> <span class="icon-thumbnail "><i data-feather="list"></i></span></li>
			<li class=""><a href="#"> <span class="title">공략 게시판</span>
			</a> <span class="icon-thumbnail "><i data-feather="list"></i></span></li>
			<li class=""><a href="#"> <span class="title">이슈 게시판</span>
			</a> <span class="icon-thumbnail "><i data-feather="list"></i></span></li>
		</ul>
		<div class="clearfix"></div>
	</div>
	<!-- END SIDEBAR MENU -->
</nav>