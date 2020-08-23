package com.thoitrangshop.entity;

import java.util.Set;

public class JSON_SanPham {

    private int masanpham;
    private String tensanpham;
    private int giatien;
    DanhMucSanPham danhmucsanpham;
    private  String mota;
    private  String hinhsanpham;
    private  String gianhcho;
    Set<ChiTietSanPham> chitietsanphams;
    Set<KhuyenMai> danhsachkhuyenmai;

    public int getMasanpham() {
        return masanpham;
    }

    public void setMasanpham(int masanpham) {
        this.masanpham = masanpham;
    }

    public String getTensanpham() {
        return tensanpham;
    }

    public void setTensanpham(String tensanpham) {
        this.tensanpham = tensanpham;
    }

    public int getGiatien() {
        return giatien;
    }

    public void setGiatien(int giatien) {
        this.giatien = giatien;
    }

    public DanhMucSanPham getDanhmucsanpham() {
        return danhmucsanpham;
    }

    public void setDanhmucsanpham(DanhMucSanPham danhmucsanpham) {
        this.danhmucsanpham = danhmucsanpham;
    }

    public String getMota() {
        return mota;
    }

    public void setMota(String mota) {
        this.mota = mota;
    }

    public String getHinhsanpham() {
        return hinhsanpham;
    }

    public void setHinhsanpham(String hinhsanpham) {
        this.hinhsanpham = hinhsanpham;
    }

    public String getGianhcho() {
        return gianhcho;
    }

    public void setGianhcho(String gianhcho) {
        this.gianhcho = gianhcho;
    }

    public Set<ChiTietSanPham> getChitietsanphams() {
        return chitietsanphams;
    }

    public void setChitietsanphams(Set<ChiTietSanPham> chitietsanphams) {
        this.chitietsanphams = chitietsanphams;
    }

    public Set<KhuyenMai> getDanhsachkhuyenmai() {
        return danhsachkhuyenmai;
    }

    public void setDanhsachkhuyenmai(Set<KhuyenMai> danhsachkhuyenmai) {
        this.danhsachkhuyenmai = danhsachkhuyenmai;
    }


}

