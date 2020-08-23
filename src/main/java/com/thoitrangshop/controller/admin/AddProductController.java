package com.thoitrangshop.controller.admin;

import com.thoitrangshop.entity.DanhMucSanPham;
import com.thoitrangshop.entity.MauSanPham;
import com.thoitrangshop.entity.SizeSanPham;
import com.thoitrangshop.service.DanhMucSanPhamService;
import com.thoitrangshop.service.MauSanPhamService;
import com.thoitrangshop.service.SizeSanPhamService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping(path = "/adminthemsanpham")
public class AddProductController {

    @Autowired
    DanhMucSanPhamService danhMucSanPhamService;

    @Autowired
    SizeSanPhamService sizeSanPhamService;

    @Autowired
    MauSanPhamService mauSanPhamService;

    @GetMapping()
    public String AddProductGet(ModelMap modelMap){


        List<DanhMucSanPham> allDanhMuc = danhMucSanPhamService.LayDanhMucSanPham();
        List<SizeSanPham> allSize = sizeSanPhamService.LaySizeSanPham();
        List<MauSanPham> allMau = mauSanPhamService.LayMauSanPham();

        modelMap.addAttribute("allDanhMuc", allDanhMuc);
        modelMap.addAttribute("allSize", allSize);
        modelMap.addAttribute("allMau", allMau);

        return "admin/adminthemsanpham";
    }
}
