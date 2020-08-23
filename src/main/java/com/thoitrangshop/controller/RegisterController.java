package com.thoitrangshop.controller;

import com.thoitrangshop.entity.Customer;
import com.thoitrangshop.entity.NhanVien;
import com.thoitrangshop.service.NhanVienService;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.transaction.Transactional;
import java.io.Serializable;

@Controller
@RequestMapping("/register")
public class RegisterController {

    @Autowired
    SessionFactory sessionFactory;

    @Autowired
    NhanVienService nhanVienService;

    @GetMapping
//    @Transactional
    public String Register(){
//        Session session = sessionFactory.getCurrentSession();
//        Customer customer = (Customer) session.createQuery("from customer where idcustomer = 4").uniqueResult();
//        Customer customer = session.get(Customer.class , 3);
//
//        customer.setEmail("yeuanh@gmail.com");
//
//        session.update(customer);

        return "register";
    }

    @PostMapping()
//    @Transactional
    public String RegisterPost(
            @RequestParam String firstname
            ,@RequestParam String lastname
            ,@RequestParam String reg_email
            ,@RequestParam String reg_password
            , ModelMap modelMap){

        if(firstname != null && lastname != null && reg_email != null && reg_password != null){
            boolean msg = nhanVienService.DangKy(firstname, lastname, reg_email, reg_password);

            if (msg){
                modelMap.addAttribute("msg_Register", "Đăng kí thành công");
            }else {
                modelMap.addAttribute("msg_Register", "Email đã tồn tại");
            }

        }else {
            modelMap.addAttribute("msg_Register", "Please fill blank");
        }

        return "register";
    }

}
