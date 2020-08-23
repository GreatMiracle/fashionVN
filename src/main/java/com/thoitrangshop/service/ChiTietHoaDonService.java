package com.thoitrangshop.service;

import com.thoitrangshop.DAO.ChiTietHoaDonDAO;
import com.thoitrangshop.DAOImp.ChiTietHoaDonImp;
import com.thoitrangshop.entity.ChiTietHoaDon;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ChiTietHoaDonService implements ChiTietHoaDonImp {

    @Autowired
    ChiTietHoaDonDAO chiTietHoaDonDAO;

    @Override
    public boolean ThemChiTietHoaDon(ChiTietHoaDon chiTietHoaDon) {
        return chiTietHoaDonDAO.ThemChiTietHoaDon(chiTietHoaDon);
    }
}
