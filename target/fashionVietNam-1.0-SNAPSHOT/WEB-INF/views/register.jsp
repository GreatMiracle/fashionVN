
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
    <div class="register">
        <h1>Register</h1>

        <span id="MsgRegister">${msg_Register}</span>

        <form action="/register" method="post">
            <div class="col-md-6  register-top-grid">

                <div class="mation">
                    <span>First Name</span>
                    <input type="text" name="firstname" id="firstname"/>

                    <span>Last Name</span>
                    <input type="text" name="lastname" id="lastname"/>

                    <span>Email Address</span>
                    <input type="text" name="reg_email" id="reg_email"/>
                </div>
                <div class="clearfix"> </div>
                <a class="news-letter" href="#">
                    <label class="checkbox" >
                        <input type="checkbox" name="checkbox" checked="">
                        <i> </i>Sign Up
                    </label>
                </a>
            </div>
            <div class=" col-md-6 register-bottom-grid">

                <div class="mation">
                    <span>Password</span>
                    <input type="text" name="reg_password" id="reg_password"/>
                    <span>Confirm Password</span>
                    <input type="text" name="reg_confirm" id="reg_confirm"/>
                </div>
            </div>

            <div class="clearfix"> </div>

            <div class="register-but">
                <input id="btnRegister" type="submit" value="submit">
<%--                <span id="btnRegister">Dang Ky</span>--%>
                <div class="clearfix"> </div>
            </div>

        </form>
        <script type="text/javascript">
            $(function () {
                $("#btnRegister").click(function () {
                    var password = $("#reg_password").val();
                    var confirmPassword = $("#reg_confirm").val();
                    if (password != confirmPassword) {
                        alert("Passwords do not match.");
                        return false;
                    }
                    return true;
                });
            });
        </script>

    </div>
</div>

<!--content-->

<!--footer-->
<jsp:include page="footer.jsp"/>
<!--//footer-->
</body>
</html>
