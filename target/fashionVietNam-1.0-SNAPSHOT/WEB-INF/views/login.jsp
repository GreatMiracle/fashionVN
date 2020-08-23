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
<div class="account">
    <div class="container">
        <h1>Account</h1>
        <div class="account_grid">
            <div class="col-md-6 login-right">
                <form action="/login" method="post">

                    <span>Email Address</span>
                    <input id="log_email" type="text" name="log_email">

                    <span>Password</span>
                    <input id="log_password" type="text" name="log_password">
                    <div class="word-in">
                        <a class="forgot" href="#">Forgot Your Password?</a>
                        <input type="submit" value="Login">
                    </div>

<%--                    <span id="btnDangNhap">Đăng Nhập</span>--%>
                    <span id="btnKetQua"></span>
                </form>
            </div>
            <div class="col-md-6 login-left">
                <h4>NEW CUSTOMERS</h4>
                <p>By creating an account with our store, you will be able to move through the checkout process faster, store multiple shipping addresses, view and track your orders in your account and more.</p>
                <a class="acount-btn" href="/register">Create an Account</a>
            </div>
            <div class="clearfix"> </div>
        </div>
    </div>
</div>
<!--content-->

<!--footer-->
<jsp:include page="footer.jsp"/>
<!--//footer-->
</body>
</html>
