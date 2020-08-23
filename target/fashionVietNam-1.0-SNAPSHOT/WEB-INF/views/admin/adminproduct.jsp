
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE HTML>
<html>
<head>
    <title>Admin Product</title>
    <jsp:include page="linkadmintemplate.jsp"/>
</head>
<body class="cbp-spmenu-push">
<div class="main-content">

    <jsp:include page="adminslidebarleft.jsp"/>

    <jsp:include page="adminheader.jsp"/>

    <!-- main content start-->
    <div id="page-wrapper">
        <div class="main-page">

<%--            <div class="col-md-6">--%>
<%--               <h1>Add Product</h1>--%>
<%--            </div>--%>


<%--            <div class="col-md-6">--%>
            <h1>List All Product:</h1>
            <div style="float: left"  >
                <button class="btn btn-primary"><a style="color: white" href="/adminthemsanpham">Add Product</a></button>
            </div>
            <div style="float: right" >
                <button id="Del-Product" class="btn btn-danger">Delete</button>
            </div>
            <table style="background-color: white" class="table table-bordered table-hover" id="tblsanphamajax">
                <thead class="">
                <tr>
                    <th scope="col">Tên Sản Phẩm</th>
                    <th scope="col">Hình Sản Phẩm </th>
                    <th scope="col">Giá Tiền</th>
                    <th scope="col">Giành Cho</th>
                    <th scope="col">

                        <div id="allcheckbox">CheckAll
                            <label>
                                <input id="ckallsanpham" type="checkbox" value="">
                            </label>
                        </div>
                    </th>
<%--                    <th scope="col">Ngày Nhập</th>--%>
<%--                    <th scope="col">Người Nhập</th>--%>
                    <th scope="col">Active</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach var="lsAdminProduct" items="${lsAdminProduct}">
                    <tr>
                        <td>${lsAdminProduct.tensanpham}</td>
                        <td>
                            <img src="<c:url value='/template/images/SanPham/${lsAdminProduct.hinhsanpham}'/>" width="90px" height="50px" >
                        </td>
                        <td>${lsAdminProduct.giatien}</td>
<%--                        <td>${lsAdminProduct.chitietsanphams.soluong}</td>--%>
                        <td>${lsAdminProduct.gianhcho}</td>
<%--                        <td>${lsAdminProduct.mota}</td>--%>
                        <td>
                            <div class="checkbox">
                                <label>
                                    <input class="cksanpham" type="checkbox" value="${lsAdminProduct.masanpham}">
                                </label>
                            </div>
                        </td>
<%--                        <td>${lsAdminProduct.chitietsanphams.ngaynhap}</td>--%>
<%--                        <td>ngay nhap </td>--%>
                        <td>
                            <div style="float: left"   class="capnhapsanpham" data-id="${lsAdminProduct.masanpham}">
<%--                            <div style="float: left" >--%>
<%--                                <button class="btn btn-success"><a style="color: white" href="/adminupdatesanpham/${lsAdminProduct.masanpham}">Edit</a></button>--%>
<%--                                <button data-id="${lsAdminProduct.masanpham}" class="btn btn-success capnhapsanpham">Edit</button>--%>
                                <button class="btn btn-success">Edit</button>

                            </div>
                        </td>
                    </tr>

                </c:forEach>
                </tbody>
            </table>

            <div>
                <nav aria-label="...">
                    <ul class="pagination">
                        <li class="page-item disabled">
                            <span class="page-link">Previous</span>
                        </li>

<%--                        <c:forEach var="totalPage" items="">--%>

                            <c:forEach var = "totalPage" begin = "1" end = "${totalPage}">
                            <li class="page-item"><a class="page-link" href="#">${totalPage}</a></li>
<%--                            <li class="page-item"><a class="page-link" href="#">2</a></li>--%>
<%--                            <li class="page-item active">--%>
<%--                                <span class="page-link">3--%>
<%--                                    <span class="sr-only">(current)</span>--%>
<%--                                </span>--%>
<%--                            </li>--%>
<%--                            <li class="page-item"><a class="page-link" href="#">4</a></li>--%>
<%--                            <li class="page-item"><a class="page-link" href="#">5</a></li>--%>
                        </c:forEach>

                        <li class="page-item">
                            <a class="page-link" href="#">Next</a>
                        </li>
                    </ul>
                </nav>
            </div>
<%--            </div>--%>

            <div>
                <div class="row col-md-6" >
                    <h3 class="title1">Detail Product :</h3>
                    <div class="form-three widget-shadow">
                        <form class="form-horizontal form-sanpham">
                            <div class="form-group">
                                <label for="tensanpham" class="col-sm-2 control-label">Tên Sản Phẩm:</label>
                                <div class="col-sm-8">
                                    <input type="text" class="form-control1" id="tensanpham" placeholder="Tên Sản Phẩm" name="tensanpham" value="${detailPro.tensanpham}">
                                </div>
                            </div>

                            <div class="form-group">
                                <label for="giatien" class="col-sm-2 control-label">Giá Tiền:</label>
                                <div class="col-sm-8">
                                    <input type="text" class="form-control1" id="giatien" placeholder="VNĐ" name="giatien" value="${detailPro.giatien}">
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-sm-2 control-label">Giành Cho:</label>
                                <div class="col-sm-8">
                                    <div class="">
                                        <label><input type="radio" id="rd_nam" name="gianhcho" value="nam"> Nam</label></div>
                                    <div class="">
                                        <label><input type="radio" id="rd_nu" name="gianhcho" value="nu"> Nữ</label></div>
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-sm-2 control-label">Danh Mục</label>
                                <div class="col-sm-8">
                                    <select class="form-control1" name="danhmucsanpham" id="danhmucsanpham">
                                        <%--                                    <option value="${detailPro.madanhmuc}">${detailPro.tendanhmuc}</option>--%>
                                        <c:forEach items="${allDanhMuc}" var="allDanhMuc">
                                            <option value="${allDanhMuc.madanhmuc}">${allDanhMuc.tendanhmuc}</option>
                                        </c:forEach>

                                    </select>
                                </div>
                            </div>

                            <div class="form-group">
                                <label for="txtmota" class="col-sm-2 control-label">Mô tả:</label>
                                <div class="col-sm-8"><textarea id="txtmota" cols="5" rows="4" class="form-control1" name="mota" >${detailPro.mota}</textarea></div>
                            </div>

                            <div class="form-group">
                                <label for="imgupload" class="col-sm-2 control-label label-input-sm">Hinh Ảnh</label>
                                <div class="col-sm-8">
                                    <input type="file" class="form-control1 input-sm" id="imgupload" placeholder="Upload Ảnh Sản Phẩm" name="hinhanhsanpham" value="${detailPro.hinhsanpham}">
                                </div>
                            </div>

                            <input id="btn-themsanpham" class="btn btn-primary" type="submit" value="Update Sản Phẩm"/>

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
                                            <select class="form-control1" name="mausanpham">
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

        </div>
    </div>



</div>
<div class="clearfix"></div>
<!--footer-->
<div class="footer">
    <p>&copy; 2020 Glance Design Dashboard. All Rights Reserved | Design by <a href="#" target="_blank">Nguyen Trung Kien</a></p>
</div>
<!--//footer-->
<jsp:include page="linktemplateadminfooter.jsp"/>
</body>
</html>
