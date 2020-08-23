
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
<div class="container">
    <div class="check-out">
        <h1>Checkout</h1>

        <table >
            <tr>
                <th>Item</th>
                <th>Number</th>
                <th>Prices</th>
                <th>Delery Detials</th>
                <th>Subtotal</th>
                <th></th>
            </tr>
            <c:forEach var="giohangne" items="${giohangne}">
<%--               <h1>${giohangne.machitietsanpham}</h1>--%>
                <tr>
                    <td class="ring-in"><a href="single.html" class="at-in"><img src="<c:url value='/template/images/SanPham/${giohangne.hinhsanpham}'/>" class="img-responsive" alt=""></a>
                        <div class="sed">
                            <h5 class="masanpham" data-cartmasanpham="${giohangne.masanpham}">${giohangne.tensanpham}</h5>
                            <div>
                                <span class="masize" data-cartsize="${giohangne.masize}">${giohangne.size} </span> - <span class="mamau" data-cartmau="${giohangne.mamau}"> ${giohangne.tenmau}</span>
                            </div>
                        </div>
                        <div class="clearfix"> </div>
                    </td>
                    <td class="check">
                        <input aria-label="quantity" class="input-qty cart_soluong" max="${giohangne.soluong}" min="1" name="soluongsanpham" type="number" value="${giohangne.soluongOrder}" >
                        <div class="hidden" name="machitietsanpham">${giohangne.machitietsanpham}</div>
                    </td>
                    <td class="cart_giatienConstant" data-giatienConstant="${giohangne.giatien}">${giohangne.giatien}</td>
                    <td>FREE SHIPPING</td>
                    <td data-value="${giohangne.giatien}" class="cart_giatien" name="tien1SP">${giohangne.giatien}</td>
                    <td >
                       <button class="delete_cartSP btn-danger">Delete</button>
                    </td>
                </tr>
            </c:forEach>
            <tr>
                <td></td>
                <td></td>
                <td></td>
                <td>=> TỔNG TIỀN:</td>
                <td id="total" style="color: red">0</td>
                <td></td>

            </tr>

        </table>

        <hr>

        <div>
            <h1>Information Of Customer </h1>
            <div class="col-md-offset-3 col-md-6  register-top-grid">
                <form action="/cart" method="post">
                        <div class="mation">
                            <span>Tên Người Mua/ Nhận:</span>
                            <input type="text" name="fullname" id="fullname"/>

                            <span>Số Điện Thoại:</span>
                            <input type="text" name="phone" id="phone"/>

                            <span>Địa Chỉ Giao Hàng:</span>
                            <div class="">
                                <label class="">
                                    <input type="radio" checked="checked" name="rd_delivery" value="Giao Hàng Tận Nơi"/>
                                    Giao Hàng Tận Nơi
                                </label></br>
                            </div>
                            <div class="">
                                <label>
                                    <input type="radio" name="rd_delivery" value="Nhận Hàng Tại Cửa Hàng"/>
                                    Nhận Hàng Tại Cửa Hàng
                                </label></br>
                            </div>
                            </div>
                            <input type="text" name="reg_email" id="reg_email"/>

                            <div class="form-group">
                                <span>Ghi Chú:</span>
                                <textarea class="form-control" rows="5" name="note" ></textarea>
                            </div>
                        </div>
                        <div class="clearfix"> </div>

    <%--                <div class="clearfix"> </div>--%>
                    <input type="submit" class="bg-primary" value="PROCEED TO BUY"/>
                </form>
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
