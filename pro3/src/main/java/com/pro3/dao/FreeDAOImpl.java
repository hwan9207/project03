package com.pro3.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.pro3.dto.Free;

@Repository
public class FreeDAOImpl implements FreeDAO {
	
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public List<Free> getFreeList() {
		return sqlSession.selectList("free.getFreeList");
	}

	@Override
	public Free getFree(String title) {
		return sqlSession.selectOne(title);
	}

	@Override
	public Free getFree2(String name) {
		return sqlSession.selectOne(name);
	}

	@Override
	public Free getFree3(String id) {
		return sqlSession.selectOne(id);
	}

	@Override
	public int totalFreeCount() {
		return sqlSession.selectOne("free.totalFreeCount");
	}

	@Override
	public void insFree(Free free) {
		sqlSession.insert("free.insFree");
	}

	@Override
	public void upvisit(int no) {
		sqlSession.update("free.upvisit");
	}

	@Override
	public void upFree(Free free) {
		sqlSession.update("free.upFree");
	}

	@Override
	public void delFree(int no) {
		sqlSession.delete("free.delFree");
	}

}
