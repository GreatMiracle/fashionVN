package com.thoitrangshop.DAO;

import com.thoitrangshop.DAOImp.ChiTietHoaDonImp;
import com.thoitrangshop.entity.ChiTietHoaDon;
import com.thoitrangshop.entity.ChiTietHoaDonID;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.context.annotation.ScopedProxyMode;
import org.springframework.stereotype.Repository;

import javax.transaction.Transactional;

@Repository
@Scope(proxyMode = ScopedProxyMode.TARGET_CLASS)
public class ChiTietHoaDonDAO implements ChiTietHoaDonImp {

    @Autowired
    SessionFactory sessionFactory;

    @Override
    @Transactional
    public boolean ThemChiTietHoaDon(ChiTietHoaDon chiTietHoaDon) {
        Session session = sessionFactory.getCurrentSession();

        ChiTietHoaDonID id = (ChiTietHoaDonID) session.save(chiTietHoaDon);

        if (id != null){
            return true;
        }else {
            return false;
        }
    }
}
