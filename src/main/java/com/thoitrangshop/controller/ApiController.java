package com.thoitrangshop.controller;

import com.thoitrangshop.entity.ChiTietSanPham;
import com.thoitrangshop.entity.GioHang;
import com.thoitrangshop.service.ChiTietSanPhamService;
import com.thoitrangshop.service.NhanVienService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("api/")
@SessionAttributes({"name_Session","giohang"})

public class ApiController {

    @Autowired
    NhanVienService nhanVienService;

    @Autowired
    ChiTietSanPhamService chiTietSanPhamService;        
    
    List<GioHang> gioHangs = new ArrayList<>();

    @GetMapping("KiemTraDangNhap")
    @ResponseBody
    public String KiemTraDangNhap(  @RequestParam String log_email
            ,@RequestParam String log_password
            ,ModelMap modelMap){

        String check= nhanVienService.KiemTraDangNhap(log_email, log_password);
        modelMap.addAttribute("name_Session",check);

        return check;
    }

    @GetMapping("AddToCart")
    @ResponseBody
    public void AddToCart(
            @ModelAttribute GioHang cart
            , HttpSession httpSession
            , ModelMap modelMap){

        if (httpSession.getAttribute("giohang") == null ){
            //tạo mới session
            ChiTietSanPham numberSP = chiTietSanPhamService.laysoluongSP(cart.getMasanpham(), cart.getMasize(), cart.getMamau());
            cart.setSoluong(numberSP.getSoluong());
            cart.setMachitietsanpham(numberSP.getMachitietsanpham());
            cart.setSoluongOrder(1);
            gioHangs.add(cart);
            httpSession.setAttribute("giohang", gioHangs);

        }else {
            int vitri = KiemTraSanPhamDaTonTaiTrongGioHang(httpSession
                                                        ,cart.getMasanpham()
                                                        ,cart.getMasize()
                                                        ,cart.getMamau()
                                                        );
            List<GioHang> listCart = (List<GioHang>) httpSession.getAttribute("giohang");

            if (vitri == -1){
                //thêm mới sp vào giỏ
                //khi có session mà chưa có sản phẩm trong giỏ hàng


                ChiTietSanPham numberSP = chiTietSanPhamService.laysoluongSP(cart.getMasanpham(), cart.getMasize(), cart.getMamau());
                cart.setSoluong(numberSP.getSoluong());
                cart.setMachitietsanpham(numberSP.getMachitietsanpham());
                cart.setSoluongOrder(1);

//                GioHang gh = new GioHang();
//                gh.setSoluongOrder(1);

                listCart.add(cart);
//                System.out.println("theem thanh cong");

            }else {
                //có sơ trong giở rồi thì thông báo

                //code update thêm số lượng nếu làm.
//                List<GioHang> listCart = (List<GioHang>) httpSession.getAttribute("giohang");
                int soluongmoi = listCart.get(vitri).getSoluongOrder()+1;
                listCart.get(vitri).setSoluongOrder(soluongmoi);

                //cái này chưa trả ra giá trị cho view đc
//                modelMap.addAttribute("msgAddProductToCart","Sản Phẩm Đã Tồn Tại Trong Giỏ Hàng");
//                System.out.println("Sản Phẩm Đã Tồn Tại Trong Giỏ Hàng");
            }
        }

    }

    @GetMapping("UpdateCart")
    @ResponseBody
    public void UpdateCart(HttpSession httpSession
            ,@RequestParam int masanpham
            , @RequestParam int masize
            , @RequestParam int mamau
            , @RequestParam int soluongOrder
            ){

        if (httpSession.getAttribute("giohang") != null){
            List<GioHang> allList = (List<GioHang>) httpSession.getAttribute("giohang");
            int vitri = KiemTraSanPhamDaTonTaiTrongGioHang(httpSession
                    ,masanpham
                    ,masize
                    ,mamau);

            allList.get(vitri).setSoluongOrder(soluongOrder);

            if (vitri != -1){
                allList.get(vitri).setSoluongOrder(soluongOrder);
            }
        }
    }

    @GetMapping("DeleteCart")
    @ResponseBody
    public void DeleteCart(HttpSession httpSession
            ,@RequestParam int masanpham
            , @RequestParam int masize
            , @RequestParam int mamau
//            , @RequestParam int soluongOrder
    ){

        if (httpSession.getAttribute("giohang") != null){
            List<GioHang> lsGioHangs = (List<GioHang>) httpSession.getAttribute("giohang");
            int vitri = KiemTraSanPhamDaTonTaiTrongGioHang(httpSession
                    ,masanpham
                    ,masize
                    ,mamau);

            lsGioHangs.remove(vitri);
        }
    }

    private int KiemTraSanPhamDaTonTaiTrongGioHang
            (HttpSession httpSession
                    ,int masanpham
                    ,int masize
                    ,int mamau){
        List<GioHang> listCart = (List<GioHang>) httpSession.getAttribute("giohang");
        for (int i = 0; i < listCart.size(); i++) {
            if (listCart.get(i).getMasize() == masize & listCart.get(i).getMamau() == mamau & listCart.get(i).getMasanpham() == masanpham
            ){
//                System.out.println("vi tri thu i:::::" +i);
                return i;

            }
        }
        return -1;
    }

}
