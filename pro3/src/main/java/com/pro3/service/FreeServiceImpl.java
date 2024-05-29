package com.pro3.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pro3.dao.FreeDAO;
import com.pro3.dto.Free;

@Service
public class FreeServiceImpl implements FreeService {
	
	@Autowired
	private FreeDAO freeDAO;
	
	@Override
	public List<Free> getFreeList() {
		return freeDAO.getFreeList();
	}

	@Override
	public Free getFree(String title) {
		return freeDAO.getFree(title);
	}

	@Override
	public Free getFree2(String name) {
		return freeDAO.getFree2(name);
	}

	@Override
	public Free getFree3(String id) {
		return freeDAO.getFree3(id);
	}

	@Override
	public int totalFreeCount() {
		return freeDAO.totalFreeCount();
	}

	@Override
	public void insFree(Free free) {
		freeDAO.insFree(free);
	}

	@Override
	public void upvisit(int no) {
		freeDAO.upvisit(no);
	}

	@Override
	public void upFree(Free free) {
		freeDAO.upFree(free);
	}

	@Override
	public void delFree(int no) {
		freeDAO.delFree(no);
	}

}
