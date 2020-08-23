package com.thoitrangshop.service;

import com.thoitrangshop.DAO.NhanVienDAO;
import com.thoitrangshop.DAO.ProductDAO;
import com.thoitrangshop.DAOImp.ProductImp;
import com.thoitrangshop.entity.SanPham;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ProductService implements ProductImp {

    @Autowired
    ProductDAO productDAO;

    @Override
    public List<SanPham> lsSanPham(int spbatdau, int spketthuc) {
        List<SanPham> lsProduct = productDAO.lsSanPham(spbatdau, spketthuc);
        return lsProduct;
    }

    @Override
    public List<SanPham> lsSanPhamforDanhMuc(int madanhmuc) {
        List<SanPham> lsProductforDanhMuc = productDAO.lsSanPhamforDanhMuc(madanhmuc);
        return lsProductforDanhMuc;
    }

    @Override
    public List<SanPham> lsAdminProduct() {
        List<SanPham> lsAdminProduct = productDAO.lsAdminProduct();
        return lsAdminProduct;
    }

    @Override
    public void DelProduct(int masanpham) {
        productDAO.DelProduct(masanpham);
    }

    @Override
    public void AddDetailProduct(SanPham sanPham) {
        productDAO.AddDetailProduct(sanPham);
    }

    @Override
    public void UpdateProduct(int masanpham) {
        productDAO.UpdateProduct(masanpham);
    }
}
