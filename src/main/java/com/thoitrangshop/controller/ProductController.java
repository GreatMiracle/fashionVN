package com.thoitrangshop.controller;

import com.thoitrangshop.entity.SanPham;
import com.thoitrangshop.service.ProductService;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import javax.transaction.Transactional;
import java.util.List;

@Controller
@RequestMapping("/product")
public class ProductController {

    @Autowired
    ProductService productService;

//    @GetMapping
    @GetMapping("/{madanhmuc}")
    public String Product(@PathVariable int madanhmuc, ModelMap modelMap){

//        List<SanPham> lsPro = productService.lsSanPham(0);
        List<SanPham> lsProforDanhMuc = productService.lsSanPhamforDanhMuc(madanhmuc);

//        modelMap.addAttribute("lsPro", lsPro);
        modelMap.addAttribute("lsPro", lsProforDanhMuc);

        return "product";
    }

}
