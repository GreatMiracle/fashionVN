package com.thoitrangshop.service;

import com.thoitrangshop.DAO.NhanVienDAO;
import com.thoitrangshop.DAOImp.NhanVienImp;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class NhanVienService implements NhanVienImp {

    @Autowired
    NhanVienDAO nhanVienDAO;


    @Override
//    public boolean KiemTraDangNhap(String email, String password) {
    public String KiemTraDangNhap(String email, String password) {
        String ck = nhanVienDAO.KiemTraDangNhap(email, password);
        return ck;
    }

    @Override
    public boolean DangKy(String firstname, String lastname, String email, String password) {
        boolean ck = nhanVienDAO.DangKy(firstname, lastname, email, password);
        return ck;
    }
}
