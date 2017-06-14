package com.dao;

import java.util.List;

import com.entity.Admin;

public interface AdminDao {
	public boolean update(Admin admin);
	public boolean delete(Admin admin);
	public boolean delete(String adminId);
	public boolean save(Admin admin);
	public Admin findByAdminId(String adminId);
	public int findCount();
	public List<Admin> findAll();
	public Admin findByAdminIdAndPassword(Admin admin);
}
