package com.thoitrangshop.controller.admin;

import com.thoitrangshop.entity.SanPham;
import com.thoitrangshop.service.ChiTietSanPhamService;
import com.thoitrangshop.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping(path = "/adminproduct")
public class ProductAdminController {

    @Autowired
    ProductService productService;

    @Autowired
    ChiTietSanPhamService chiTietSanPhamService;

//    @GetMapping("/{pageid}")
    @GetMapping()
    public String ListProductGet(ModelMap modelMap){
        List<SanPham> lsAdminProduct = productService.lsAdminProduct();
        List<SanPham> lsAdminProductStart = productService.lsSanPham(0, 6);

        int totalPage = (int) Math.ceil((double) lsAdminProduct.size() / 5);

        modelMap.addAttribute("lsAdminProduct", lsAdminProductStart);
        modelMap.addAttribute("totalPage", totalPage);

//        System.out.println(totalPage);
        return "admin/adminproduct";
    }



}


