<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add Product</title>
    <jsp:include page="linkadmintemplate.jsp"/>
</head>
<body class="cbp-spmenu-push">
<div class="main-content">

    <jsp:include page="adminslidebarleft.jsp"/>

    <jsp:include page="adminheader.jsp"/>

    <!-- main content start-->
    <div id="page-wrapper">
        <div class="main-page">
            <div class="row col-md-6" >
                    <h3 class="title1">Add Product :</h3>
                    <div class="form-three widget-shadow">
                        <form class="form-horizontal form-sanpham">
                            <div class="form-group">
                                <label for="nameinput" class="col-sm-2 control-label">Tên Sản Phẩm:</label>
                                <div class="col-sm-8">
                                    <input type="text" class="form-control1" id="nameinput" placeholder="Tên Sản Phẩm" name="tensanpham">
                                </div>
                            </div>

                            <div class="form-group">
                                <label for="moneyinput" class="col-sm-2 control-label">Giá Tiền:</label>
                                <div class="col-sm-8">
                                    <input type="text" class="form-control1" id="moneyinput" placeholder="VNĐ" name="giatien">
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-sm-2 control-label">Giành Cho:</label>
                                <div class="col-sm-8">
                                    <div class="">
                                        <label><input type="radio" name="gianhcho" value="nam"> Nam</label></div>
                                    <div class="">
                                        <label><input type="radio" checked="" name="gianhcho" value="nu"> Nữ</label></div>
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-sm-2 control-label">Danh Mục</label>
                                <div class="col-sm-8">
                                    <select class="form-control1" name="danhmucsanpham">
                                        <c:forEach items="${allDanhMuc}" var="allDanhMuc">
                                            <option value="${allDanhMuc.madanhmuc}">${allDanhMuc.tendanhmuc}</option>
                                        </c:forEach>

                                    </select>
                                </div>
                            </div>

                            <div class="form-group">
                                <label for="txtmota" class="col-sm-2 control-label">Mô tả:</label>
                                <div class="col-sm-8"><textarea id="txtmota" cols="5" rows="4" class="form-control1" name="mota"></textarea></div>
                            </div>

                            <div class="form-group">
                                <label for="imgupload" class="col-sm-2 control-label label-input-sm">Hinh Ảnh</label>
                                <div class="col-sm-8">
                                    <input type="file" class="form-control1 input-sm" id="imgupload" placeholder="Upload Ảnh Sản Phẩm" name="hinhanhsanpham">
                                </div>
                            </div>

                            <input id="btn-themsanpham" class="btn btn-primary" type="submit" value="Thêm Sản Phẩm"/>

                        </form>
                    </div>
                </div>

            <style>

                #scrolldetail{
                    background-color: lightblue;
                    width: auto;
                    height: 515px;
                    overflow: auto;
                }
            </style>

            <div class="row col-md-6 kien" >
                <h3 class="title1">Add Detail Product :</h3>
                <div id="scrolldetail" >
                    <div class="form-three widget-shadow "  >
<%--                        <form class="form-horizontal form-sanpham" >--%>
                        <div class="form-horizontal form-sanpham" id="containerthemchitietsanpham">
<%--                            <div >--%>
                            <div id="" class="themchitietsanpham">

                                <div class="form-group">
                                    <label class=" control-label">Màu Sản Phẩm:</label></br></br>
                                    <div class="col-sm-12">
                                        <select class="form-control1" name="mausanpham" >
                                            <c:forEach items="${allMau}" var="allMau">
                                                <option value="${allMau.mamau}">${allMau.tenmau}</option>
                                            </c:forEach>

                                        </select>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="control-label">Size Sản Phẩm:</label>
                                    <div class="col-sm-12">
                                        <select class="form-control1" name="sizesanpham">
                                            <c:forEach items="${allSize}" var="allSize">
                                                <option value="${allSize.masize}">${allSize.size}</option>
                                            </c:forEach>

                                        </select>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="control-label">Số Lượng:</label>
                                    <div class="col-sm-12">
                                        <input type="number" min="1" value="1" class="form-control1" placeholder="Số Lượng " name="soluongsanpham">
                                    </div>
                                </div>
                                <button class="btn btn-primary btn-addchitiet">Thêm chi tiết</button>
                            </div>
<%--                            </div>--%>

                                </br></br></br>
                        </div>
                    </div>
                </div>

                <div class="form-three widget-shadow themchitietsanpham hidden" >
                    <div class="form-horizontal" >
                        <div id="themchitietsanpham" class="themchitietsanpham">
                        <div class="form-group">
                            <label class=" control-label">Màu Sản Phẩm:</label></br></br>
                            <div class="col-sm-12">
                                <select class="form-control1" name="mausanpham" id="mausanpham" >
                                    <c:forEach items="${allMau}" var="allMau">
                                        <option value="${allMau.mamau}">${allMau.tenmau}</option>
                                    </c:forEach>

                                </select>
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="control-label">Size Sản Phẩm:</label>
                            <div class="col-sm-12">
                                <select class="form-control1" name="sizesanpham" id="sizesanpham">
                                    <c:forEach items="${allSize}" var="allSize">
                                        <option value="${allSize.masize}">${allSize.size}</option>
                                    </c:forEach>

                                </select>
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="control-label">Số Lượng:</label>
                            <div class="col-sm-12">
                                <input type="number" min="1" value="1" id="soluong" class="form-control1" placeholder="Số Lượng " name="soluongsanpham">
                            </div>
                        </div>
                        <button class="btn btn-primary btn-addchitiet">Thêm chi tiết</button>
                        </div>
                        </br></br></br>
                    </div>
                </div>

            </div>
        </div>

    </div>

    <div class="clearfix"></div>
    <!--footer-->
<%--    <div class="footer">--%>
<%--        <p>&copy; 2020 Glance Design Dashboard. All Rights Reserved | Design by <a href="#" target="_blank">Nguyen Trung Kien</a></p>--%>
<%--    </div>--%>
    <!--//footer-->
</div>

<jsp:include page="linktemplateadminfooter.jsp"/>

<%-- css clone thêm chi tiết sản phẩm--%>
<style>
#themchitietsanpham{
    display: none;
}
</style>
<%-- css clone thêm chi tiết sản phẩm--%>
</body>
</html>
