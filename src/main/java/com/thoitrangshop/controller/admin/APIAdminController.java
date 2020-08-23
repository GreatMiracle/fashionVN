package com.thoitrangshop.controller.admin;

import com.thoitrangshop.entity.*;
import com.thoitrangshop.service.ChiTietSanPhamService;
import com.thoitrangshop.service.ProductService;
import org.codehaus.jackson.JsonNode;
import org.codehaus.jackson.map.ObjectMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import javax.servlet.ServletContext;
import java.io.File;
import java.io.IOException;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

@Controller
@RequestMapping("apiadmin/")
public class APIAdminController {

    @Autowired
    ProductService productService;

    @GetMapping(path="ProductInPaging", produces="text/plain; charset=utf-8")
    @ResponseBody
    public String ProductInPaging(@RequestParam int productstarting, ModelMap modelMap){

        String html = "";
        List<SanPham> ProPaging = productService.lsSanPham(productstarting, 6);
        for (SanPham sp: ProPaging) {
            html += "<tr>";
            html += "<td>" +sp.getTensanpham() +"</td>";
            html += "<td>\n" +
                    "       <img src=\"/template/images/SanPham/"+sp.getHinhsanpham()+"\" width=\"90px\" height=\"50px\" >\n" +
                    "</td>";
            html += "<td>"+sp.getGiatien()+"</td>";
            html += " <td>"+sp.getGianhcho()+"</td>";
            html += "<td>\n" +
                    "                            <div class=\"checkbox\">\n" +
                    "                                <label>\n" +
                    "                                    <input class=\"cksanpham\" type=\"checkbox\" value=\""+sp.getMasanpham()+"\">\n" +
                    "                                </label>\n" +
                    "                            </div>\n" +
                    "                        </td>";
            html += " <td>\n" +
                    "                            <div style=\"float: left\"   class=\"capnhapsanpham\" data-id=\""+sp.getMasanpham()+"\">\n" +
                    "                                <button class=\"btn btn-success\"><a style=\"color: white\" href=\"/adminupdatesanpham/"+sp.getMasanpham()+"\">Edit</a></button>\n" +
                    "                            </div>\n" +
                    "                        </td>";
        }

        return html ;
    }

    @GetMapping("DeleteProduct")
    @ResponseBody
    public String DeleteProduct(@RequestParam int masanpham, ModelMap modelMap){
        productService.DelProduct(masanpham);
        return "admin/adminproduct";
    }

    @Autowired
    ServletContext servletContext;

    @PostMapping("UploadFile")
    @ResponseBody
    public String UploadFile(MultipartHttpServletRequest request){

        //lây đường dẫn để phục vụ cho việc chứa file sau khi upload
        String path_save_file = servletContext.getRealPath("/template/images/SanPham/");

        Iterator<String> listNames = request.getFileNames();
//        for(String value : listNames) nếu có nhiều file muốn lấy
        MultipartFile mpf = request.getFile(listNames.next());

        //đường dân fle + tên file
        File file_save = new File(path_save_file + mpf.getOriginalFilename());

        try {
            mpf.transferTo(file_save); //chép file vào đường dẫn
        } catch (IOException e) {
            e.printStackTrace();
        }

//        System.out.println(path_save_file);
        return "admin/adminthemsanpham";
    }

