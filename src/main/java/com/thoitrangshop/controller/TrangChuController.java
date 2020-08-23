package com.thoitrangshop.controller;

import com.thoitrangshop.entity.DanhMucSanPham;
import com.thoitrangshop.entity.NhanVien;
import com.thoitrangshop.entity.SanPham;
import com.thoitrangshop.service.DanhMucSanPhamService;
import com.thoitrangshop.service.NhanVienService;
import com.thoitrangshop.service.ProductService;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.bind.annotation.SessionAttributes;

import javax.servlet.http.HttpSession;
import javax.transaction.Transactional;
import java.util.List;

@Controller
@RequestMapping("/")
@SessionAttributes({"allDanhMuc"})
public class TrangChuController {

    @Autowired
    DanhMucSanPhamService danhMucSanPhamService;

    @Autowired
    ProductService productService;

//    @GetMapping("ShowDanhMucSp")
//    public String LayDanhMucSP(ModelMap modelMap){
//
//        List<DanhMucSanPham> allDanhMuc = danhMucSanPhamService.LayDanhMucSanPham();
//
//        modelMap.addAttribute("allDanhMuc", allDanhMuc);
//
//        return "header";
//    }

    @GetMapping
    public String ViewTrangChu(HttpSession httpSession, ModelMap modelMap){

        List<DanhMucSanPham> allDanhMuc = danhMucSanPhamService.LayDanhMucSanPham();
        httpSession.setAttribute("allDanhMuc", allDanhMuc);

        List<SanPham> lsPro = productService.lsSanPham(0, 4);
        modelMap.addAttribute("lsPro", lsPro);

        return "trangchu";
    }

}
