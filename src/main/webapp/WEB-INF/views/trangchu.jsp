
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Trang Chủ</title>
    <jsp:include page="linktemplate.jsp"/>

</head>
<body>
<!--header-->
    <jsp:include page="header.jsp"/>
<!--//header-->

<!--banner-->
    <jsp:include page="banner.jsp"/>
<!--//banner-->

<!--content-->
<div class="content">
    <div class="container">
        <div class="content-top">
            <h1>Recent Products</h1>
            <div class="content-top1">
                <c:forEach var="lsPro" items="${lsPro}" >
                    <div class="col-md-3 col-md2">
                        <div class="col-md1 simpleCart_shelfItem">
                            <a href="/chitiet/${lsPro.masanpham}">
                                <img class="img-responsive" src="<c:url value='/template/images/SanPham/${lsPro.hinhsanpham}'/>" alt=""/>
                            </a>
                            <h3><a href="/chitiet/${lsPro.masanpham}">${lsPro.tensanpham}</a></h3>
                            <div class="price">
                                <h5 class="item_price">${lsPro.giatien}</h5>
                                <a href="/chitiet/${lsPro.masanpham}" class="item_add" >Xem Chi Tiết </a>
                                <div class="clearfix"></div>
                            </div>
                        </div>
                    </div>
                </c:forEach>

<%--                <div class="col-md-3 col-md2">--%>
<%--                    <div class="col-md1 simpleCart_shelfItem">--%>
<%--                        <a href="/chitiet">--%>
<%--                            <img class="img-responsive" src="<c:url value='/template/images/pi2.png'/>" alt=""/>--%>
<%--                        </a>--%>
<%--                        <h3><a href="/chitiet">T-Shirt</a></h3>--%>
<%--                        <div class="price">--%>
<%--                            <h5 class="item_price">$300</h5>--%>
<%--                            <a href="#" class="item_add">Add To Cart</a>--%>
<%--                            <div class="clearfix"></div>--%>
<%--                        </div>--%>

<%--                    </div>--%>
<%--                </div>--%>
<%--                <div class="col-md-3 col-md2">--%>
<%--                    <div class="col-md1 simpleCart_shelfItem">--%>
<%--                        <a href="single.html">--%>
<%--                            <img class="img-responsive" src="<c:url value='/template/images/pi4.png'/>" alt=""/>--%>
<%--                        </a>--%>
<%--                        <h3><a href="single.html">Shirt</a></h3>--%>
<%--                        <div class="price">--%>
<%--                            <h5 class="item_price">$300</h5>--%>
<%--                            <a href="#" class="item_add">Add To Cart</a>--%>
<%--                            <div class="clearfix"></div>--%>
<%--                        </div>--%>

<%--                    </div>--%>
<%--                </div>--%>
<%--                <div class="col-md-3 col-md2">--%>
<%--                    <div class="col-md1 simpleCart_shelfItem">--%>
<%--                        <a href="single.html">--%>
<%--                            <img class="img-responsive" src="<c:url value='/template/images/pi1.png'/>" alt=""/>--%>
<%--                        </a>--%>
<%--                        <h3><a href="single.html">Tops</a></h3>--%>
<%--                        <div class="price">--%>
<%--                            <h5 class="item_price">$300</h5>--%>
<%--                            <a href="#" class="item_add">Add To Cart</a>--%>
<%--                            <div class="clearfix"></div>--%>
<%--                        </div>--%>

<%--                    </div>--%>
<%--                </div>--%>
                <div class="clearfix"></div>
            </div>
            <div class="content-top1">
                <div class="col-md-3 col-md2">
                    <div class="col-md1 simpleCart_shelfItem">
                        <a href="single.html">
                            <img class="img-responsive" src="<c:url value='/template/images/pi3.png'/>" alt=""/>
                        </a>
                        <h3><a href="single.html">Shirt</a></h3>
                        <div class="price">
                            <h5 class="item_price">$300</h5>
                            <a href="#" class="item_add">Add To Cart</a>
                            <div class="clearfix"></div>
                        </div>

                    </div>
                </div>
                <div class="col-md-3 col-md2">
                    <div class="col-md1 simpleCart_shelfItem">
                        <a href="single.html">
                            <img class="img-responsive" src="<c:url value='/template/images/pi5.png'/>" alt=""/>
                        </a>
                        <h3><a href="single.html">T-Shirt</a></h3>
                        <div class="price">
                            <h5 class="item_price">$300</h5>
                            <a href="#" class="item_add">Add To Cart</a>
                            <div class="clearfix"></div>
                        </div>

                    </div>
                </div>
                <div class="col-md-3 col-md2">
                    <div class="col-md1 simpleCart_shelfItem">
                        <a href="single.html">
                            <img class="img-responsive" src="<c:url value='/template/images/pi6.png'/>" alt=""/>
                        </a>
                        <h3><a href="single.html">Jeans</a></h3>
                        <div class="price">
                            <h5 class="item_price">$300</h5>
                            <a href="#" class="item_add">Add To Cart</a>
                            <div class="clearfix"></div>
                        </div>

                    </div>
                </div>
                <div class="col-md-3 col-md2">
                    <div class="col-md1 simpleCart_shelfItem">
                        <a href="single.html">
                            <img class="img-responsive" src="<c:url value='/template/images/pi7.png'/>" alt=""/>
                        </a>
                        <h3><a href="single.html">Tops</a></h3>
                        <div class="price">
                            <h5 class="item_price">$300</h5>
                            <a href="#" class="item_add">Add To Cart</a>
                            <div class="clearfix"></div>
                        </div>

                    </div>
                </div>
                <div class="clearfix"></div>
            </div>
        </div>
    </div>
</div>
<!--//content-->

<!--footer-->
    <jsp:include page="footer.jsp"/>
<!--//footer-->
</body>
</html>