    @PostMapping("AddDetailProduct")
    @ResponseBody
    public void AddProduct(@RequestParam String datajson, ModelMap modelMap) throws IOException {

        ObjectMapper objectMapper = new ObjectMapper();

        System.out.println("ngố  nè ngốc nè ::::::::");

//        JsonNode jsonNode = objectMapper.readTree(datajson);
//
//            System.out.println(jsonNode.get("tensanpham").asText());
//            System.out.println(jsonNode.get("chitietsanphams"));
//            System.out.println(jsonNode.get("giatien").asInt());
//            System.out.println(jsonNode.get("sizesanpham"));
//            System.out.println(jsonNode.get("soluong"));
//            System.out.println("yêu thương");
//
//        JsonNode jsonchitiet= jsonNode.get("chitietsanphams");
//        Set<ChiTietSanPham> ctsp = new HashSet<>();
//        for (JsonNode objchitiet: jsonchitiet ) {
//            System.out.println(objchitiet.get("mausanpham").asInt());
//            System.out.println(objchitiet.get("sizesanpham").asInt());
//            System.out.println(objchitiet.get("soluong").asInt());
//        }
//


//cách duyệt bằng tay::::
            JsonNode jsonNode = objectMapper.readTree(datajson);

//            System.out.println("mã danh mục này anh ơi::::::"+jsonNode.get("madanhmucsanpham").asInt());

            JsonNode jsonchitiet= jsonNode.get("chitietsanphams");
            Set<ChiTietSanPham> ctsp = new HashSet<>();
//            System.out.println("em chào anh kiên voi  ạ ::::::::");
            for (JsonNode objchitiet: jsonchitiet ) {

                ChiTietSanPham chiTietSP = new ChiTietSanPham();

                MauSanPham mauSP = new MauSanPham();
                mauSP.setMamau(objchitiet.get("mausanpham").asInt());

                SizeSanPham sizeSP = new SizeSanPham();
                sizeSP.setMasize(objchitiet.get("sizesanpham").asInt());

                chiTietSP.setMausanpham(mauSP);
                chiTietSP.setSizesanpham(sizeSP);
                chiTietSP.setSoluong(objchitiet.get("soluong").asInt());

                ctsp.add(chiTietSP);

            }

            DanhMucSanPham danhmuc = new DanhMucSanPham();
            danhmuc.setMadanhmuc(jsonNode.get("danhmucsanpham").asInt());

            SanPham sanPham = new SanPham();

            sanPham.setTensanpham(jsonNode.get("tensanpham").asText());
            sanPham.setGiatien(jsonNode.get("giatien").asInt());
            sanPham.setDanhmucsanpham(danhmuc);
            sanPham.setMota(jsonNode.get("mota").asText());
            sanPham.setHinhsanpham(jsonNode.get("hinhsanpham").asText());
            sanPham.setChitietsanphams(ctsp);
            sanPham.setGianhcho(jsonNode.get("gianhcho").asText());

            productService.AddDetailProduct(sanPham);




        //duyệt động:::::
//        try {
//            SanPham sp = objectMapper.readValue(datajson, SanPham.class);
//
//            System.out.println(sp.getTensanpham() +"----"+sp.getChitietsanphams().size());
//        } catch (IOException e) {
//            e.printStackTrace();
//        }

    }


    @Autowired
    ChiTietSanPhamService chiTietSanPhamService;
    @PostMapping(path="UpdateProduct", produces="application/json; charset=utf-8")
    @ResponseBody
    public JSON_SanPham UpdateProduct(@RequestParam int masanpham, ModelMap modelMap){
        JSON_SanPham json_sanPham = new JSON_SanPham();

        SanPham sp = chiTietSanPhamService.chiTietSanPham(masanpham);

        DanhMucSanPham danhmuc = new DanhMucSanPham();
        danhmuc.setMadanhmuc(sp.getDanhmucsanpham().getMadanhmuc());

        json_sanPham.setMasanpham(sp.getMasanpham());
        json_sanPham.setTensanpham(sp.getTensanpham());
        json_sanPham.setDanhmucsanpham(danhmuc);
        json_sanPham.setGiatien(sp.getGiatien());
        json_sanPham.setHinhsanpham(sp.getHinhsanpham());
        json_sanPham.setGianhcho(sp.getGianhcho());
        json_sanPham.setMota(sp.getMota());

        Set<ChiTietSanPham> ctsp = new HashSet<>();
        for (ChiTietSanPham value: sp.getChitietsanphams()) {

            ChiTietSanPham chiTietSanPham = new ChiTietSanPham();
            chiTietSanPham.setMachitietsanpham(value.getMachitietsanpham());

            MauSanPham mauSanPham = new MauSanPham();
            mauSanPham.setMamau(value.getMausanpham().getMamau());

            SizeSanPham sizeSanPham = new SizeSanPham();
            sizeSanPham.setMasize(value.getSizesanpham().getMasize());

            chiTietSanPham.setMausanpham(mauSanPham);
            chiTietSanPham.setSizesanpham(sizeSanPham);
            chiTietSanPham.setSoluong(value.getSoluong());

            ctsp.add(chiTietSanPham);

        }

        json_sanPham.setChitietsanphams(ctsp);

        return json_sanPham;
    }


}
