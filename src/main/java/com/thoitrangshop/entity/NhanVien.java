package com.thoitrangshop.entity;

import javax.persistence.*;
import java.util.List;
import java.util.Set;

@Entity(name = "nhanvien")
public class NhanVien {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int manhanvien;

    private String hoten;

    private String diachi;

    private String cmnd;

    private String email;

    private String tendangnhap;

    public String getFirstname() {
        return firstname;
    }

    public void setFirstname(String firstname) {
        this.firstname = firstname;
    }

    public String getLastname() {
        return lastname;
    }

    public void setLastname(String lastname) {
        this.lastname = lastname;
    }

    private String firstname;

    private String lastname;

    private String password;

    @OneToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "machucvu")
    ChucVu chucVu;


    public int getManhanvien() {
        return manhanvien;
    }

    public void setManhanvien(int manhanvien) {
        this.manhanvien = manhanvien;
    }

    public String getHoten() {
        return hoten;
    }

    public void setHoten(String hoten) {
        this.hoten = hoten;
    }

    public String getDiachi() {
        return diachi;
    }

    public void setDiachi(String diachi) {
        this.diachi = diachi;
    }

    public String getCmnd() {
        return cmnd;
    }

    public void setCmnd(String cmnd) {
        this.cmnd = cmnd;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getTendangnhap() {
        return tendangnhap;
    }

    public void setTendangnhap(String tendangnhap) {
        this.tendangnhap = tendangnhap;
    }

//    public String getMatkhau() {
//        return matkhau;
//    }
//
//    public void setMatkhau(String matkhau) {
//        this.matkhau = matkhau;
//    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public ChucVu getChucVu() {
        return chucVu;
    }

    public void setChucVu(ChucVu chucVu) {
        this.chucVu = chucVu;
    }


//    @OneToMany(cascade = CascadeType.ALL)
//    @JoinColumn(name = "idNhanVien")
//    Set<SanPham> sanPhams;
//    List<SanPham> sanPhams;

//    @ManyToMany(cascade = CascadeType.ALL)
//    @JoinTable(
//           name = "chitietsanpham",
//            joinColumns=//đại diện cho những key đang à khóa ngoại của entity hiện tại VD:
//                    //đây là idNV là khóa ngoại của idNhanVien -> joincolum là idNV
//                    {
//                        @JoinColumn(name = "idNV", referencedColumnName = "idNhanVien")
//                    },
//            inverseJoinColumns = {
//                   @JoinColumn(name = "idSP", referencedColumnName = "idsanpham")
//            }
//    )

}
