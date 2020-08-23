package com.thoitrangshop.DAO;

import com.thoitrangshop.DAOImp.DanhMucSanPhamImp;
import com.thoitrangshop.entity.DanhMucSanPham;
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
public class DanhMucSanPhamDAO implements DanhMucSanPhamImp {

    @Autowired
    SessionFactory sessionFactory;

    @Override
    @Transactional
    public List<DanhMucSanPham> LayDanhMucSanPham() {

        Session session = sessionFactory.getCurrentSession();

        List<DanhMucSanPham> allDanhMuc = session.createQuery("from danhmucsanpham ").getResultList();
        
        return allDanhMuc;
    }
}
