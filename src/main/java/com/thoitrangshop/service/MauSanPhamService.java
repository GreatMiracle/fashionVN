package com.thoitrangshop.service;

import com.thoitrangshop.DAO.MauSanPhamDAO;
import com.thoitrangshop.DAOImp.MauImp;
import com.thoitrangshop.entity.MauSanPham;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class MauSanPhamService implements MauImp {
    @Autowired
    MauSanPhamDAO mauSanPhamDAO;


    @Override
    public List<MauSanPham> LayMauSanPham() {
        return mauSanPhamDAO.LayMauSanPham();
    }
}
