<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
 <c:set var="baseurl" value="${pageContext.request.contextPath}/"></c:set>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Entries Online</title>
   	<link rel="favicon" href="images/favicon.png">
    <link rel="stylesheet" href="dist/css/bootstrap.min.css">
	<link rel="stylesheet" href="dist/css/style.css">
       
	<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
	<script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
	<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
	<script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	
	<style>
		a.btn-inline{
			font-size:16px;
			width: 75px;
			height: 50px;
			margin: 0 8px;
			padding-bottom:10px;
		}
		a.btn-inline.active {
			color:#3d84e6;
			border-bottom: 2px solid #3d84e6;
		}
		a.btn-inline:hover {
			text-decoration: none;
			font-weight:400;
			color:#2a6496;
		}
		a.navbar-brand {
			padding: 5px 30px 5px 50px;
		}
		span.glyphicon.glyphicon-search {
			top: 32px;
			left: 12px;
		}
		input.form-control {
			top: 45px;
			padding:0px 35px;
			width : 550px;
		}
		button.btn.btn-success{
			margin: 20px 25px;
			
		}
	</style>
</head>
<body>
	<jsp:include page="../../front/header.jsp" />

	<!-- header-->
	<header>
	  <div class="container">
	    <div class="row">
	      <button type="button" class="navbar-toggle"><span class="icon-bar"></span><span class="icon-bar"></span></button>
	      <a class="navbar-brand"><img src="images/searchCourse.png"></a>
	      <form id="searchForm" method="POST" action="${baseurl}selectParCourse">   
	          <ul class="navbar-nav">
	            <li>
	            	<span class="glyphicon glyphicon-search"></span>
	            	<input name="coursename" type="text" class="form-control">
	            </li>
	            <li>
	            	<button type="submit" class="btn btn-success">搜索</button>
	            </li>
	          </ul>
	      </form>
	    </div>
	  </div>
	</header>
	<!-- /.header -->

	<!-- searchNav -->
	<section class="newsBox" style="margin-top: 20px;">
		<div class="container well">
			<div class="row" style="margin: 0 5px;">
				<div class="clearfix">
					<p style="font-size: 16px;margin-top:10px;padding-left:25px;" class="pull-left" display='inline-block'>课程分类：</p>
					<ul class="nav navbar-nav">
						<li rel="0"><a href="${baseurl}findCourse" class="btn">全部</a></li>
						<li rel="1"><a href="${baseurl}selectByCourseCategory?categoryname=${'口语'}">口语</a></li>
						<li rel="2"><a href="${baseurl}selectByCourseCategory?categoryname=${'听力'}">听力</a></li>
						<li rel="3"><a href="${baseurl}selectByCourseCategory?categoryname=${'单词'}">单词</a></li>
						<li rel="4"><a href="${baseurl}selectByCourseCategory?categoryname=${'写作'}">写作</a></li>
						<li rel="5"><a href="${baseurl}selectByCourseCategory?categoryname=${'语法'}">语法</a></li>
						<li rel="6"><a href="${baseurl}selectByCourseCategory?categoryname=${'其他'}">其他</a></li>
					</ul>
				</div>
				<div>
	        		<p style="font-size: 16px;margin-top:10px;padding-left:25px;" class="pull-left" display='inline-block'>学习目标：</p>
					<ul class="nav navbar-nav">
						<li rel="0"><a href="${baseurl}findCourse" class="btn">全部</a></li>
						<li rel="1"><a href="${baseurl}selectByCourseGrade?categoryname=${categoryname}&gradename=${'四级'}">四级</a></li>
						<li rel="2"><a href="${baseurl}selectByCourseGrade?categoryname=${categoryname}&gradename=${'六级'}">六级</a></li>
						<li rel="3"><a href="${baseurl}selectByCourseGrade?categoryname=${categoryname}&gradename=${'雅思'}">雅思</a></li>
						<li rel="4"><a href="${baseurl}selectByCourseGrade?categoryname=${categoryname}&gradename=${'托福'}">托福</a></li>
						<li rel="5"><a href="${baseurl}selectByCourseGrade?categoryname=${categoryname}&gradename=${'GRE'}">GRE</a></li>  
						<li rel="6"><a href="${baseurl}selectByCourseGrade?categoryname=${categoryname}&gradename=${'其他'}">其他</a></li>   
					</ul>
				</div>
			</div>
		</div>    
	</section>
	<!-- /.searchNav -->

	<!-- searchCourse -->
	<div class="container well">
		<div class="navbar-nav tool-bar">
			<a class="btn-inline active" href="${baseurl}/findCourse">&nbsp;&nbsp;综合&nbsp;&nbsp; </a>
        	<a class="btn-inline" href="${baseurl}selectByCourseClickRate">&nbsp;&nbsp;人气&nbsp;&nbsp; </a>
      	</div>
		<hr style="height: 1px; border:none;border-top:1px solid #eee; "/>
		<c:forEach items="${courseList}" var="course">
			<div class="row">
				<a href="${baseurl}courseplay/${course.courseId}">
				<div class="newsBox">
          			<img src="/pic/${course.coursepic}" style="float: left;">
          			<div style = "margin-left: 15px; margin-top: 20px;">
            			<p class="title" style="margin-left: 15px;">
          					<h5>课程名：${course.coursename}</h5>
            			</p>
            			<p class="title" style="margin-left: 15px;">
							<h5>任课老师：${course.teacher} </h5>
						</p>
						<p class="title" style="margin-left: 15px;">
							<h5>访问量：${course.clickrate} </h5>
						</p>
						<p>课程简介：${course.courseintro}
						</p>
					</div>
				</div>
				</a>
          	</div>
        </c:forEach>
        <div class="pagination navbar-nav" style="border-top:1px solid #ddd; margin:20px auto -5px; width:100%;">
			<ul class="nav navbar-nav">
				<li>
					<a href="${baseurl}/findCourse?page=${page.firstPage}">首页</a>
				</li>
				<li>
					<a href="${baseurl}/findCourse?page=${page.prePage}">上一页</a>
				</li>
				<li>
					<a href="${baseurl}/findCourse?page=${page.nextPage}">下一页</a>
				</li>
				<li>
					<a href="${baseurl}/findCourse?page=${page.lastPage}">尾页</a>
				</li>
			</ul>
		</div>
	</div>

	<footer id="footer">
	  <div class="container" style="margin-bottom: 10px">
	<h4>联系我们</h4>
	<div class="contact-info">
	  您可以通过以下方式联系我们 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	  <i class="fa fa-map-marker"></i> 湖北省 武汉市 洪山区 珞瑜东路 华中科技大学 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	  <i class="fa fa-phone"></i> +86 123 4567 8901 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	  <i class="fa fa-envelope-o"></i> youremail@email.com
	</div>
	</div>
	<div class="footer2">
	  <div class="container">
	    <div class="row">
	      <div class="col-md-6 panel">
	        <div class="panel-body">
	          <p class="simplenav"> <a href="../../index.html">首页</a> | <a href="../jsp/front/about.html">关于</a> | <a href="../jsp/front/courses.html">课程</a>            | <a href="../jsp/front/words.html">单词</a> | <a href="../jsp/front/listening.html">听力</a> | <a href="../jsp/front/contact.html">联系我们</a>            </p>
	        </div>
	      </div>
	      <div class="col-md-6 panel">
	        <div class="panel-body">
	          <p class="text-right"> Copyright &copy; 2016.Company name All rights reserved.
	          </p>
	        </div>
	      </div>
	    </div>
	    <!-- /row of panels -->
	  </div>
	</div>
	</footer>
	<!-- JavaScript libs are placed at the end of the document so the pages load faster -->
	<script type="text/javascript" src='../../dist/js/jquery-1.9.1.min.js'></script>
	<script type='text/javascript' src='../../dist/js/jquery.min.js'></script>
	<script type="text/javascript" src="../../dist/js/bootstrap.min.js"></script>
	<script type="text/javascript">
		
	</script>
</body>
</html>