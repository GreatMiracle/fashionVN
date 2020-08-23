package com.thoitrangshop.controller;

import com.thoitrangshop.entity.ChiTietHoaDon;
import com.thoitrangshop.entity.ChiTietHoaDonID;
import com.thoitrangshop.entity.GioHang;
import com.thoitrangshop.entity.HoaDon;
import com.thoitrangshop.service.ChiTietHoaDonService;
import com.thoitrangshop.service.ChiTietSanPhamService;
import com.thoitrangshop.service.HoaDonService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;
import java.text.SimpleDateFormat;
import java.util.*;

@Controller
@RequestMapping(path = "/cart")
@SessionAttributes({"name_Session","giohang"})
public class CartController {

    @Autowired
    ChiTietSanPhamService chiTietSanPhamService;

    @Autowired
    HoaDonService hoaDonService;

    @Autowired
    ChiTietHoaDonService chiTietHoaDonService;

    @GetMapping
    public String CartGetMapping(HttpSession httpSession
            , ModelMap modelMap){

        List<GioHang> lstest = (List<GioHang>) httpSession.getAttribute("giohang");
        modelMap.addAttribute("giohangne",lstest);
//        modelMap.addAttribute("name_Session",httpSession.getAttribute("name_Session"));

//        System.out.println(httpSession.getAttribute("name_Session"));
//        modelMap.addAttribute("demsoluongsptronggiohang",lstest.size());

//        chiTietSanPhamService.laysoluongSP();
        return "cart";
    }

    @PostMapping()
    public String PostHoaDon(HttpSession httpSession
            ,@RequestParam String fullname
            ,@RequestParam String phone
            ,@RequestParam String rd_delivery
            ,@RequestParam String note
//            ,@RequestParam int tien1SP

            , ModelMap modelMap){

//        System.out.println("1:"+fullname +"-2:"+ phone +"-3:"+ rd_delivery +"-4:"+note);

        Calendar calendar = Calendar.getInstance();
        SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

        if (httpSession.getAttribute("giohang") != null){
            List<GioHang> lsGioHang = (List<GioHang>) httpSession.getAttribute("giohang");

            HoaDon bill = new HoaDon();
            bill.setTenkhachhang(fullname);
            bill.setSodt(phone);
            bill.setDiachigiaohang(rd_delivery);
//            bill.setTinhtrang();
            bill.setNgaylap(formatter.format(calendar.getTime()));
            bill.setHinhthucgiaohang(rd_delivery);
            bill.setGhichu(note);

            int ck = hoaDonService.ThemHoaDon(bill);
            if (ck > 0 ){
//                System.out.println("theem bill thanh cong");
                Set<ChiTietHoaDon> lsCiTietHoaDons = new HashSet<>();

                for (GioHang list:lsGioHang ) {
                    ChiTietHoaDonID chiTietHoaDonID = new ChiTietHoaDonID();
                    chiTietHoaDonID.setMachitietsanpham(list.getMachitietsanpham());
                    chiTietHoaDonID.setMahoadon(bill.getMahoadon());

                    ChiTietHoaDon detailBill = new ChiTietHoaDon();
                    detailBill.setChiTietHoaDonID(chiTietHoaDonID);
                    detailBill.setSoluong(list.getSoluongOrder());
                    detailBill.setGiatien(list.getGiatien());//đây là giá sau khi nhân với số lượng

//                    lsCiTietHoaDons.add(detailBill);
                    chiTietHoaDonService.ThemChiTietHoaDon(detailBill);

                }
            }else {
                System.out.println("theem bill that bai");
            }
        }
        return "cart";
    }

}
