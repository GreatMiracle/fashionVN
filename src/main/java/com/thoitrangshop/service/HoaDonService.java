package com.thoitrangshop.service;

import com.thoitrangshop.DAO.ChiTietSanPhamDAO;
import com.thoitrangshop.DAO.HoaDonDAO;
import com.thoitrangshop.DAOImp.HoaDonImp;
import com.thoitrangshop.entity.HoaDon;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class HoaDonService implements HoaDonImp {

    @Autowired
    HoaDonDAO hoaDonDAO;

    @Override
    public int ThemHoaDon(HoaDon hoaDon) {
        return hoaDonDAO.ThemHoaDon(hoaDon);
    }
}
