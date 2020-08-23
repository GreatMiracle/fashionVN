package com.thoitrangshop.DAO;

import com.thoitrangshop.DAOImp.ChiTietSanPhamImp;
import com.thoitrangshop.entity.ChiTietSanPham;
import com.thoitrangshop.entity.SanPham;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.context.annotation.ScopedProxyMode;
import org.springframework.stereotype.Repository;

import javax.transaction.Transactional;

@Repository
@Scope(proxyMode = ScopedProxyMode.TARGET_CLASS)
public class ChiTietSanPhamDAO implements ChiTietSanPhamImp {
//public class ChiTietDAO {
    @Autowired
    SessionFactory sessionFactory;

    @Override
    @Transactional
    public SanPham chiTietSanPham(int masanpham) {
        Session session = sessionFactory.getCurrentSession();

        try{
            SanPham sanPhams = (SanPham) session.createQuery("from sanpham where masanpham = " + masanpham).getSingleResult();

            return sanPhams;

        }catch(Exception e){
            return null;
        }


    }

    @Override
    @Transactional
    public ChiTietSanPham laysoluongSP(int masanpham, int masize, int mamau) {
        Session session = sessionFactory.getCurrentSession();

        ChiTietSanPham layrasoluong = (ChiTietSanPham) session.createQuery("from chitietsanpham where masanpham=" + masanpham +" and masize="+masize +" and mamau="+mamau).getSingleResult();

        return layrasoluong;
    }
}
