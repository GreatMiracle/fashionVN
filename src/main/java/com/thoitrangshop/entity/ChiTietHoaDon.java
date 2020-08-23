package com.thoitrangshop.entity;

import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.IdClass;

//có thể sử dụng embeddedid hoặc idclass tùy, vì cơ bản nó tương tự nhau
// nhưng trong 1 số trường hợp ngta khuyên dùng embeddedid

@Entity(name = "chitiethoadon")
//@IdClass(ChiTietHoaDonID.class)
public class ChiTietHoaDon {
//    @Id
//    private int mahoadon;
//    @Id
//    private int machitietsanpham;
    @EmbeddedId
    ChiTietHoaDonID chiTietHoaDonID;

    private int soluong;
    private int giatien;


    public ChiTietHoaDonID getChiTietHoaDonID() {
        return chiTietHoaDonID;
    }

    public void setChiTietHoaDonID(ChiTietHoaDonID chiTietHoaDonID) {
        this.chiTietHoaDonID = chiTietHoaDonID;
    }

    public int getSoluong() {
        return soluong;
    }

    public void setSoluong(int soluong) {
        this.soluong = soluong;
    }

    public int getGiatien() {
        return giatien;
    }

    public void setGiatien(int giatien) {
        this.giatien = giatien;
    }
}
