package com.thoitrangshop.entity;

import javax.persistence.*;
import java.util.Set;

@Entity(name = "sanpham")
public class SanPham {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int masanpham;

    @OneToOne
    @JoinColumn(name="madanhmuc")
    DanhMucSanPham danhmucsanpham;

    public String getTensanpham() {
        return tensanpham;
    }

    public void setTensanpham(String tensanpham) {
        this.tensanpham = tensanpham;
    }

    private String tensanpham;

    private int giatien;

    private  String mota;

    private  String hinhsanpham;

    private  String gianhcho;

    @OneToMany(fetch = FetchType.EAGER,cascade = CascadeType.ALL)
    @JoinColumn(name="masanpham")
    Set<ChiTietSanPham> chitietsanphams;

    @ManyToMany(cascade = CascadeType.ALL)
    @JoinTable(
            name = "chitietkhuyenmai",
            joinColumns = {
                    @JoinColumn(name = "masanpham", referencedColumnName ="masanpham" )
            },
            inverseJoinColumns = {
                    @JoinColumn(name = "makhuyenmai",referencedColumnName = "makhuyenmai")
            }

    )
    Set<KhuyenMai> danhsachkhuyenmai;

    public int getMasanpham() {
        return masanpham;
    }

    public void setMasanpham(int masanpham) {
        this.masanpham = masanpham;
    }



    public int getGiatien() {
        return giatien;
    }

    public void setGiatien(int giatien) {
        this.giatien = giatien;
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

    public DanhMucSanPham getDanhmucsanpham() {
        return danhmucsanpham;
    }

    public void setDanhmucsanpham(DanhMucSanPham danhmucsanpham) {
        this.danhmucsanpham = danhmucsanpham;
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

    public String getGianhcho() {
        return gianhcho;
    }

    public void setGianhcho(String gianhcho) {
        this.gianhcho = gianhcho;
    }
}
