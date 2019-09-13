package com.std.igek.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.std.igek.dao.AdminMapper;
import com.std.igek.entity.Admin;
import com.std.igek.entity.BaoBiao;
import com.std.igek.entity.EasyUIDatagrid;
import com.std.igek.entity.Table2;
import com.std.igek.service.AdminService;



@Service
public class AdminServiceImpl implements AdminService{
	@Resource
	private AdminMapper userMapper;

	@Override
	public Admin select(Admin user) {
		
		return userMapper.select(user);
	}

	@Override
	public int updatePw(Admin admin) {
		// TODO Auto-generated method stub
		return userMapper.updatePw(admin);
	}

	@Override
	public EasyUIDatagrid show(int pageSize, int pageNumber) {
		EasyUIDatagrid ea=new EasyUIDatagrid();
		ea.setRows(userMapper.selByPage(pageSize*(pageNumber-1), pageSize));
		ea.setTotal(userMapper.selCount());
		return ea;
	}

	@Override
	public EasyUIDatagrid showOrder(int pageSize, int pageNumber) {
		EasyUIDatagrid ea=new EasyUIDatagrid();
		ea.setRows(userMapper.selByPageOrder(pageSize*(pageNumber-1), pageSize));
		ea.setTotal(userMapper.selCountOrder());
		return ea;
	}

	@Override
	public List<BaoBiao> selGoodsCateNum() {
		// TODO Auto-generated method stub
		return userMapper.selGoodCateNum();
	}

	@Override
	public List<Table2> selGoodsCateNum2() {
		// TODO Auto-generated method stub
		return userMapper.selGoodCateNum2();
	}

	@Override
	public List<Table2> selGoodsCateNum3() {
		// TODO Auto-generated method stub
		return userMapper.selGoodCateNum3();
	}
	
}
