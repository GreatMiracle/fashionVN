package com.thoitrangshop.controller;

import com.thoitrangshop.entity.SanPham;
import com.thoitrangshop.service.ChiTietSanPhamService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping(path = "/chitiet")
public class ChiTietController {

    @Autowired
    ChiTietSanPhamService chiTietSanPhamService;

    @GetMapping("/{masanpham}")
    public String ChiTiet(@PathVariable int masanpham, ModelMap modelMap){

        SanPham detailProduct = chiTietSanPhamService.chiTietSanPham(masanpham);
        modelMap.addAttribute("detailProduct",detailProduct);

        return "chitiet";
    }

    @PostMapping()
    public String ChiTietPost(
            @RequestParam String ten
            , ModelMap modelMap){

//        modelMap.addAttribute("name", ten);

        return "chitiet";
    }

}
