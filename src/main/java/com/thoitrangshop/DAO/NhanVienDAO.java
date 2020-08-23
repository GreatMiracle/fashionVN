package com.thoitrangshop.DAO;

import com.thoitrangshop.DAOImp.NhanVienImp;
import com.thoitrangshop.entity.NhanVien;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.context.annotation.ScopedProxyMode;
import org.springframework.stereotype.Repository;

import javax.transaction.Transactional;
import java.util.ArrayList;
import java.util.List;

@Repository
@Scope(proxyMode = ScopedProxyMode.TARGET_CLASS)
public class NhanVienDAO implements NhanVienImp {
//có implement + transaction thì thường sẽ phát sinh proxy bao bọc class hiện tại.
//nên ko thể gọi trực tiếp đến class hiện tại mà phải chỉ định class hiện tại là proxy

    @Autowired
    SessionFactory sessionFactory;

    @Override
    @Transactional
//    public boolean KiemTraDangNhap(String email, String password) {
    public String KiemTraDangNhap(String email, String password) {
        Session session = sessionFactory.getCurrentSession();
        try{
            NhanVien nhanVienlogin = (NhanVien) session.createQuery("from nhanvien where email ='"+email+"' and password='"+password+"'").getSingleResult();

            if (nhanVienlogin != null){
                String name = nhanVienlogin.getLastname();
                return name;
            }else {
                return "";
            }

        }catch (Exception e){
            return "";
        }
    }

    @Override
    @Transactional
    public boolean DangKy(String firstname, String lastname, String email, String password) {
        Session session = sessionFactory.getCurrentSession();

        NhanVien nhanVienRegister = new NhanVien();
        nhanVienRegister.setFirstname(firstname);
        nhanVienRegister.setLastname(lastname);
        nhanVienRegister.setEmail(email);
        nhanVienRegister.setPassword(password);

        try {
            NhanVien nhanVienReg = (NhanVien) session.createQuery("from nhanvien where email ='"+email+"'").getSingleResult();
            if (nhanVienReg != null){
                return false;
            }else {
                session.save(nhanVienRegister);
                return true;
            }
        }catch (Exception e){
            session.save(nhanVienRegister);
            return true;
        }


//        List<NhanVien> lsNhanVien = new ArrayList<>();
//        for (NhanVien lsEmail:lsNhanVien) {
//
//            if (lsEmail.getEmail().equals(email)){
//                return false;
//            }
//            else {
//                session.save(nhanVienRegister);
//                return true;
//            }
//        }
//
//        return true;
    }

}
