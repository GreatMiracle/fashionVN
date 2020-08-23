
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

<!--content-->
<div class="single">
    <div class="container">
        <div class="col-md-9">
            <div class="col-md-5 grid">
                <div class="flexslider">
                    <ul class="slides">
                        <li data-thumb="<c:url value='/template/images/SanPham/${detailProduct.hinhsanpham}'/>">
                            <div class="thumb-image"> <img src="<c:url value='/template/images/SanPham/${detailProduct.hinhsanpham}'/>" data-imagezoom="true" class="img-responsive"> </div>
                        </li>
                        <li data-thumb="<c:url value='/template/images/si1.jpg'/>">
                            <div class="thumb-image"> <img src="<c:url value='/template/images/si1.jpg'/>" data-imagezoom="true" class="img-responsive"> </div>
                        </li>
                        <li data-thumb="<c:url value='/template/images/si2.jpg'/>">
                            <div class="thumb-image"> <img src="<c:url value='/template/images/si2.jpg'/>" data-imagezoom="true" class="img-responsive"> </div>
                        </li>
                    </ul>
                </div>
            </div>


            <div class="col-md-7 single-top-in">
                <div class="single-para simpleCart_shelfItem">
<%--                    <h1>Lorem ipsum dolor sit amet, consectetur adipisicing elit</h1>--%>
                    <div class="hidden" id="masanpham">${detailProduct.masanpham}</div>
                    <div class="hidden" id="hinhsanpham">${detailProduct.hinhsanpham}</div>


                    <c:forEach var="chitietsanphams" items="${detailProduct.chitietsanphams}">
                        <div class="hidden" id="soluong">${chitietsanphams.soluong}</div>
                        <div class="hidden" id="machitietsanpham">${chitietsanphams.machitietsanpham}</div>
                    </c:forEach>

                    <h1 id="tensanpham">${detailProduct.tensanpham}</h1>
                    <p id="mota">${detailProduct.mota}</p>
                    <div class="star-on">
                        <ul>
                            <li><a href="#"><i class="glyphicon glyphicon-star"> </i></a></li>
                            <li><a href="#"><i class="glyphicon glyphicon-star"> </i></a></li>
                            <li><a href="#"><i class="glyphicon glyphicon-star"> </i></a></li>
                            <li><a href="#"><i class="glyphicon glyphicon-star"> </i></a></li>
                            <li><a href="#"><i class="glyphicon glyphicon-star"> </i></a></li>
                        </ul>
                        <div class="review">
                            <a href="#"> 3 reviews </a>/
                            <a href="#">  Write a review</a>
                        </div>
                        <div class="clearfix"> </div>
                    </div>

                    <label class="add-to item_price" data-value="${detailProduct.giatien}" id="giatien">$${detailProduct.giatien}</label>

                    <div class="available">
                        <h6>Available Options :</h6>
                        <ul>

                            <li>Size : <select id="size">
                                <c:forEach var="chitietsanphams" items="${detailProduct.chitietsanphams}">
                                    <option value="${chitietsanphams.sizesanpham.masize}">${chitietsanphams.sizesanpham.size}</option>
                                </c:forEach>
                            </select></li>

                            <li>Color : <select id="tenmau">
                                <c:forEach var="chitietsanphams" items="${detailProduct.chitietsanphams}">
                                    <option value="${chitietsanphams.mausanpham.mamau}">${chitietsanphams.mausanpham.tenmau}</option>
                                </c:forEach>
                            </select></li>

                            <li>Cost :
                                <select>
                                    <option>U.S.Dollar</option>
                                    <option>Euro</option>
                                </select></li>
                        </ul>
                    </div>
                    <button class="cart item_add" id="btn_themvaogiohang">Add To Cart</button>
                </div>
            </div>

            <div class="clearfix"> </div>

            <div class="content-top1">
                <div class="col-md-4 col-md3">
                    <div class="col-md1 simpleCart_shelfItem">
                        <a href="single.html">
                            <img class="img-responsive" src="<c:url value='/template/images/pi6.png'/>" alt="" />
                        </a>
                        <h3><a href="single.html">Jeans</a></h3>
                        <div class="price">
                            <h5 class="item_price">$300</h5>
                            <a href="#" class="item_add">Add To Cart</a>
                            <div class="clearfix"> </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 col-md3">
                    <div class="col-md1 simpleCart_shelfItem">
                        <a href="single.html">
                            <img class="img-responsive" src="<c:url value='/template/images/pi7.png'/>" alt="" />
                        </a>
                        <h3><a href="single.html">Tops</a></h3>
                        <div class="price">
                            <h5 class="item_price">$300</h5>
                            <a href="#" class="item_add">Add To Cart</a>
                            <div class="clearfix"> </div>
                        </div>

                    </div>
                </div>
                <div class="col-md-4 col-md3">
                    <div class="col-md1 simpleCart_shelfItem">
                        <a href="single.html">
                            <img class="img-responsive" src="<c:url value='/template/images/pi.png'/>" alt="" />
                        </a>
                        <h3><a href="single.html">Tops</a></h3>
                        <div class="price">
                            <h5 class="item_price">$300</h5>
                            <a href="#" class="item_add">Add To Cart</a>
                            <div class="clearfix"> </div>
                        </div>

                    </div>
                </div>

                <div class="clearfix"> </div>
            </div>
        </div>
        <!----->
        <div class="col-md-3 product-bottom">
            <!--categories-->
            <div class=" rsidebar span_1_of_left">
                <h3 class="cate">Categories</h3>
                <ul class="menu-drop">
                    <li class="item1"><a href="#">Men </a>
                        <ul class="cute">
                            <li class="subitem1"><a href="single.html">Cute Kittens </a></li>
                            <li class="subitem2"><a href="single.html">Strange Stuff </a></li>
                            <li class="subitem3"><a href="single.html">Automatic Fails </a></li>
                        </ul>
                    </li>
                    <li class="item2"><a href="#">Women </a>
                        <ul class="cute">
                            <li class="subitem1"><a href="single.html">Cute Kittens </a></li>
                            <li class="subitem2"><a href="single.html">Strange Stuff </a></li>
                            <li class="subitem3"><a href="single.html">Automatic Fails </a></li>
                        </ul>
                    </li>
                    <li class="item3"><a href="#">Kids</a>
                        <ul class="cute">
                            <li class="subitem1"><a href="single.html">Cute Kittens </a></li>
                            <li class="subitem2"><a href="single.html">Strange Stuff </a></li>
                            <li class="subitem3"><a href="single.html">Automatic Fails</a></li>
                        </ul>
                    </li>
                    <li class="item4"><a href="#">Accesories</a>
                        <ul class="cute">
                            <li class="subitem1"><a href="single.html">Cute Kittens </a></li>
                            <li class="subitem2"><a href="single.html">Strange Stuff </a></li>
                            <li class="subitem3"><a href="single.html">Automatic Fails</a></li>
                        </ul>
                    </li>

                    <li class="item4"><a href="#">Shoes</a>
                        <ul class="cute">
                            <li class="subitem1"><a href="single.html">Cute Kittens </a></li>
                            <li class="subitem2"><a href="single.html">Strange Stuff </a></li>
                            <li class="subitem3"><a href="single.html">Automatic Fails </a></li>
                        </ul>
                    </li>
                </ul>
            </div>
            <!--initiate accordion-->
            <script type="text/javascript">
                $(function() {
                    var menu_ul = $('.menu-drop > li > ul'),
                        menu_a  = $('.menu-drop > li > a');
                    menu_ul.hide();
                    menu_a.click(function(e) {
                        e.preventDefault();
                        if(!$(this).hasClass('active')) {
                            menu_a.removeClass('active');
                            menu_ul.filter(':visible').slideUp('normal');
                            $(this).addClass('active').next().stop(true,true).slideDown('normal');
                        } else {
                            $(this).removeClass('active');
                            $(this).next().stop(true,true).slideUp('normal');
                        }
                    });

                });
            </script>
            <!--//menu-->
            <!--seller-->
            <div class="product-bottom">
                <h3 class="cate">Best Sellers</h3>
                <div class="product-go">
                    <div class=" fashion-grid">
                        <a href="single.html"><img class="img-responsive " src="<c:url value='/template/images/pr.jpg'/>" alt=""></a>
                    </div>
                    <div class=" fashion-grid1">
                        <h6 class="best2"><a href="single.html" >Lorem ipsum dolor sitamet consectetuer  </a></h6>
                        <span class=" price-in1"> $40.00</span>
                    </div>
                    <div class="clearfix"> </div>
                </div>
                <div class="product-go">
                    <div class=" fashion-grid">
                        <a href="single.html"><img class="img-responsive " src="<c:url value='/template/images/pr1.jpg'/>" alt=""></a>
                    </div>
                    <div class=" fashion-grid1">
                        <h6 class="best2"><a href="single.html" >Lorem ipsum dolor sitamet consectetuer  </a></h6>
                        <span class=" price-in1"> $40.00</span>
                    </div>
                    <div class="clearfix"> </div>
                </div>
                <div class="product-go">
                    <div class=" fashion-grid">
                        <a href="single.html"><img class="img-responsive " src="<c:url value='/template/images/pr2.jpg'/>" alt=""></a>
                    </div>
                    <div class=" fashion-grid1">
                        <h6 class="best2"><a href="single.html" >Lorem ipsum dolor sitamet consectetuer  </a></h6>
                        <span class=" price-in1"> $40.00</span>
                    </div>
                    <div class="clearfix"> </div>
                </div>
                <div class="product-go">
                    <div class=" fashion-grid">
                        <a href="single.html"><img class="img-responsive " src="<c:url value='/template/images/pr3.jpg'/>" alt=""></a>
                    </div>
                    <div class=" fashion-grid1">
                        <h6 class="best2"><a href="single.html" >Lorem ipsum dolor sitamet consectetuer  </a></h6>
                        <span class=" price-in1"> $40.00</span>
                    </div>
                    <div class="clearfix"> </div>
                </div>
            </div>

            <!--//seller-->
            <!--tag-->
            <div class="tag">
                <h3 class="cate">Tags</h3>
                <div class="tags">
                    <ul>
                        <li><a href="#">design</a></li>
                        <li><a href="#">fashion</a></li>
                        <li><a href="#">lorem</a></li>
                        <li><a href="#">dress</a></li>
                        <li><a href="#">fashion</a></li>
                        <li><a href="#">dress</a></li>
                        <li><a href="#">design</a></li>
                        <li><a href="#">dress</a></li>
                        <li><a href="#">design</a></li>
                        <li><a href="#">fashion</a></li>
                        <li><a href="#">lorem</a></li>
                        <li><a href="#">dress</a></li>
                        <div class="clearfix"> </div>
                    </ul>
                </div>
            </div>
        </div>
        <div class="clearfix"> </div>
    </div>
</div>
<!--content-->

<!--footer-->
<jsp:include page="footer.jsp"/>
<!--//footer-->
</body>
</html>
