package com.example.demo.repository;

import com.example.demo.dto.KhachHangCustom;
import com.example.demo.entities.KhachHang;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface KhachHangRepository extends JpaRepository<KhachHang, Long> {

    @Query(value = "SELECT kh.MaKhachHang, kh.TenKhachHang, kh.SDT, kh.GioiTinh, khh.TenHang, khh.MaHang " +
            "FROM KhachHang kh " +
            "JOIN HangkhachHang khh ON kh.HangKhachHang = khh.MaHang", nativeQuery = true)
    List<KhachHangCustom> getAllKhachHang();
}

