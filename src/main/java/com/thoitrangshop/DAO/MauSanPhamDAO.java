package com.thoitrangshop.DAO;

import com.thoitrangshop.DAOImp.MauImp;
import com.thoitrangshop.entity.DanhMucSanPham;
import com.thoitrangshop.entity.MauSanPham;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.context.annotation.ScopedProxyMode;
import org.springframework.stereotype.Repository;

import javax.transaction.Transactional;
import java.util.List;

@Repository
@Scope(proxyMode = ScopedProxyMode.TARGET_CLASS)
public class MauSanPhamDAO implements MauImp {

    @Autowired
    SessionFactory sessionFactory;

    @Override
    @Transactional
    public List<MauSanPham> LayMauSanPham() {

        Session session = sessionFactory.getCurrentSession();

        List<MauSanPham> allMau = session.createQuery("from mausanpham ").getResultList();

        return allMau;
    }
}
