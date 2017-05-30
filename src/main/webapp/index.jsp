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
    <link rel="stylesheet" href="dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="dist/css/font-awesome.min.css">
    <link rel="stylesheet" href="dist/css/bootstrap-theme.css" media="screen">
    <link rel="stylesheet" href="dist/css/style.css">
    <link rel='stylesheet' id='camera-css' href='dist/css/camera.css' type='text/css' media='all'>
	<script type='text/javascript' src='${baseurl}/dist/js/jquery.min.js'></script>

</head>
<body>
 <jsp:include page="front/header.jsp" />
      <!-- 广告轮播 -->
        <div id="ad-carousel" class="carousel slide" data-ride="carousel">
            <!-- 轮播指标（有几个轮播项） -->
             <ol class="carousel-indicators">
                 <li data-target="#ad-carousel" data-slide-to="0" class="active"></li>
                 <li data-target="#ad-carousel" data-slide-to="1"></li>
                 <li data-target="#ad-carousel" data-slide-to="2"></li>
             </ol>
            <!-- 轮播项目 -->
            <div class="carousel-inner" style="height:500px;">
                <div class="item active">
                    <img src="images/slides/img1.jpg" alt="1 slide">
                    <div class="container">
                        <div class="carousel-caption" style="height:50%;font-weight:700;">
                            <h1 style="font-size:50px;">Entries Online</h1>
                            <p style="font-size:20px;">For Your Better English.</p>
                        </div>
                    </div>
                </div>
                <div class="item">
                    <img src="images/slides/img2.jpg" alt="2 slide">
                    <div class="container">
                        <div class="carousel-caption" style="height:50%;font-weight:700;">
                            <h1 style="font-size:50px;">Entries Online</h1>
                            <p style="font-size:20px;">Join us now, you'll get a new visiton.</p>
                        </div>
                    </div>
                </div>
                <div class="item">
                    <img src="images/slides/img3.jpg" alt="3 slide">
                    <div class="container">
                        <div class="carousel-caption" style="height:50%;font-weight:700;">
                            <h1 style="font-size:50px;">Entries Online</h1>
                            <p style="font-size:20px;">You'll learn everyday English.</p>
                        </div>
                    </div>
                </div>
            </div>
            <!-- 轮播导航（左右切换效果） -->
            <a class="left carousel-control" href="#ad-carousel" data-slide="prev">
                <span class="glyphicon glyphicon-chevron-left"></span>
            </a>
            <a class="right carousel-control" href="#ad-carousel" data-slide="next">
                <span class="glyphicon glyphicon-chevron-right"></span>
            </a>
        </div>

<!-- 此处为宣传栏，分为3格显示，分别是在线课程、词汇学习、听力训练 -->
<div class="container">
    <div class="row">

        <!--/span3-->
        <div class="col-md-4">
            <div class="grey-box-icon">
                <div class="icon-box-top grey-box-icon-pos"> <img src="images/2.png" alt="" /> </div>
                <!--icon box top -->
                <h4>在线课程</h4>
                <p>我们为广大学员提供了优秀的课程，学员可以根据自己的需要和兴趣选择将要学习的课程。</p>
                <p><a href="front/courses.jsp"><em>点击了解更多</em></a></p>
            </div>
            <!--grey box -->
        </div>
        <!--/span3-->
        <div class="col-md-4">
            <div class="grey-box-icon">
                <div class="icon-box-top grey-box-icon-pos"> <img src="images/3.png" alt="" /> </div>
                <!--icon box top -->
                <h4>词汇通关</h4>
                <p>为了帮助学员更好地学习，我们提供了单词学习的模块。在这里，学员可以自由选择单词的难度。</p>
                <p><a href="front/words.jsp"><em>点击了解更多</em></a></p>
            </div>
            <!--grey box -->
        </div>
        <!--/span3-->
        <div class="col-md-4">
            <div class="grey-box-icon">
                <div class="icon-box-top grey-box-icon-pos"> <img src="images/4.png" alt="" /> </div>
                <!--icon box top -->
                <h4>听力训练</h4>
                <p>英语口语的困难常常是由于输入太少，通过听力训练进行大量输入，将给口语部分的学习带来方便。</p>
                <p><a href="front/listening.jsp"><em>点击了解更多</em></a></p>
            </div>
            <!--grey box -->
        </div>
        <!--/span3-->
    </div>
