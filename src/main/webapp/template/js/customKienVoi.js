$(document).ready(function () {
    $("#btnDangNhap").click(function () {

        var email = $("#log_email").val();
        var pwd = $("#log_password").val();

        $.ajax({
            url:"/api/KiemTraDangNhap",
            type:'GET',
            // contentType:,
            data:{
                log_email:email,
                log_password:pwd
            },
            // dataType:'json',
            success:function (value) {
                if (value != ""){
                    // $("#btnKetQua").text("oh mai got" + value);

                    // $("#btnKetQua").append(window.location.href);
                    window.location.href = "/";
                    // window.location.href = ""
                }else {
                    $("#btnKetQua").text("Login Fail!" + value);
                }
            }
        })

    });


    $("#btn_themvaogiohang").click(function () {

        var masanpham = $("#masanpham").text();
        var hinhsanpham = $("#hinhsanpham").text();
        var machitietsanpham=$("#machitietsanpham").text();
        var tensanpham = $("#tensanpham").text();
        var giatien = $("#giatien").attr("data-value");
        var size = $("#size").find(":selected").text();
        var tenmau = $("#tenmau").find(":selected").text();
        var masize=$("#size").find(":selected").val();
        var mamau=$("#tenmau").find(":selected").val();

        $.ajax({
            url:"/api/AddToCart",
            type:'GET',
            // contentType:,
            data:{
                masanpham:masanpham,
                hinhsanpham:hinhsanpham,
                tensanpham:tensanpham,
                giatien:giatien,
                masize:masize,
                size:size,
                mamau:mamau,
                tenmau:tenmau,
                machitietsanpham:machitietsanpham
            },
            // dataType:'json',
            success:function (value) {
            }
        })
    });

    GanTongTienGioHang();

    function GanTongTienGioHang(isEventChange){
        var tongtiengiohang = 0;

        $(".cart_giatien").each(function () {
            // var giatien = $(this).text();
            var giatien = $(this).closest("tr").find(".cart_giatienConstant").attr("data-giatienConstant");
            var numberOrder = $(this).closest("tr").find(".cart_soluong").val();

            // alert(giatien+"-----"+numberOrder)
            var tongtien1SP = parseFloat(giatien) * numberOrder;

            // var format = parseFloat(giatien).toFixed(3).replace(/(\d)(?=(\d{3})+\.)/g, "$1.").toString();
            // tongtiengiohang +=  parseFloat(giatien);


            if (!isEventChange){
                $(this).html(tongtien1SP);
            }

            tongtiengiohang = tongtiengiohang + tongtien1SP;
            // var total = parseFloat(tongtiengiohang).toFixed(3).replace(/(\d)(?=(\d{3})+\.)/g, "$1.").toString();

            // tongtiengiohang +=  parseFloat(tongtien1SP);
            var total = parseFloat(tongtiengiohang);
            $("#total").html(total);

        });
    }

    $(".cart_soluong").change(function(){
        var number = $(this).val();
        // var giatien = $(".cart_giatien").attr("data-value");
        var giatien =  $(this).closest("tr").find(".cart_giatienConstant").attr("data-giatienConstant");
        var tongtien = number * giatien;
        // var changeMoney = tongtien.toFixed(3).replace(/(\d)(?=(\d{3})+\.)/g, "$1.").toString();
        // $(this).closest("tr").find(".cart_giatien").html(changeMoney);
        $(this).closest("tr").find(".cart_giatien").html(tongtien);
        // alert(tongtien)
        GanTongTienGioHang(true);
        // GanTongTienGioHang();


        var masanpham = $(this).closest("tr").find(".masanpham").attr("data-cartmasanpham");
        var masize = $(this).closest("tr").find(".masize").attr("data-cartsize");
        var mamau = $(this).closest("tr").find(".mamau").attr("data-cartmau");
        var numberOrder = $(this).val();

        // alert(masanpham + "-"+masize+"-"+mamau+"-"+numberOrder)
        $.ajax({
            url:"/api/UpdateCart",
            type:'GET',
            data:{
                masanpham:masanpham,
                masize:masize,
                mamau:mamau,
                soluongOrder:numberOrder
            },
            success:function (value) {

            }
        })

    });

    $(".delete_cartSP").click(function () {
        var self = $(this);
        var masanpham = $(this).closest("tr").find(".masanpham").attr("data-cartmasanpham");
        var masize = $(this).closest("tr").find(".masize").attr("data-cartsize");
        var mamau = $(this).closest("tr").find(".mamau").attr("data-cartmau");
        // var numberOrder = $(this).val();

        // alert(masanpham + "-"+masize+"-"+mamau)
        $.ajax({
            url:"/api/DeleteCart",
            type:'GET',
            data:{
                masanpham:masanpham,
                masize:masize,
                mamau:mamau,
            },
            success:function (value) {
                self.closest("tr").remove();
                GanTongTienGioHang(true);
            }
        })
    });

})