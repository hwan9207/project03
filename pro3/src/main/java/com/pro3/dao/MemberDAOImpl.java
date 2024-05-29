package com.pro3.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.pro3.dto.Member;

@Repository
public class MemberDAOImpl implements MemberDAO {

	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public List<Member> getMemberList() {
		return sqlSession.selectList("member.getMemberList");
	}

	@Override
	public void insMember(Member member) {
		sqlSession.insert("member.insMember", member);
	}

	@Override
	public Member getMember(String id) {
		return sqlSession.selectOne(id);
	}

	@Override
	public int memberCount() {
		return sqlSession.selectOne("member.memberCount");
	}

	@Override
	public void upMember(Member member) {
		sqlSession.update("member.upMember");
	}

	@Override
	public void delMember(String id) {
		sqlSession.delete("member.delMember");
	}
}
