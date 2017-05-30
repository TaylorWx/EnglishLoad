<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="baseurl" value="${pageContext.request.contextPath }"></c:set>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>个人中心</title>
</head>
<body>
<jsp:include page="usersetting_header.jsp"></jsp:include>
   
                <div class="mod-usetting-right">
                    <div class="scan-history">
                        <p class="usetting-right-title clearfix">欢迎来到个人中心</p>
                        <div class="g-flow">  
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div id="foot">
        <div class="mod-footer">
            <div class="copy-box">Copyright &copy; 2017. Entries Online all rights reserved.</div>
        </div>
    </div>

</body>
</html>