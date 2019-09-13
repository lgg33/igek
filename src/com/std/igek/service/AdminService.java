package com.std.igek.service;

import java.util.List;

import com.std.igek.entity.Admin;
import com.std.igek.entity.BaoBiao;
import com.std.igek.entity.EasyUIDatagrid;
import com.std.igek.entity.Table2;

public interface AdminService {
	public Admin select(Admin user);

	public int updatePw(Admin admin);

	public EasyUIDatagrid show(int rows, int page);

	public EasyUIDatagrid showOrder(int rows, int page);

	public List<BaoBiao> selGoodsCateNum();

	public List<Table2> selGoodsCateNum2();

	public List<Table2> selGoodsCateNum3();
}
