package com.thoitrangshop.controller;

import com.thoitrangshop.entity.Customer;
import com.thoitrangshop.entity.NhanVien;
import com.thoitrangshop.service.NhanVienService;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import javax.transaction.Transactional;
import java.util.List;

@Controller
@RequestMapping("/login")
@SessionAttributes("name_Session")

public class LoginController {

    @Autowired
    SessionFactory sessionFactory;

    @Autowired
    NhanVienService nhanVienService;

    @GetMapping
    public String Login(){

        return "login";
    }

    @PostMapping()
    @Transactional
    public String LoginPost(
            @RequestParam String log_email
            ,@RequestParam String log_password
            , ModelMap modelMap){

//        Session session = sessionFactory.getCurrentSession();

        String ck= nhanVienService.KiemTraDangNhap(log_email, log_password);

        if(ck != ""){
            modelMap.addAttribute("name_Session",ck);

            return "trangchu";
        }else {
            return "login";
        }
    }
}