</div>
<section class="news-box top-margin">
    <div class="container">
        <h2><span>课程预告</span></h2>
        <div class="row">
            <div class="col-md-3 ">
                <div class="newsBox">
                    <div class="thumbnail">
                        <figure><img src="images/news2.jpg" alt=""></figure>
                        <div class="caption maxheight2">
                            <div class="box_inner">
                                <div class="box">
                                    <p class="title">
                                    <h5>TED: Ideas worth spread</h5>
                                    </p>
                                    <p>Lorem ipsum dolor sit amet, conc tetu er adipi scing. Praesent
                                        ves tibuum molestie lacuiirhs. Aenean.</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-3">
                <div class="newsBox">
                    <div class="thumbnail">
                        <figure><img src="images/news3.jpg" alt=""></figure>
                        <div class="caption maxheight2">
                            <div class="box_inner">
                                <div class="box">
                                    <p class="title">
                                    <h5>Photography </h5>
                                    </p>
                                    <p>Lorem ipsum dolor sit amet, conc tetu er adipi scing. Praesent
                                        ves tibuum molestie lacuiirhs. Aenean.</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-3">
                <div class="newsBox">
                    <div class="thumbnail">
                        <figure><img src="images/news4.jpg" alt=""></figure>
                        <div class="caption maxheight2">
                            <div class="box_inner">
                                <div class="box">
                                    <p class="title">
                                    <h5>Audio Editing</h5>
                                    </p>
                                    <p>Lorem ipsum dolor sit amet, conc tetu er adipi scing. Praesent
                                        ves tibuum molestie lacuiirhs. Aenean.</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-3">
                <div class="newsBox">
                    <div class="thumbnail">
                        <figure><img src="images/news4.jpg" alt=""></figure>
                        <div class="caption maxheight2">
                            <div class="box_inner">
                                <div class="box">
                                    <p class="title">
                                    <h5>Audio Editing</h5>
                                    </p>
                                    <p>Lorem ipsum dolor sit amet, conc tetu er adipi scing. Praesent
                                        ves tibuum molestie lacuiirhs. Aenean.</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<section class="container">
    <div class="row">
        <div class="col-md-8">
            <div class="title-box clearfix ">
                <h2 class="title-box_primary">公告</h2>
            </div>
      <c:forEach items="${bulletinList}"  var="bulletin" varStatus="status">
       <c:if test="${status.count<4}">
      <p><a class="btn-inline" href="${baseurl}/bulletin/showBulletin?id=${bulletin.bulletinId}">${bulletin.title}</a></p>
      </c:if>
      </c:forEach>
            <a href="${baseurl}/bulletin/showAllBulletin" title="read more" class="btn-inline " target="_self">更多</a> </div>
        <div class="col-md-4">
            <div class="title-box clearfix ">
                <h2 class="title-box_primary">友情链接</h2>
            </div>
            <div class="list styled custom-list">
                <ul>
                    <li><a title="BBC Learning English" href="http://www.bbc.co.uk/learningenglish/"> Learing English from British Broadcasting Corporation - BBC Learning English</a></li>
                    <li><a title="TED:Idea worth spreading" href="http://www.ted.com/"> Lecture about Technology, Entertainment, Design - Idea worth spreading</a></li>
                    <li><a title="ESL Pod" href="http://www.eslpod.com/"> English as a Second English Podcast - a marverlous way to train listening</a></li>
                </ul>
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
                        <p class="simplenav"> <a href="index.jsp">首页</a> | <a href="front/about.jsp">关于</a> | <a href="front/courses.jsp">课程</a> | <a href="front/words.jsp">单词</a> | <a href="front/listening.jsp">听力</a> | <a href="front/contact.jsp">联系我们</a> </p>
                    </div>
                </div>
                <div class="col-md-6 panel">
                    <div class="panel-body">
                        <p class="text-right"> Copyright &copy; 2016.Company name All rights
                            reserved.</p>
                    </div>
                </div>
            </div>
            <!-- /row of panels -->
        </div>
    </div>
</footer>
<!-- JavaScript libs are placed at the end of the document so the pages load faster -->

<script>
  function checkPasswords() {
    var passl = document.getElementById("password1");
    alert("密码框1的值为："+pass1.value);
    var pass2 = document.getElementById("password2");
    alert("密码框2的值为："+pass2.value);
    if (passl.value != pass2.value)
      passl.setCustomValidity("两次密码必须输入一致！");
    else
      passl.setCustomValidity('');
  }
  function check(){
    document.getElementById('ok').disabled = 'disabled';
  }
</script>
<script>
  jQuery(function(){
    jQuery('#camera_wrap_4').camera({
      transPeriod: 500,
      time: 3000,
      height: '600',
      loader: 'false',
      pagination: true,
      thumbnails: false,
      hover: false,
      playPause: false,
      navigation: false,
      opacityOnGrid: false,
      imagePath: 'images/'
    });
  });
</script>
<script>
  $('#myModal').on('shown.bs.modal', function () {
    setTimeout(function (){
      $('#username').focus();
    }, 200);
  });
  var login = document.getElementById("login");
  var register = document.getElementById("register");
  var uname = document.getElementById("forgot_uname");
  var pwd = document.getElementById("forgot_pwd");
  $("#register_new").on('click', function(){
    $(login).slideUp(1000,function(){
      $(register).toggleClass('collapse');
    });
  });
  $("#getBack").on('click', function(){
    $(register).slideDown(1000,function(){
      $(login).show('slow');
      $(register).addClass('collapse');
    });
  });
  $("#getUname").on('click', function(){
    $("#log_form").slideUp('swing',function(){
      $(uname).removeClass('collapse');
    });
  });
  $("#getPwd").on('click', function(){
    $("#log_form").slideUp('swing',function(){
      $(pwd).removeClass('collapse');
    });
  });
  $("#back").on('click', function(){
    $("#log_form").show('swing',function(){
      $(uname).addClass('collapse');
    });
  });
  $("#back1").on('click', function(){
    $("#log_form").show('swing',function(){
      $(pwd).addClass('collapse');
    });
  });
</script>
</body>
</html>
