package com.thoitrangshop.entity;

import javax.persistence.*;
import java.util.Date;

@Entity(name = "chitietsanpham")
public class ChiTietSanPham {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int machitietsanpham;

    @OneToOne()
    @JoinColumn(name = "masanpham")
    SanPham sanpham;

    @OneToOne()
    @JoinColumn(name = "masize")
    SizeSanPham sizesanpham;

    @OneToOne()
    @JoinColumn(name = "mamau")
    MauSanPham mausanpham;

    private int soluong;

//    public Date getNgaynhap() {
//        return ngaynhap;
//    }
//
//    public void setNgaynhap(Date ngaynhap) {
//        this.ngaynhap = ngaynhap;
//    }

//    private Date ngaynhap;
    private String ngaynhap;

    public int getSoluong() {
        return soluong;
    }

    public void setSoluong(int soluong) {
        this.soluong = soluong;
    }

    public int getMachitietsanpham() {
        return machitietsanpham;
    }

    public void setMachitietsanpham(int machitietsanpham) {
        this.machitietsanpham = machitietsanpham;
    }

    public SanPham getSanpham() {
        return sanpham;
    }

    public void setSanpham(SanPham sanpham) {
        this.sanpham = sanpham;
    }

    public SizeSanPham getSizesanpham() {
        return sizesanpham;
    }

    public void setSizesanpham(SizeSanPham sizesanpham) {
        this.sizesanpham = sizesanpham;
    }

    public MauSanPham getMausanpham() {
        return mausanpham;
    }

    public void setMausanpham(MauSanPham mausanpham) {
        this.mausanpham = mausanpham;
    }

    public String getNgaynhap() {
        return ngaynhap;
    }

    public void setNgaynhap(String ngaynhap) {
        this.ngaynhap = ngaynhap;
    }


}
