package com.thoitrangshop.service;

import com.thoitrangshop.DAO.SizeSanPhamDAO;
import com.thoitrangshop.DAOImp.SizeImp;
import com.thoitrangshop.entity.SizeSanPham;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class SizeSanPhamService implements SizeImp {
    @Autowired
    SizeSanPhamDAO sizeSanPhamDAO;

    @Override
    public List<SizeSanPham> LaySizeSanPham() {
        return sizeSanPhamDAO.LaySizeSanPham();
    }
}
