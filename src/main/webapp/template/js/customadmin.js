//ADMIN:::::::::::
$(document).ready(function () {
    $("body").on("click", ".page-item", function () {
        $(".page-item").removeClass("active");
        $(this).addClass("active");
        var currentpage = ($(this).text());
        var productstarting = (currentpage - 1) * 5;
        // alert(productstarting)

        $.ajax({
            url:"/apiadmin/ProductInPaging",
            type:'GET',
            // contentType:,
            data:{
                productstarting:productstarting,
            },
            // dataType:'json',
            success:function (value) {
                var tbodysanpham = $("#tblsanphamajax").find("tbody");
                tbodysanpham.empty();
                tbodysanpham.append(value);

            }
        })
    })

    $("#ckallsanpham").change(function () {
        if(this.checked){
            $("#tblsanphamajax > tbody input").each(function () {
                $(this).attr("checked", true);
            });
        }else {
            $("#tblsanphamajax > tbody input").each(function () {
                $(this).attr("checked", false);
            })
        }
    })

    $("#Del-Product").click(function () {
        $("tbody input:checked").each(function () {
            var masanpham = $(this).val();
            var This = $(this);
            This.closest("tr").remove();
            $.ajax({
                url:"/apiadmin/DeleteProduct",
                type:'GET',
                // contentType:,
                data:{
                    masanpham:masanpham,
                },
                // dataType:'json',
                success:function (value) {
                    This.closest("tr").remove();

                }
            })

        })
    });

    var files = [];
    var tenhinh = "";
    $("#imgupload").change(function (event){
        files = event.target.files;
        tenhinh = files[0].name;
        forms = new FormData();
        //nếu upload multifile thì ở đây sẽ duyệt each lấy ra phần tử i
        forms.append("file", files[0]);

        $.ajax({
            url:"/apiadmin/UploadFile",
            type:"POST",
            data:forms,
            contentType:false,
            processData:false,
            enctype:"multipart/form-data",
            success:function (value) {

            }
        })
    });

    $("body").on("click", ".btn-addchitiet", function (){
        // alert("hê lô anh kien")
        $(this).remove();
        var chitietclone = $("#themchitietsanpham").clone().removeAttr("id");
        // alert(chitietclone);
        // $("#containerthemchitietsanpham").prepend(chitietclone);
        $("#containerthemchitietsanpham").prepend(chitietclone);
        // $("#containerthemchitietsanpham").append(chitietclone);
    });

    $('#btn-themsanpham').click(function (e) {
        e.preventDefault();// ngăn chặn reload lại thẻ form
        var formData = $('.form-sanpham').serializeArray();
        json = {};
        arrchitiet = [];
        objchitiet = {};
        // console.log(formData);

        $.each(formData, function(i, field){
            json[field.name] = field.value;


            // if (json[field.name] === "danhmucsanpham" ){
            //     objdanhmuc = {};
            //     objdanhmuc["madanhmuc"] = field.value;
            //     json[field.name] = objdanhmuc;
            //
            // }
        });
        // console.log(json);


        $("#containerthemchitietsanpham > .themchitietsanpham").each(function (){
            objchitiet = {};

            mausanpham = $(this).find('select[name="mausanpham"]').val();
            sizesanpham = $(this).find('select[name="sizesanpham"]').val();
            soluong = $(this).find('input[type=number][name="soluongsanpham"]').val();

            // console.log(mausanpham +"--"+sizesanpham +"--"+soluong);

            objchitiet["mausanpham"] = mausanpham;
            objchitiet["sizesanpham"] = sizesanpham;
            objchitiet["soluong"] = soluong;

            arrchitiet.push(objchitiet);
        })
        // console.log(arrchitiet);

        json["chitietsanphams"] = arrchitiet;
        json["hinhsanpham"] = tenhinh;

        console.log(json);

        // console.log(data);
        // {
        //    tensanpham: abcxyz,
        //             .....
        //             chitietsanpham:[
        //                 {
        //                     mamau:abc,
        //                     masize:...,
        //             soluong:..,
        //         }
        //         {
        //             mamau:abc,
        //             masize:...,
        //             soluong:..,
        //         }
        //     ]
        // }

        $.ajax({
            url: "/apiadmin/AddDetailProduct",
            type: "POST",
            // contentType: 'application/json',
            data: {
                datajson: JSON.stringify(json)
            },
            // dataType: 'json',
            success: function (value) {

            },
        });
    });


    $("body").on("click", ".capnhapsanpham", function (){
        // alert("Em chào anh tỉ phú ")
        masanpham = $(this).attr("data-id");

        $.ajax({
            // url: "/adminupdatesanpham",
            url: "/apiadmin/UpdateProduct",
            type: "POST",
            // contentType: 'application/json',
            data: {
                masanpham: masanpham
            },
            // dataType: 'json',
            success: function (value) {
                console.log(value);

                $("#tensanpham").val(value.tensanpham);
                $("#giatien").val(value.giatien);
                $("#txtmota").val(value.mota);
                if (value.gianhcho.toLowerCase() === "nam"){
                    $("#rd_nam").prop("checked", true);
                }else {
                    $("#rd_nu").prop("checked", true);
                };

                $("#danhmucsanpham").val(value.danhmucsanpham.madanhmuc)


                $("#containerthemchitietsanpham").empty();
                var chitietclone = $("#themchitietsanpham").clone().removeAttr("id");

                for(i=0; i< value.chitietsanphams.length; i++){
                    chitietclone.find("#mausanpham").val(value.chitietsanphams[i].mausanpham.mamau);
                    $("#containerthemchitietsanpham").append(chitietclone);

                }

            },
        });
    });




})