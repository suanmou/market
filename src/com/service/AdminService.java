package com.service;

import java.util.List;

import com.entity.Admin;

public interface AdminService {
	public boolean update(Admin admin);
	public boolean delete(Admin admin);
	public boolean delete(String adminId);
	public boolean save(Admin admin);
	public Admin findByAdminId(String adminId);
	public boolean findAll();
	public Admin findByAdminIdAndPassword(Admin admin);
}
