package com.thoitrangshop.service;

import com.thoitrangshop.DAO.DanhMucSanPhamDAO;
import com.thoitrangshop.DAOImp.DanhMucSanPhamImp;
import com.thoitrangshop.entity.DanhMucSanPham;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class DanhMucSanPhamService implements DanhMucSanPhamImp {

    @Autowired
    DanhMucSanPhamDAO danhMucSanPhamDAO;

    @Override
    public List<DanhMucSanPham> LayDanhMucSanPham() {
        return danhMucSanPhamDAO.LayDanhMucSanPham();
    }
}
