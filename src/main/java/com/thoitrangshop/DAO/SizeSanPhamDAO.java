package com.thoitrangshop.DAO;

import com.thoitrangshop.DAOImp.SizeImp;
import com.thoitrangshop.entity.DanhMucSanPham;
import com.thoitrangshop.entity.SizeSanPham;
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
public class SizeSanPhamDAO implements SizeImp {

    @Autowired
    SessionFactory sessionFactory;

    @Override
    @Transactional
    public List<SizeSanPham> LaySizeSanPham() {

        Session session = sessionFactory.getCurrentSession();

        List<SizeSanPham> allSize = session.createQuery("from sizesanpham ").getResultList();
        return allSize;
    }
}
