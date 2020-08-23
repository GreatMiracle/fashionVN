package com.thoitrangshop.controller;

import com.thoitrangshop.entity.GioHang;
import com.thoitrangshop.entity.HoaDon;
import com.thoitrangshop.service.ChiTietSanPhamService;
import com.thoitrangshop.service.HoaDonService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping(path = "/hoadon")
@SessionAttributes({"name_Session","giohang"})
public class HoaDonController {



    @GetMapping
    public String CartGetMapping(HoaDon hoaDon
            , ModelMap modelMap){



        return "cart";
    }
}
