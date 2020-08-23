package com.thoitrangshop.controller;

import com.thoitrangshop.entity.DanhMucSanPham;
import com.thoitrangshop.service.DanhMucSanPhamService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping(path = "/header")
public class DanhMucSanPhamController {

    @Autowired
    DanhMucSanPhamService danhMucSanPhamService;

    @GetMapping
    public String ViewTrangChu(ModelMap modelMap){

        List<DanhMucSanPham> allDanhMuc = danhMucSanPhamService.LayDanhMucSanPham();
        modelMap.addAttribute("allDanhMuc", allDanhMuc);

        return "header";
    }

}
