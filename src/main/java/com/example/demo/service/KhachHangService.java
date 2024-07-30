package com.example.demo.service;

import com.example.demo.dto.KhachHangCustom;
import com.example.demo.entities.KhachHang;
import com.example.demo.repository.KhachHangRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class KhachHangService {

    @Autowired
    private KhachHangRepository khachHangRepository;

    public List<KhachHangCustom> getAll(){
        return khachHangRepository.getAllKhachHang();
    }

    public Page<KhachHang> getAll(Integer page){
        Pageable pegeable = PageRequest.of(page, 1);
        return khachHangRepository.findAll(pegeable);
    }
}
