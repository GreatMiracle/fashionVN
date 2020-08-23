package com.thoitrangshop.DAOImp;

import com.thoitrangshop.entity.SanPham;

import java.util.List;

public interface ProductImp {
    //web
    List<SanPham> lsSanPham(int spbatdau, int spketthuc);
    List<SanPham> lsSanPhamforDanhMuc(int madanhmuc);

    //admin
    List<SanPham> lsAdminProduct();
    void DelProduct (int masanpham);
    void AddDetailProduct(SanPham sanPham);
    void UpdateProduct (int masanpham);
}
