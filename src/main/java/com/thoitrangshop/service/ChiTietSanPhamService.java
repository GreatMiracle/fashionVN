package com.thoitrangshop.service;

import com.thoitrangshop.DAO.ChiTietSanPhamDAO;
import com.thoitrangshop.DAOImp.ChiTietSanPhamImp;
import com.thoitrangshop.entity.ChiTietSanPham;
import com.thoitrangshop.entity.SanPham;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ChiTietSanPhamService implements ChiTietSanPhamImp {
    @Autowired
    ChiTietSanPhamDAO chiTietSanPhamDAO;

    @Override
    public SanPham chiTietSanPham(int masanpham) {
        return chiTietSanPhamDAO.chiTietSanPham(masanpham);
    }

    @Override
    public ChiTietSanPham laysoluongSP(int masanpham, int masize, int mamau) {
        return chiTietSanPhamDAO.laysoluongSP(masanpham, masize, mamau);
    }


}
