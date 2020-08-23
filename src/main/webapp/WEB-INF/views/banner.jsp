
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<div class="banner">
    <div class="col-sm-3 banner-mat">
        <img class="img-responsive" src="<c:url value='/template/images/ba1.jpg'/>" alt="">
    </div>
    <div class="col-sm-6 matter-banner">
        <div class="slider">
            <div class="callbacks_container">
                <ul class="rslides" id="slider">
                    <li>
                        <img src="<c:url value='/template/images/1.jpg'/>" alt="">
                    </li>
                    <li>
                        <img src="<c:url value='/template/images/2.jpg'/>" alt="">
                    </li>
                    <li>
                        <img src="<c:url value='/template/images/1.jpg'/>" alt="">
                    </li>
                </ul>
            </div>
        </div>
    </div>
    <div class="col-sm-3 banner-mat">
        <img class="img-responsive" src="<c:url value='/template/images/ba.jpg'/>" alt="">
    </div>
    <div class="clearfix"></div>
</div>
</body>
</html>
