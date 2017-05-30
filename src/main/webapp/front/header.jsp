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
    <link rel="stylesheet" href="${baseurl}/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="${baseurl}/dist/css/font-awesome.min.css">
    <link rel="stylesheet" href="${baseurl}/dist/css/bootstrap-theme.css" media="screen">
    <link rel="stylesheet" href="${baseurl}/dist/css/style.css">
	<link rel="stylesheet" href="${baseurl}/dist/css/bootstrapValidator.min.css">
    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="${baseurl}/dist/js/html5shiv.js"></script>
    <script src="${baseurl}/dist/js/respond.min.js"></script>
    <![endif]-->
    <script type='text/javascript' src='${baseurl}/dist/js/jquery.min.js'></script> 
    <script type="text/javascript" src='${baseurl}/dist/js/jquery-1.9.1.min.js'></script>
    <script type="text/javasrcipt" src="${baseurl}/dist/js/modernizr-latest.js"></script>
    <script type='text/javascript' src='${baseurl}/dist/js/fancybox/jquery.fancybox.pack.js'></script>
    <script type='text/javascript' src='${baseurl}/dist/js/jquery.mobile.customized.min.js'></script>
    <script type='text/javascript' src='${baseurl}/dist/js/jquery.easing.1.3.js'></script>
	<script type='text/javascript' src="${baseurl}/dist/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="${baseurl}/dist/js/bootstrapValidator.min.js"></script>    
    <script type='text/javascript' src="${baseurl}/dist/js/custom.js"></script>
    <script type="text/javascript">
    	var $c = function(array) {
    		var nArray = [];
    		for (var i = 0; i < array.length; i ++)
    			nArray.push(array[i]);
    		return nArray;
    	};
    	
    	Array.prototype.each = function(func) {
    		for(var i = 0, l = this.length; i < l ; i ++) {
    			func(this[i], i);
    		};
    	};
    	
    	document.getElementsByClassName = function(cn) {
    		var hasClass=function(w, Name) {
    			var hasClass = false;
    			w.className.split(' ').each(function(s){
    			if (s == Name) 
    				hasClass = true;
    			});
    			return hasClass;
    		}; 
    		var elems =document.getElementsByTagName("*")||document.all;
       		var elemList = [];
       		$c(elems).each(function(e){
    			if(hasClass(e,cn)) {
    				elemList.push(e);
    				}
       		})
      		return $c(elemList);
    	};
    	
    	function change_bg(obj) {
    		var a = document.getElementsByClassName("nav")[0].getElementsByTagName("li");
    		for(var i = 0; i < a.length; i ++)	{
    			a[i].className = "";
    		}
    		obj.className = "avtive";
    	}
    </script>
