package com.thoitrangshop.controller.admin;

import com.thoitrangshop.entity.DanhMucSanPham;
import com.thoitrangshop.entity.MauSanPham;
import com.thoitrangshop.entity.SanPham;
import com.thoitrangshop.entity.SizeSanPham;
import com.thoitrangshop.service.ChiTietSanPhamService;
import com.thoitrangshop.service.DanhMucSanPhamService;
import com.thoitrangshop.service.MauSanPhamService;
import com.thoitrangshop.service.SizeSanPhamService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping(path = "/adminupdatesanpham")
public class UpdateProductController {

    @Autowired
    ChiTietSanPhamService chiTietSanPhamService;

    @Autowired
    DanhMucSanPhamService danhMucSanPhamService;

    @Autowired
    MauSanPhamService mauSanPhamService;

    @Autowired
    SizeSanPhamService sizeSanPhamService;

//    @GetMapping("/{masanpham}")
    @GetMapping("/{masanpham}")
    public String UpdateProductController(@PathVariable int masanpham, ModelMap modelMap){

        List<DanhMucSanPham> allDanhMuc = danhMucSanPhamService.LayDanhMucSanPham();
        List<SizeSanPham> allSize = sizeSanPhamService.LaySizeSanPham();
        List<MauSanPham> allMau = mauSanPhamService.LayMauSanPham();

        modelMap.addAttribute("allDanhMuc", allDanhMuc);
        modelMap.addAttribute("allSize", allSize);
        modelMap.addAttribute("allMau", allMau);

        SanPham detailPro = chiTietSanPhamService.chiTietSanPham(masanpham);
        modelMap.addAttribute("detailPro", detailPro);

        return "admin/adminupdatesanpham";
    }
}
