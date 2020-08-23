package com.thoitrangshop.DAO;

import com.thoitrangshop.DAOImp.ProductImp;
import com.thoitrangshop.entity.ChiTietHoaDon;
import com.thoitrangshop.entity.ChiTietHoaDonID;
import com.thoitrangshop.entity.ChiTietSanPham;
import com.thoitrangshop.entity.SanPham;
import com.thoitrangshop.service.ChiTietSanPhamService;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.context.annotation.ScopedProxyMode;
import org.springframework.stereotype.Repository;

import javax.transaction.Transactional;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;


@Repository
@Scope(proxyMode = ScopedProxyMode.TARGET_CLASS)
public class ProductDAO implements ProductImp {

    @Autowired
    SessionFactory sessionFactory;

    @Override
    @Transactional
    public List<SanPham> lsSanPham(int spbatdau, int spketthuc) {

        Session session = sessionFactory.getCurrentSession();

        List<SanPham> lsSp = (List<SanPham>) session.createQuery("from sanpham").setFirstResult(spbatdau).setMaxResults(spketthuc).getResultList();
//        List<SanPham> lsSp = (List<SanPham>) session.createQuery("from sanpham sp left join chitietsanpham ct where sp.masanpham = ct.sanpham order by ct.ngaynhap desc  ").setFirstResult(spbatdau).setMaxResults(4).getResultList();
//        List<SanPham> lsSp = (List<SanPham>) session.createQuery("from sanpham").getResultList();

        return lsSp;
    }

    @Override
    @Transactional
    public List<SanPham> lsSanPhamforDanhMuc(int madanhmuc) {
        Session session = sessionFactory.getCurrentSession();

        List<SanPham> lsSpforDanhMuc = (List<SanPham>) session.createQuery("from sanpham sp where danhmucsanpham.madanhmuc="+madanhmuc).getResultList();

        return lsSpforDanhMuc;
    }

    @Override
    @Transactional
    public List<SanPham> lsAdminProduct() {
        Session session = sessionFactory.getCurrentSession();

        List<SanPham> lsAdminSp = (List<SanPham>) session.createQuery("from sanpham sp ").getResultList();
        return lsAdminSp;
    }

    @Override
    @Transactional
    public void DelProduct(int masanpham) {
        Session session = sessionFactory.getCurrentSession();
        SanPham sp = session.get(SanPham.class, masanpham);

        Set<ChiTietSanPham> chiTietSanPhams = sp.getChitietsanphams();
        for (ChiTietSanPham ctsp:chiTietSanPhams) {

            session.createQuery("delete chitiethoadon where machitietsanpham=" +ctsp.getMachitietsanpham()).executeUpdate();
        }

        session.createQuery("delete chitietkhuyenmai where masanpham=" +masanpham).executeUpdate();
        session.createQuery("delete chitietsanpham where masanpham=" +masanpham).executeUpdate();
        session.createQuery("delete sanpham where masanpham=" +masanpham).executeUpdate();

    }

    @Override
    @Transactional
    public void AddDetailProduct(SanPham sanPham) {
        Session session = sessionFactory.getCurrentSession();

        session.save(sanPham);

//        return false;
    }

    @Override
    @Transactional
    public void UpdateProduct(int masanpham) {
        Session session = sessionFactory.getCurrentSession();
//        String query = "UPDATE ";

//        UPDATE table_name
//        SET column1 = value1, column2 = value2, ...
//        WHERE condition;
    }
}