</head>
<body>
	<!-- 置顶的导航栏 -->
	<!-- Fixed navbar -->
	<div class="navbar navbar-inverse">
	    <div class="container">
	        <div class="navbar-header">
	            <!-- Button for smallest screens -->
	            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
	            	<span class="icon-bar"></span>
	            	<span class="icon-bar"></span>
	            	<span class="icon-bar"></span>
	            </button>
	            <a class="navbar-brand" href="index.jsp"> 
	            <img src="${baseurl}/images/logo.png" alt="Techro HTML5 template"></a> 
	        </div>
	        <!-- /.navbar-header -->
	        <div class="navbar-collapse collapse">
	            <ul class="nav navbar-nav pull-right mainNav">
	                <li class="active"><a href="${baseurl}loginvalue.action" onclick="change_bg(this)">首页</a></li>
	                <li><a href="${baseurl}bulletin/about" onclick="change_bg(this)">关于</a></li>
	                <li><a href="${baseurl}front/courses.jsp" onclick="change_bg(this)">课程</a></li>
	                <li><a href="${baseurl}randomWord" onclick="change_bg(this)">单词</a></li>
	                <li><a href="${baseurl}front/listening.jsp" onclick="change_bg(this)">听力</a></li>
	                <li><a href="${baseurl}front/contact.jsp" onclick="change_bg(this)">联系我们</a></li>
	                <%-- 根据用户是否登录，显示不同的链接 --%>
					<c:choose>
						<c:when test="${empty sessionScope.sessionUser }">
							<li>
								<button type="button" class="btn btn-primary btn-block"
										data-toggle="modal" data-target="#myModal">登录</button>
							</li>
						</c:when>
						<c:otherwise>
							<li>
							<li><a href="${baseurl}usersetting">${sessionScope.sessionUser.username}</a></li>
							<li><a href= "${baseurl}logout.action">退出</a></li>
						</c:otherwise>
					</c:choose>
				</ul>
	        </div>
	        <!--/.nav-collapse -->
	    </div>
	    <!-- container -->
	</div>
	<!-- /.navbar -->

	<!-- 此处为模态框，在模态框中可以实现登录和注册的功能。用户可用手机号或者邮箱登录，注册时手机号和邮箱都要提供 -->
	<!-- modal -->
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" data-backdrop="static">
	    <div class="modal-dialog modal-lg">
	        <div class="modal-content">
	            <div class="modal-header btn-success" style="border-top-left-radius:5px;border-top-right-radius:5px;">
	                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
	                <h4 class="modal-title" id="myModalLabel">起点账号登录</h4>
	            </div>
	            <!-- modal-body -->
	            <div class="modal-body" id="login">
	                <div class="col-md-6">
	                    <div class="row">
	                        <div class="well" id="log_form">
	                            <form id="loginForm" method="post" action="${baseurl}login.action">
	                                <div class="form-group has-feedback has-feedback-left">
	                                    <label class="control-label"><span class="glyphicon glyphicon-user"></span>&nbsp;&nbsp;&nbsp;&nbsp;用户名</label>
	                                    <input type="text" name="username" class="form-control" id="username" placeholder="用户名" />
	                                    <i class="form-control-feedback"></i>
	                                    <span class="help-block"></span>
	                                </div>
	                                
	                                <div class="form-group  has-feedback has-feedback-left ">
	                                    <label for="password" class="control-label"><span class="glyphicon glyphicon-lock"></span>&nbsp;&nbsp;&nbsp;&nbsp;密码</label>
	                                    <input type="password" name="password" class="form-control" id="password" placeholder="密码" />
	                                    <i class="form-control-feedback"></i>
	                                    <span class="help-block"></span>
	                                </div>
	                                
	                                <div class="form-group has-feedback has-feedback-left">
	                                    <label class="control-label" id="captchaOperation1">验证码</label>
	                                    <input type="text" name="captcha" class="form-control" placeholder="验证码" />
	                                    <i class="form-control-feedback"></i>
	                                    <span class="help-block"></span>
	                                </div>
	                                
	                                <div class="checkbox">
	                                    <label><input type="checkbox" name="rememberMe" id="remember">记住密码</label>
	                                </div>
	                                <button type="submit" class="btn btn-success btn-block">登录</button>
	                                <p>
										<a class="pull-left" data-toggle="collapse" href="" aria-expanded="false" aria-controls="" id="getUname">忘记用户名</a>
										<a class="pull-right" data-toggle="collapse" href="" aria-expanded="false" aria-controls="" id="getPwd">忘记密码</a> 
									</p>
	                            </form>
	                        </div>
	                        
	                        <!-- well -->
	                        <div class="collapse" id="forgot_uname">
	                            <div class="form-group has-feedback has-feedback-left">
	                                <label class="control-label"><span class="glyphicon glyphicon-earphone"></span>&nbsp;&nbsp;&nbsp;&nbsp;手机号</label>
	                                <input type="email" class="form-control" placeholder="手机号" required="" title="请输入手机号">
	                                <i class="form-control-feedback"></i>
	                                <span class="help-block"></span>
	                            </div>
	                            <button type="submit" class="btn btn-success btn-block">确定</button>
	                            <p><a id="back">返回登录</a></p>
	                        </div>
	                        <div class="collapse" id="forgot_pwd">
	                            <div class="form-group has-feedback has-feedback-left">
	                                <label class="control-label"><span class="glyphicon glyphicon-envelope"></span>&nbsp;&nbsp;&nbsp;&nbsp;邮箱</label>
	                                <input type="email" class="form-control" placeholder="邮箱" required="" title="请输入邮箱" />
	                                <i class="form-control-feedback"></i> <span class="help-block"></span> </div>
	                            <button type="submit" class="btn btn-success btn-block">确定</button>
	                            <p><a id="back1">返回登录</a></p>
	                        </div>
	                    </div>
	                    <!-- row -->
	                </div>
	                <!-- col6 -->
	                <div class="col-md-6">
	                    <p class="lead">还不是学员...</p>
	                    <p><img src="${baseurl}/images/picture1.png"></p>
	                    <p><a class="btn btn-success btn-block" data-toggle="collapse" href="" aria-expanded="false" aria-controls="register" id="register_new">一键注册</a></p>
	                </div>
	                <div class="clearfix"></div>
	            </div>
	            <!-- End of modal-body -->
	            <!--Registration Modal-->
	            <div class="modal-body collapse" id="register">
	                <div class="col-md-6">
	                    <div class="row">
	                        <div class="well">
	                            <form id="regisForm" method="POST" action="${baseurl}reguser" >
	                                <div class="form-group has-feedback has-feedback-left">
	                                    <label class="control-label"><span class="glyphicon glyphicon-envelope"></span>&nbsp;&nbsp;&nbsp;&nbsp;邮箱</label>
	                                    <input type="email" name="email" class="form-control" placeholder="邮箱" />
	                                    <i class="form-control-feedback"></i>
	                                    <span class="help-block"></span>
									</div>
	                                <div class="form-group has-feedback has-feedback-left">
	                                    <label class="control-label"><span class="glyphicon glyphicon-phone"></span>&nbsp;&nbsp;&nbsp;&nbsp;手机号</label>
	                                    <input type="text" name="phone" class="form-control" placeholder="手机号" />
	                                    <i class="form-control-feedback"></i>
	                                    <span class="help-block"></span> </div>
	                                <div class="form-group has-feedback has-feedback-left">
	                                    <label class="control-label"><span class="glyphicon glyphicon-user"></span>&nbsp;&nbsp;&nbsp;&nbsp;用户名</label>
	                                    <input type="text" name="username" class="form-control" placeholder="用户名" />
	                                    <i class="form-control-feedback"></i>
	                                    <span class="help-block"></span>
									</div>
	                                <div class="form-group has-feedback has-feedback-left ">
	                                    <label for="password" class="control-label"><span class="glyphicon glyphicon-lock"></span>&nbsp;&nbsp;&nbsp;&nbsp;密码</label>
	                                    <input type="password" name="password" class="form-control" placeholder="密码" />
	                                    <i class="form-control-feedback"></i>
										<span class="help-block"></span>
									</div>
	                                <div class="form-group has-feedback has-feedback-left ">
	                                    <label for="password" class="control-label"><span class="glyphicon glyphicon-lock"></span>&nbsp;&nbsp;&nbsp;&nbsp;确认密码</label>
	                                    <input type="password" name="confirmPassword" class="form-control" placeholder="确认密码" />
	                                    <i class="form-control-feedback"></i>
	                                    <span class="help-block"></span>
	                                </div>
	                                <%-- <div class="form-group has-feedback has-feedback-left">
	                                    <label class="control-label"><span class="glyphicon glyphicon-wrench"></span>&nbsp;&nbsp;&nbsp;&nbsp;加密盐</label>
	                                    <input type="text" name="salt" value="${salt}" class="form-control" readonly="readonly"/>
	                                    <i class="form-control-feedback"></i>
	                                    <span class="help-block"></span>
	                                 </div> --%>
	                                 <div class="form-group has-feedback has-feedback-left">
	                                    <label class="control-label"><span class="glyphicon glyphicon-log-in"></span>&nbsp;&nbsp;&nbsp;&nbsp;身份选择</label>
	                                    <select name="roleId" class="btn-group btn-block form-control" id="dropdownMenu1">
	                                    	<option value="1">学生</option>
	                                    	<option value="2">老师</option>
	                                    </select>
	                                 </div>
	                                 <div class="form-group has-feedback has-feedback-left">
										<label class="control-label" id="captchaOperation2">验证码</label>
										<input type="text" name="captcha" class="form-control" placeholder="验证码" />
										<i class="form-control-feedback"></i>
										<span class="help-block"></span>
									</div>
	                                <button type="submit" class="btn btn-success btn-block" id="validateBtn">注册</button>
	                            </form> 
	                        </div>
	                        <!-- well -->
	                    </div>
	                    <!-- row -->
	                </div>
	                <!-- col6 -->
	                <div class="col-md-6">
	                    <p class="lead" style="margin-top:5px;">已有账号？</p>
	                    <p style="margin-top:30px;"><img src="${baseurl}/images/picture1.png"></p>
	                    <p style="margin-top:36px;"> <a href="#login" class="btn btn-success btn-block" id="getBack" data-toggle="collapse" aria-expanded="false" aria-controls="login">返回登录</a> </p>
	                </div>
	                <div class="clearfix"></div>
	            </div>
	            <!-- Modal registration-->
	        </div>
	        <!-- modal-content -->
	    </div>
	    <!-- /.modal-dialog -->
	</div>
	<!-- /.modal -->
	
	<script>
	var login = document.getElementById("login");
	var register = document.getElementById("register");
	var uname = document.getElementById("forgot_uname");
	var pwd = document.getElementById("forgot_pwd");
	
 	$('#myModal').on('shown.bs.modal', function () {
		setTimeout(function (){
	    $('#username').focus();
	  }, 200);
		$(register).removeClass('collapse');
		$(register).addClass('collapse');
	}); 
		
	$("#register_new").on('click', function(){
	  $(login).slideUp(1000,function(){
		  
	//	$(register).show('slow');
	    $(this).parents('.modal-body').removeClass('collapse');  
 	  });
	});
	
	$("#getBack").on('click', function(){
	  $(register).slideDown(1000,function(){
	    $(login).show('slow');
	    $(this).parents('.modal-body').toggleClass('collapse');  
	//    $(register).addClass('collapse');
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
	
	function randomNumber(min, max) {
	    return Math.floor(Math.random() * (max - min + 1) + min);
	  }
	  $("#captchaOperation1").html([randomNumber(1, 100), '+', randomNumber(1, 200), '='].join(' '));
	
	  $("#loginForm").bootstrapValidator({
	//    live:'disabled';
	    message:'This valid is not valid',
	    feedbackIcons: {
	      valid: 'glyphicon glyphicon-ok',
	      invalid: 'glyphicon glyphicon-remove',
	      validating: 'glyphicon glyphicon-refresh'
	    },
	    fields: {
	      username: {
	        message: 'The username is not valid',
	        validators: {
	          notEmpty: {
	            message: '用户名不可为空'
	          },
	        }
	      },
	      password: {
	        message: '密码无效',
	        validators: {
	          notEmpty: {
	            message: '密码不能为空'
	          },
	        }
	      },
	      captcha: {
	        validators: {
	          callback: {
	            message: '请输入正确的计算结果',
	            callback: function (value, validator) {
	              var items = $('#captchaOperation1').html().split(' '), sum = parseInt(items[0]) + parseInt(items[2]);
	              return value == sum;
	            }
	          }
	        }
	      }
	    }
	  });
	/* 	  register validation    */	
  $("#captchaOperation2").html([randomNumber(1, 100), '+', randomNumber(1, 200), '='].join(' '));
	  $("#regisForm").bootstrapValidator({
//		  live:'disabled';
	    message: 'This value is not valid',
	    feedbackIcons: {
	      valid: 'glyphicon glyphicon-ok',
	      invalid: 'glyphicon glyphicon-remove',
	      validating: 'glyphicon glyphicon-refresh'
	    },
	    fields: {
	      username: {
	        message: 'The username is not valid',
	        validators: {
	          notEmpty: {
	            message: '用户名不可为空'
	          },
	          stringLength: {
	            min: 6,
	            max: 30,
	            message: '用户名长度必须再6到30之间'
	          },
	          regexp: {
	            regexp: /^[a-zA-Z0-9_\.]+$/,
	            message: '用户名由数字、字母、下划线和.组成'
	          },
//	          remote: {
//	            url: 'XXX',
//	            message: 'The username is not available'
//	          },
	          different: {
	            field: 'password',
	            message: '不能和密码相同'
	          }
	        }
	      },
	      email: {
	        validators: {
	          notEmpty: {
	            message : '邮箱不可为空'
	          },
	          emailAddress: {
	            message: '请输入正确的邮箱地址，如：123@163.com'
	          }
	        }
	      },
	      phone: {
	        message: 'The phone is not valid',
	        validators: {
	          notEmpty: {
	            message: '手机号码不能为空'
	          },
	          stringLength: {
	            min: 11,
	            max: 11,
	            message: '请输入11位手机号码'
	          },
	          regexp: {
	            regexp: /^1[3|5|8]{1}[0-9]{9}$/,
	            message: '请输入正确的手机号码'
	          }
	        }
	      },
	      password: {
	        message: '密码无效',
	        validators: {
	          notEmpty: {
	            message: '密码不能为空'
	          },
	          stringLength: {
	            min: 6,
	            max: 30,
	            message:'密码长度必须在6到30之间'
	          },
	          identical: {
	            field: 'confirmPassword',
	            message: '两次密码不一致'
	          },
	          different: {
	            field: 'username',
	            message: '不能与用户名相同'
	          }
	        }
	      },
	      confirmPassword: {
	        message: '密码无效',
	        validators: {
	          notEmpty: {
	            message: '密码不能为空'
	          },
	          stringLength: {
	            min: 6,
	            max: 30,
	            message:'密码长度必须在6到30之间'
	          },
	          identical: {
	            field: 'password',
	            message: '两次密码不一致'
	          },
	          different: {
	            field: 'username',
	            message: '不能与用户名相同'
	          }
	        }
	      },
	      salt: {
	        validators: {
	          notEmpty: {
	            message: '加密盐不可为空'
	          },
	        }
	      },
	      roleId: {
	        validators: {

	        }
	      },
	      captcha: {
	        validators: {
	          callback: {
	            message: '请输入正确的计算结果',
	            callback: function(value, validator) {
	              var items = $('#captchaOperation2').html().split(' '), sum = parseInt(items[0]) + parseInt(items[2]);
	              return value == sum;
	            }
	          }
	        }
	      }

	    }
	  });
	  // Validate the form manually
	  $('#validateBtn').click(function() {
	    $('#defaultForm').bootstrapValidator('validate');
	  });
	</script>
</body>
</html>