package com.thoitrangshop.entity;

import javax.persistence.*;
import java.util.Set;

@Entity(name = "danhmucsanpham")
public class DanhMucSanPham {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int madanhmuc;

    private String tendanhmuc;

    private String hinhdanhmuc;

    @OneToMany
    @JoinColumn(name = "madanhmuc")
    Set<SanPham> danhsachsanpham;


    public int getMadanhmuc() {
        return madanhmuc;
    }

    public void setMadanhmuc(int madanhmuc) {
        this.madanhmuc = madanhmuc;
    }

    public String getTendanhmuc() {
        return tendanhmuc;
    }

    public void setTendanhmuc(String tendanhmuc) {
        this.tendanhmuc = tendanhmuc;
    }

    public String getHinhdanhmuc() {
        return hinhdanhmuc;
    }

    public void setHinhdanhmuc(String hinhdanhmuc) {
        this.hinhdanhmuc = hinhdanhmuc;
    }

    public Set<SanPham> getDanhsachsanpham() {
        return danhsachsanpham;
    }

    public void setDanhsachsanpham(Set<SanPham> danhsachsanpham) {
        this.danhsachsanpham = danhsachsanpham;
    }

}
