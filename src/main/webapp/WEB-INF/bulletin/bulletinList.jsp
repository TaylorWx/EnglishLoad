<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
           <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
            <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
 <c:set var="baseurl" value="${pageContext.request.contextPath}/"></c:set>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="free-educational-responsive-web-template-webEdu">
    <title>Entries Online - OneBulletin</title>
    <link rel="favicon" href="images/favicon.png">
    <link rel="stylesheet" media="screen" href="http://fonts.useso.com/css?family=Open+Sans:300,400,700">
    <link rel="stylesheet" href="../dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="../dist/css/font-awesome.min.css">
    <!-- Custom styles for our template -->
    <link rel="stylesheet" href="../dist/css/bootstrap-theme.css" media="screen">
    <link rel="stylesheet" href="../dist/css/style.css">
    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
	<script src="../dist/js/html5shiv.js"></script>
	<script src="../dist/js/respond.min.js"></script>
	<![endif]-->

	<script type="text/javascript" src='../dist/js/jquery-1.9.1.min.js'></script>
    <script type='text/javascript' src='../dist/js/jquery.min.js'></script>
    <script src="http://netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
    <script src="../dist/js/custom.js"></script>
    
    <!-- 设置图片无缝滑动 -->
    <style type="text/css">
        #demo { 
        	overflow:hidden;
            background: #FFF;
            border: 1px dashed #fff;
            margin:0 auto;
            width: 1050px;
            height:250px;
            margin: 20px 100px;
        }
        #demo img {
            border: 3px solid #F2F2F2;
            height:250px;
        }
        #indemo {
            float: left;
            width: 400%;
        }
        #demo1 {
            float: left;
        }
        #demo2 {
            float: left;
      	}              
     </style>
</head>

<body>
 <%--  <jsp:include page="header.jsp" />--%>
 	<header id="head" class="secondary">
            <div class="container">
                    <h1>${bulletin.title}</h1>
                    <p><fmt:formatDate value="${bulletin.date}" pattern="yyyy-MM-dd HH:mm:ss"/>&nbsp;&nbsp;|&nbsp;&nbsp;在线英语学习平台</p>
                </div>
    </header>
    <section class="team-content">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                	<h3>公告内容</h3>
                    <pre style="width:95%;margin:15px auto;padding:30px 35px 20px 35px;word-wrap:break-word;white-space: pre-wrap;border:dashed 1px white;"><p>${bulletin.content}</p></pre>
             	</div>
             	<div class="col-md-12">
                 	<h3>在线英语学习平台风貌</h3>
                    <p style="width:95%;margin:0px auto;padding:15px 10px;">我们是一个完全免费的英语学习网站，旨在为用户提供更集中的方法和途径去了解和学习英语。我们是一个完全免费的英语学习网站，旨在为用户提供更集中的方法和途径去了解和学习英语。我们是一个完全免费的英语学习网站，旨在为用户提供更集中的方法和途径去了解和学习英语。
我们是一个完全免费的英语学习网站，旨在为用户提供更集中的方法和途径去了解和学习英语。我们是一个完全免费的英语学习网站，旨在为用户提供更集中的方法和途径去了解和学习英语。我们是一个完全免费的英语学习网站，旨在为用户提供更集中的方法和途径去了解和学习英语。我们是一个完全免费的英语学习网站，旨在为用户提供更集中的方法和途径去了解和学习英语</p>
                    <br />
                </div>
            </div>
        </div>
	    <div id="demo">
            <div id="indemo">
                <div id="demo1">
                    <img src="../images/photo-1.jpg"/>
                    <img src="../images/photo-2.jpg"/>
                    <img src="../images/photo-3.jpg"/>
                    <img src="../images/photo-4.jpg"/>
                    <img src="../images/photo-5.jpg"/>
                	<div id="demo2"></div>
                </div>
            </div>
		</div>
    </section>
	<footer id="footer">
  		<div class="container" style="margin-bottom: 10px">     
    		<h4>联系我们</h4>
    		<div class="contact-info"> 
	      		您可以通过以下方式联系我们
	      		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	      		<i class="fa fa-map-marker"></i> 湖北省 武汉市 洪山区 珞瑜东路 华中科技大学
	      		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	      		<i class="fa fa-phone"></i> +86 123 4567 8901 
	      		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	      		<i class="fa fa-envelope-o"></i> youremail@email.com 
    		</div>
  		</div>
  		<div class="footer2">
    		<div class="container">
      			<div class="row">
        			<div class="col-md-6 panel">
          				<div class="panel-body">
            				<p class="simplenav"> 
            				<a href="../index.jsp">首页</a> | <a href="${baseurl}front/about.jsp">关于</a> | <a href="${baseurl}front/courses.jsp">课程</a> | <a href="${baseurl}front/words.jsp">单词</a> | <a href="${baseurl}front/listening.jsp">听力</a> | <a href="${baseurl}front/contact.jsp">联系我们</a> </p>
          				</div>
        			</div>
        			<div class="col-md-6 panel">
          				<div class="panel-body">
            				<p class="text-right"> Copyright &copy; 2016.Company name All rights reserved.</p>
          				</div>
        			</div>
      			</div>
      			<!-- /row of panels -->
    		</div>
  		</div>
	</footer>
	<script>
		var speed = 8; //数字越大速度越慢
		var tab = document.getElementById("demo");
		var tab1 = document.getElementById("demo1");
		var tab2 = document.getElementById("demo2");
		
		tab2.innerHTML = tab1.innerHTML;
		function Marquee() {
			if(tab2.offsetWidth - tab.scrollLeft <= 0)
				tab.scrollLeft -= tab1.offsetWidth
			else {
				tab.scrollLeft ++;
			}
		}
		
		var MyMar = setInterval(Marquee,speed);
		tab.onmouseover = function() {
			clearInterval(MyMar)
		};
		tab.onmouseout=function() {
			MyMar=setInterval(Marquee,speed)
		};
	</script>
</body>
</html>
