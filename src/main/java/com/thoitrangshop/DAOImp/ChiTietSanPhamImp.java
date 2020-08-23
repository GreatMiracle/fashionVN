package com.thoitrangshop.DAOImp;

import com.thoitrangshop.entity.ChiTietSanPham;
import com.thoitrangshop.entity.SanPham;

public interface ChiTietSanPhamImp {
    SanPham chiTietSanPham(int masanpham);

    ChiTietSanPham laysoluongSP(int masanpham, int masize, int mamau );
}
